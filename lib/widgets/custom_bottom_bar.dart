import 'package:flutter/material.dart';
import 'package:app_2/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgGroup13,
      activeIcon: ImageConstant.imgGroup13,
      type: BottomBarEnum.Group13,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFavorite,
      activeIcon: ImageConstant.imgFavorite,
      type: BottomBarEnum.Favorite,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCalendar,
      activeIcon: ImageConstant.imgCalendar,
      type: BottomBarEnum.Calendar,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLinkedin,
      activeIcon: ImageConstant.imgLinkedin,
      type: BottomBarEnum.Linkedin,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(14.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 18.v,
              width: 19.h,
              color: appTheme.blueGray900,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 30.v,
              width: 16.h,
              color: theme.colorScheme.primary,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Group13,
  Favorite,
  Calendar,
  Linkedin,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
