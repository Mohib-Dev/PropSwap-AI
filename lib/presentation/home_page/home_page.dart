import 'widgets/home_item_widget.dart';
import 'package:app_2/widgets/custom_elevated_button.dart';
import 'package:app_2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:app_2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHome(context),
                    SizedBox(height: 40.v),
                    _buildSeeAllProperties(context),
                    SizedBox(height: 70.v),
                    Row(
                      children: [
                        CustomIconButton(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgHome,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFacebook,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          margin: EdgeInsets.only(
                            left: 136.h,
                            top: 9.v,
                            bottom: 9.v,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return SizedBox(
      height: 341.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 10.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 303.0.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.gray100,
              indent: 10.0.h,
              endIndent: 10.0.h,
            ),
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return HomeItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSeeAllProperties(BuildContext context) {
    return CustomElevatedButton(
      text: "See All Properties",
      margin: EdgeInsets.only(
        left: 10.h,
        right: 24.h,
      ),
    );
  }
}
