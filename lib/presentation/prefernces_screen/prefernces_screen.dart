import 'package:app_2/widgets/app_bar/custom_app_bar.dart';
import 'package:app_2/widgets/app_bar/appbar_title_image.dart';
import 'package:app_2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:app_2/widgets/custom_text_form_field.dart';
import 'package:app_2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:app_2/core/app_export.dart';

class PreferncesScreen extends StatelessWidget {
  PreferncesScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  TextEditingController milesCounterController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 22.v),
              Text(
                "Preferences",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 37.v),
              Text(
                "Latest Properties",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 17.v),
              _buildTwelve(context),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClose,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFacebook,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgGroup10,
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPlus,
          margin: EdgeInsets.only(
            left: 26.h,
            top: 15.v,
            right: 15.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVectorGray900,
          margin: EdgeInsets.only(
            left: 17.h,
            top: 15.v,
            right: 15.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMegaphone,
          margin: EdgeInsets.fromLTRB(17.h, 18.v, 41.h, 2.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Property Type",
                style: theme.textTheme.titleMedium,
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(bottom: 4.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  bottom: 5.v,
                ),
                child: Text(
                  "Edit",
                  style: CustomTextStyles.labelLargeGray900_1,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          CustomTextFormField(
            controller: searchController,
            hintText: "House",
            hintStyle: CustomTextStyles.titleSmallGray900,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 17.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL25,
          ),
          SizedBox(height: 19.v),
          Text(
            "Location",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 14.v),
          CustomTextFormField(
            controller: locationController,
            hintText: "Country, City, State",
            hintStyle: CustomTextStyles.titleSmallGray900,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 17.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL25,
          ),
          SizedBox(height: 21.v),
          Text(
            "Miles Range",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 12.v),
          CustomTextFormField(
            controller: milesCounterController,
            hintText: "50 Miles",
            hintStyle: CustomTextStyles.titleSmallGray900,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 17.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL25,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
