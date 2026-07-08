import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/routing/route_paths.dart';
import '../../../../shared/widgets/buttons/primary_button.dart';
import '../../../../shared/widgets/cards/document_upload_card.dart';
import '../../domain/entities/document_entity.dart';
import '../providers/auth_controller.dart';

class DocumentVerificationScreen extends ConsumerStatefulWidget {
  const DocumentVerificationScreen({super.key});

  @override
  ConsumerState<DocumentVerificationScreen> createState() =>
      _DocumentVerificationScreenState();
}

class _DocumentVerificationScreenState
    extends ConsumerState<DocumentVerificationScreen> {

  // Documents start as not uploaded — driver taps each to "upload"
  // Real file picking + upload comes in a future phase
  final List<DocumentEntity> _documents = const [
    DocumentEntity(
      type: DocumentType.drivingLicense,
      title: 'Driving License',
      subtitle: 'Upload Front Side',
      isUploaded: false,
      isVerified: false,
    ),
    DocumentEntity(
      type: DocumentType.rcBook,
      title: 'RC Book',
      subtitle: 'Upload RC Book',
      isUploaded: false,
      isVerified: false,
    ),
    DocumentEntity(
      type: DocumentType.insurance,
      title: 'Insurance',
      subtitle: 'Upload Insurance',
      isUploaded: false,
      isVerified: false,
    ),
    DocumentEntity(
      type: DocumentType.vehiclePhoto,
      title: 'Vehicle Photo',
      subtitle: 'Upload Vehicle Photo',
      isUploaded: false,
      isVerified: false,
    ),
  ];

  bool _submitted = false;

  IconData _iconFor(DocumentType type) {
    switch (type) {
      case DocumentType.drivingLicense:
        return Icons.badge_outlined;
      case DocumentType.rcBook:
        return Icons.menu_book_outlined;
      case DocumentType.insurance:
        return Icons.shield_outlined;
      case DocumentType.vehiclePhoto:
        return Icons.directions_car_outlined;
    }
  }

  Future<void> _onSubmit() async {
    final success = await ref
        .read(authControllerProvider.notifier)
        .submitDocuments(_documents.map((d) => d.type.name).toList());
    if (success && mounted) {
      setState(() => _submitted = true);
      await Future.delayed(const Duration(milliseconds: 800));
      if (mounted) context.go(RoutePaths.dashboard);
    }
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);

    return Scaffold(
      backgroundColor: AppColors.surfaceWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.screenHorizontal,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSpacing.lg),
              InkWell(
                onTap: () => context.pop(),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.background,
                  ),
                  child: const Icon(
                      Icons.arrow_back_ios_new_rounded, size: 18),
                ),
              ),
              const SizedBox(height: AppSpacing.xxl),
              Text('Verify Your Documents', style: AppTypography.h1),
              const SizedBox(height: AppSpacing.xs),
              Text(
                'Please upload clear photos',
                style: AppTypography.bodyMedium
                    .copyWith(color: AppColors.textSecondary),
              ),
              const SizedBox(height: AppSpacing.xxl),
              if (_submitted)
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.successBg,
                          ),
                          child: const Icon(Icons.check_rounded,
                              size: 36, color: AppColors.success),
                        ),
                        const SizedBox(height: AppSpacing.lg),
                        Text('Submitted!', style: AppTypography.h3),
                        const SizedBox(height: AppSpacing.sm),
                        Text(
                          'We will verify and notify you soon',
                          style: AppTypography.bodySmall,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              else
                Expanded(
                  child: ListView.separated(
                    itemCount: _documents.length,
                    separatorBuilder: (_, __) =>
                        const SizedBox(height: AppSpacing.md),
                    itemBuilder: (context, index) {
                      final doc = _documents[index];
                      return DocumentUploadCard(
                        icon: _iconFor(doc.type),
                        title: doc.title,
                        subtitle: doc.subtitle,
                        isVerified: doc.isVerified,
                        onTap: () {
                          // File picking comes in a future phase
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'File upload coming soon for ${doc.title}'),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              if (!_submitted) ...[
                PrimaryButton(
                  label: 'Submit for Verification',
                  isLoading: authState.isLoading,
                  onPressed: _onSubmit,
                ),
                const SizedBox(height: AppSpacing.sm),
                Center(
                  child: Text(
                    'We will verify and notify you soon',
                    style: AppTypography.caption,
                  ),
                ),
              ],
              const SizedBox(height: AppSpacing.lg),
            ],
          ),
        ),
      ),
    );
  }
}