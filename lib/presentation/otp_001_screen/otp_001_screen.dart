import 'package:app_2/presentation/home_tab_container_page/home_tab_container_page.dart';
import 'package:app_2/widgets/custom_pin_code_text_field.dart';
import 'package:app_2/widgets/custom_radio_button.dart';
import 'package:app_2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:app_2/core/app_export.dart';

class Otp001Screen extends StatelessWidget {
  Otp001Screen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 56.v,
          ),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Prop".toUpperCase(),
                      style: theme.textTheme.displaySmall,
                    ),
                    TextSpan(
                      text: " Swap AI".toUpperCase(),
                      style: theme.textTheme.displaySmall,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 43.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 20.v),
              _buildTwoHundred(context),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                text: "Verify",
                buttonStyle: CustomButtonStyles.fillGray,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomeTabContainerPage(),
                  ));
                },
              ),
              SizedBox(height: 50.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgQrcode,
                      height: 15.v,
                      width: 11.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "Resend OTP",
                        style: CustomTextStyles.titleSmallPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwoHundred(BuildContext context) {
    return CustomRadioButton(
      text: "2:00",
      value: "2:00",
      groupValue: radioGroup,
      padding: EdgeInsets.symmetric(vertical: 1.v),
      onChange: (value) {
        radioGroup = value;
      },
    );
  }
}
