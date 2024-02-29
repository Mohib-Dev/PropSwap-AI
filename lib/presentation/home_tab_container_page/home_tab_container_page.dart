import 'package:app_2/presentation/prefernces_screen/prefernces_screen.dart';
import 'package:app_2/widgets/app_bar/custom_app_bar.dart';
import 'package:app_2/widgets/app_bar/appbar_title_image.dart';
import 'package:app_2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:app_2/widgets/custom_search_view.dart';
import 'package:app_2/widgets/custom_icon_button.dart';
import 'package:app_2/presentation/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:app_2/core/app_export.dart';
import 'dart:async';

class HomeTabContainerPage extends StatefulWidget {
  const HomeTabContainerPage({Key? key}) : super(key: key);

  @override
  HomeTabContainerPageState createState() => HomeTabContainerPageState();
}

class HomeTabContainerPageState extends State<HomeTabContainerPage>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);

    // Start a timer to navigate after 3 seconds
    Timer(Duration(seconds: 10), () {
      _navigateToAnotherScreen();
    });
  }

  void _navigateToAnotherScreen() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => PreferncesScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 13.v),
              _buildThirty(context),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Latest Properties",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 519.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      HomePage(),
                      HomePage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

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

  Widget _buildThirty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomSearchView(
              controller: searchController,
              hintText: "Search",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(17.h),
              decoration: IconButtonStyleHelper.outlineBlack,
              child: CustomImageView(
                imagePath: ImageConstant.imgRewind,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 40.v,
      width: 342.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray900,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Rebond Grotesque',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray900,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Rebond Grotesque',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(20.h),
          border: Border.all(
            color: appTheme.gray900,
            width: 1.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Featured",
            ),
          ),
          Tab(
            child: Text(
              "New Property",
            ),
          ),
        ],
      ),
    );
  }
}
