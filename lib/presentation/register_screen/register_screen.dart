import 'package:app_2/presentation/otp_001_screen/otp_001_screen.dart';
import 'package:app_2/widgets/custom_text_form_field.dart';
import 'package:app_2/widgets/custom_checkbox_button.dart';
import 'package:app_2/widgets/custom_elevated_button.dart';
import 'package:app_2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:app_2/core/app_export.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  bool iagreetoTermsConditions = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 44.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 12.v),
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
                    _buildFullName(context),
                    SizedBox(height: 20.v),
                    _buildPhone(context),
                    SizedBox(height: 20.v),
                    _buildPassword(context),
                    SizedBox(height: 20.v),
                    _buildConfirmpassword(context),
                    SizedBox(height: 21.v),
                    _buildIagreetoTermsConditions(context),
                    SizedBox(height: 18.v),
                    _buildRegister(context),
                    SizedBox(height: 20.v),
                    _buildSignInWithGoogle(context),
                    SizedBox(height: 20.v),
                    _buildSignInWithApple(context),
                    SizedBox(height: 20.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 19.v,
                          width: 14.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "Continue as Guest",
                            style: CustomTextStyles.titleSmallWhiteA70001,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
      controller: fullNameController,
      hintText: "Full Name",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 23.v, 24.h, 22.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgSettings,
          height: 16.v,
          width: 15.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 61.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return CustomTextFormField(
      controller: phoneController,
      hintText: "Email or Phone No.",
      textInputType: TextInputType.emailAddress,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 22.v, 20.h, 22.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 16.v,
          width: 20.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 61.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 22.v, 24.h, 23.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgSettingsGray900,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 61.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return CustomTextFormField(
      controller: confirmpasswordController,
      hintText: "Confirm Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 22.v, 24.h, 23.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgSettingsGray900,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 61.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildIagreetoTermsConditions(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 30.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "I agree to Terms & Conditions",
          value: iagreetoTermsConditions,
          onChange: (value) {
            iagreetoTermsConditions = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(
      text: "Register",
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Otp001Screen(),
        ));
      },
    );
  }

  /// Section Widget
  Widget _buildSignInWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign in with Google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgImage1,
          height: 33.v,
          width: 31.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInWithApple(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign in with Apple",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgImage134x29,
          height: 34.v,
          width: 29.h,
        ),
      ),
    );
  }
}
