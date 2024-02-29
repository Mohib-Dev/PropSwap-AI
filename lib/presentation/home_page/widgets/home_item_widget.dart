import 'package:app_2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:app_2/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  const HomeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 306.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          SizedBox(
            height: 91.v,
            width: 283.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMask,
                  height: 91.v,
                  width: 283.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(10.h),
                  ),
                  alignment: Alignment.center,
                ),
                _buildForSale(context),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMask91x136,
                height: 91.v,
                width: 136.h,
                radius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.h),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMask1,
                height: 91.v,
                width: 136.h,
                radius: BorderRadius.only(
                  bottomRight: Radius.circular(10.h),
                ),
                margin: EdgeInsets.only(left: 10.h),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howard Mesa Materials",
                    style: CustomTextStyles
                        .titleSmallJosefinSansOnPrimaryContainer,
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "Sunnyvale, CA",
                    style: CustomTextStyles.labelLargeOnSecondaryContainer,
                  ),
                ],
              ),
              _buildFiveHundredThousand(context),
            ],
          ),
          SizedBox(height: 31.v),
          _buildFeatured(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildForSale(BuildContext context) {
    return CustomElevatedButton(
      height: 26.v,
      width: 64.h,
      text: "For Sale",
      buttonStyle: CustomButtonStyles.fillPrimaryTL4,
      buttonTextStyle: theme.textTheme.labelLarge!,
      alignment: Alignment.topLeft,
    );
  }

  /// Section Widget
  Widget _buildFiveHundredThousand(BuildContext context) {
    return CustomElevatedButton(
      height: 26.v,
      width: 85.h,
      text: "500,000",
      margin: EdgeInsets.only(
        left: 38.h,
        top: 7.v,
        bottom: 6.v,
      ),
      buttonStyle: CustomButtonStyles.fillGrayTL4,
      buttonTextStyle: CustomTextStyles.labelLargeGray900,
    );
  }

  /// Section Widget
  Widget _buildFeatured(BuildContext context) {
    return CustomElevatedButton(
      height: 40.v,
      text: "Featured",
      buttonStyle: CustomButtonStyles.fillPrimaryTL20,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }
}
