import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../core/constants/app_colors.dart';
import '../../../features/ride/domain/entities/ride_entity.dart';

class DriverRideMap extends StatefulWidget {
  const DriverRideMap({
    super.key,
    required this.ride,
    this.height = double.infinity,
  });

  final RideEntity ride;
  final double height;

  @override
  State<DriverRideMap> createState() => _DriverRideMapState();
}

class _DriverRideMapState extends State<DriverRideMap> {
  GoogleMapController? _mapController;
  LatLng? _driverPosition;
  StreamSubscription<Position>? _positionSub;

  @override
  void initState() {
    super.initState();
    _initLocation();
  }

  Future<void> _initLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) return;

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) return;
      }
      if (permission == LocationPermission.deniedForever) return;

      final pos = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
      );
      if (!mounted) return;
      final latLng = LatLng(pos.latitude, pos.longitude);
      setState(() => _driverPosition = latLng);
      _mapController?.animateCamera(CameraUpdate.newLatLngZoom(latLng, 15));

      _positionSub = Geolocator.getPositionStream(
        locationSettings: const LocationSettings(accuracy: LocationAccuracy.high, distanceFilter: 10),
      ).listen((p) {
        if (!mounted) return;
        setState(() => _driverPosition = LatLng(p.latitude, p.longitude));
      });
    } catch (_) {
      // silently falls back to showing pickup/drop only, no driver dot
    }
  }

  @override
  void dispose() {
    _positionSub?.cancel();
    _mapController?.dispose();
    super.dispose();
  }

  // Before pickup: show driver → pickup. After pickup: show driver → drop.
  bool get _headingToDrop =>
      widget.ride.status == RideStatus.driverArrived || widget.ride.status == RideStatus.inProgress;

  LatLng get _destination {
    final loc = _headingToDrop ? widget.ride.dropLocation : widget.ride.pickupLocation;
    return LatLng(loc.latitude, loc.longitude);
  }

  @override
  Widget build(BuildContext context) {
    final pickup = LatLng(widget.ride.pickupLocation.latitude, widget.ride.pickupLocation.longitude);
    final drop = LatLng(widget.ride.dropLocation.latitude, widget.ride.dropLocation.longitude);
    final center = _driverPosition ?? pickup;

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: widget.height,
        width: double.infinity,
        child: GoogleMap(
          initialCameraPosition: CameraPosition(target: center, zoom: 14.5),
          onMapCreated: (c) => _mapController = c,
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          mapToolbarEnabled: false,
          compassEnabled: false,
          markers: {
            Marker(
              markerId: const MarkerId('pickup'),
              position: pickup,
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
              infoWindow: const InfoWindow(title: 'Pickup'),
            ),
            Marker(
              markerId: const MarkerId('drop'),
              position: drop,
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
              infoWindow: const InfoWindow(title: 'Drop'),
            ),
            if (_driverPosition != null)
              Marker(
                markerId: const MarkerId('driver'),
                position: _driverPosition!,
                icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
                infoWindow: const InfoWindow(title: 'You'),
                rotation: 45,
              ),
          },
          polylines: {
            Polyline(
              polylineId: const PolylineId('route'),
              points: [center, _destination],
              color: AppColors.primaryYellowDark,
              width: 5,
            ),
          },
        ),
      ),
    );
  }
}