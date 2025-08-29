import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:spinners_driver/app/constants/status/status.dart';
import 'package:spinners_driver/app/services/api_services/environment/env_config.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/application/auth_bloc/auth_bloc.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/profile/widgets/image_picker.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class UpdateDetailsBottomSheet extends StatefulWidget {
  final String firstName;
  final String lastName;
  const UpdateDetailsBottomSheet(
      {super.key, required this.firstName, required this.lastName});

  @override
  State<UpdateDetailsBottomSheet> createState() =>
      _UpdateDetailsBottomSheetState();
}

class _UpdateDetailsBottomSheetState extends State<UpdateDetailsBottomSheet> {
  late final TextEditingController firstNameController;
  late final TextEditingController lastNameController;
  File? _selectedImage;
  String? _imageNameToUpload;
  String? _imagePath;
  final ImagePicker imgPicker = ImagePicker();

  _UpdateDetailsBottomSheetState();
  @override
  void initState() {
    super.initState();
    firstNameController = TextEditingController(
        text: widget.firstName.isNotEmpty ? widget.firstName : "");

    lastNameController = TextEditingController(
        text: widget.lastName.isNotEmpty ? widget.lastName : "");
  }

  Future<void> getPhoto(ImageSource source) async {
    Navigator.pop(context);
    try {
      XFile? image = await imgPicker.pickImage(source: source);
      if (image != null) {
        log('Image Picked Successfully');
        _imageNameToUpload = image.name;
        _imagePath = image.path;
        // context.read<AuthBloc>().add(AuthEvent.updateProfileEvent(UpdateProfileParams(removeImage: false, photoName: _imageNameToUpload ?? '', photoPath: _imagePath ?? '')));
        final String imagePath = image.path;
        if (imagePath.isNotEmpty) {
          setState(() {
            _selectedImage = File(imagePath);
          });
          log('Image Selected Successfully');
        }
      }
    } catch (e) {
      log('Error picking images: $e');
    }
  }

  Widget _getBackgroundImageWidget(BuildContext context) {
    if (_selectedImage != null) {
      // If there's a selected image from the file picker
      return CircleAvatar(
        backgroundImage: const AssetImage(AppImages.personIcon),
        backgroundColor: AppColors.grey13,
        foregroundImage: FileImage(_selectedImage!),
        radius: 47.dp,
      );
    } else {
      return Container(
        height: 94.dp,
        width: 94.dp,
        decoration: BoxDecoration(
          color: AppColors.grey13,
          borderRadius: BorderRadius.circular(47.dp),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(47.dp),
          child: CachedNetworkImage(
            imageUrl: context.read<AuthBloc>().state.appUser?.photo != null
                ? "${EnvConfiguration.current.baseUrl.substring(0, EnvConfiguration.current.baseUrl.lastIndexOf('/') + 1)}${context.read<AuthBloc>().state.appUser?.photo}"
                : '',
            fit: BoxFit.cover,
            placeholder: (context, url) => const Center(
              child: Padding(
                padding: EdgeInsets.all(3.0),
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            errorWidget: (context, url, error) => const Icon(
              Icons.person,
              color: AppColors.grey,
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.updateProfileStatus != current.updateProfileStatus,
      listener: (context, state) {
        if (state.updateProfileStatus is StatusSuccess) {
          context.router.pop();
          TheToast.show(
            isError: false,
            message: "Profile updated successfully",
            context: context,
          );
          context.read<AuthBloc>().add(AuthEvent.profileAuth());
        } else if (state.updateProfileStatus is StatusFailure) {
          TheToast.show(
            message: state.updateProfileStatus.errorMessage,
            context: context,
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.dp),
            topRight: Radius.circular(24.dp),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Gap(12.dp),
            Text(
              "Personal Details",
              style: AppTypography.sfProRoundedSemiBold
                  .copyWith(fontSize: 16.dp, color: AppColors.textGrey),
            ),
            Gap(12.dp),
            Container(
              width: 100.w,
              color: AppColors.lightGrey,
              height: 1.dp,
            ),
            Padding(
              padding: EdgeInsets.all(16.0.dp),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                ),
                              ),
                              builder: (context) => Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: ImagePickerSheet(
                                  getPhoto: (ImageSource source) =>
                                      getPhoto(source),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 94.dp,
                            width: 94.dp,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: AppColors.grey13, width: 4.dp),
                            ),
                            child: Stack(
                              children: [
                                _getBackgroundImageWidget(context),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    height: 26.dp,
                                    width: 26.dp,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColors.black
                                              .withValues(alpha: 0.1),
                                          offset: const Offset(0, 2),
                                          blurRadius: 4.dp,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(6.dp),
                                      child: Image.asset(
                                        AppImages.editIcon,
                                        height: 14.dp,
                                        width: 14.dp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(12.dp),
                    Text(
                      "First Name",
                      style: AppTypography.sfProRoundedMedium.copyWith(
                        fontSize: 14.dp,
                        color: AppColors.textGrey,
                      ),
                    ),
                    Gap(6.dp),
                    userDetailsField(firstNameController),
                    Text(
                      "Last Name",
                      style: AppTypography.sfProRoundedMedium.copyWith(
                        fontSize: 14.dp,
                        color: AppColors.textGrey,
                      ),
                    ),
                    Gap(6.dp),
                    userDetailsField(lastNameController),
                  ]),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 16.dp, right: 16.dp, bottom: 24.dp),
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return PrimaryButtonWidget(
                    isLoading: state.updateProfileStatus is StatusLoading,
                    onPressed: () {
                      context.read<AuthBloc>().add(
                            AuthEvent.updateProfileEvent(
                                firstName: firstNameController.text.trim(),
                                lastName: lastNameController.text.trim(),
                                photoName: _imageNameToUpload ?? '',
                                photoPath: _imagePath ?? ''),
                          );
                    },
                    text: 'Submit',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container userDetailsField(TextEditingController controller) {
    return Container(
        height: 51.dp,
        margin: EdgeInsets.only(bottom: 8.dp),
        padding: EdgeInsets.all(12.dp),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(1, 1),
                blurRadius: 0,
                spreadRadius: 0,
                color: AppColors.black.withValues(alpha: 0.08))
          ],
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.dp),
          border: Border.all(color: AppColors.lightGrey, width: 1.2),
        ),
        child: TextFormField(
          controller: controller,
          style: AppTypography.sfProRoundedMedium
              .copyWith(fontSize: 16.dp, color: AppColors.neutral950),
          decoration: InputDecoration(
            border: InputBorder.none,
            isDense: true,
          ),
          cursorColor: AppColors.textGrey,
        ));
  }
}
