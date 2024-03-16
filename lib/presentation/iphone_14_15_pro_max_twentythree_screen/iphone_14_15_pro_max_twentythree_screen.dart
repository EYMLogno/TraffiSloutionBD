import 'package:traffic_test/widgets/custom_icon_button.dart';
import 'package:traffic_test/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:traffic_test/core/app_export.dart';

class Iphone1415ProMaxTwentythreeScreen extends StatelessWidget {
  const Iphone1415ProMaxTwentythreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgIphone1415Pro),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 16.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 39.v),
                      _buildTwentyFive(context),
                      Spacer(flex: 47),
                      _buildTravelEstimation(context),
                      SizedBox(height: 40.v),
                      _buildFindPlaces(context),
                      SizedBox(height: 40.v),
                      _buildEmergencyCall(context),
                      Spacer(flex: 52),
                      _buildAd(context),
                      SizedBox(height: 27.v),
                      Text("4/15", style: theme.textTheme.bodySmall)
                    ])))));
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 31.h, right: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomIconButton(
              height: 35.adaptSize,
              width: 35.adaptSize,
              padding: EdgeInsets.all(6.h),
              onTap: () {
                onTapBtnIconButton(context);
              },
              child: CustomImageView(imagePath: ImageConstant.imgGroup14)),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse135x35,
              height: 35.adaptSize,
              width: 35.adaptSize,
              radius: BorderRadius.circular(17.h))
        ]));
  }

  /// Section Widget
  Widget _buildTravelEstimation(BuildContext context) {
    return CustomElevatedButton(
        height: 78.v,
        width: 279.h,
        text: "Travel Estimation",
        buttonStyle: CustomButtonStyles.fillLightBlue);
  }

  /// Section Widget
  Widget _buildFindPlaces(BuildContext context) {
    return CustomElevatedButton(
        height: 78.v,
        width: 279.h,
        text: " Find Places",
        buttonStyle: CustomButtonStyles.fillLightBlue);
  }

  /// Section Widget
  Widget _buildEmergencyCall(BuildContext context) {
    return CustomElevatedButton(
        height: 78.v,
        width: 279.h,
        text: " Emergency Call",
        buttonStyle: CustomButtonStyles.fillLightBlue);
  }

  /// Section Widget
  Widget _buildAd(BuildContext context) {
    return CustomElevatedButton(
        height: 68.v,
        text: "   Ad",
        buttonStyle: CustomButtonStyles.fillGray1,
        buttonTextStyle: theme.textTheme.bodySmall!);
  }

  /// Navigates to the iphone1415ProMaxTwentytwoScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTwentytwoScreen);
  }
}
