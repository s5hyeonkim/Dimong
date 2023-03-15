// 기본 디자인 widget 제공
import 'package:flutter/material.dart';
// 기능 import
import 'package:dimong/ui/screens/home/home.dart';
import 'package:dimong/ui/screens/drawing/drawing.dart';
import 'package:dimong/ui/screens/dic_dino/dic_dino.dart';
import 'package:dimong/ui/screens/dic_etc/dic_etc.dart';
import 'package:dimong/ui/screens/mypage/mypage.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

// NavBar Widget을 생성
class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

//
class _NavBarState extends State<NavBar> {
  // selectedIndex
  int selectedIndex = 0;
  final screen = [
    //HomePage(),
    //EncyclopediaDino(),
    //DictionaryEtc(),
    DrawingDino(),
    // MyPage(),
  ];

  //swipe
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('CurvedNavigationBar'),
      //   backgroundColor: Colors.blue,
      // ),
      bottomNavigationBar:
      Container(
        decoration: BoxDecoration(
          color: Color(0xFFACC864),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: CurvedNavigationBar(
          height: 50,
          color: Colors.white, //bar색상
          backgroundColor: Color(0xFFACC864), //선택 색상
          index: selectedIndex,
          items: [
            SvgPicture.asset(
              'assets/images/home.svg',
              width: 30,
              height: 30,
              color: selectedIndex == 0 ? Color(0xFFACC864) : Color(0xff6B6B6B),
            ),
            SvgPicture.asset(
              'assets/images/dictionaryDino.svg',
              width: 30,
              height: 30,
              color: selectedIndex == 1 ? Color(0xFFACC864) : Color(0xff6B6B6B),
            ),
            SvgPicture.asset(
              'assets/images/dictionaryOthers.svg',
              width: 30,
              height: 30,
              color: selectedIndex == 2 ? Color(0xFFACC864) : Color(0xff6B6B6B),
            ),
            SvgPicture.asset(
              'assets/images/paint.svg',
              width: 30,
              height: 30,
              color: selectedIndex == 3 ? Color(0xFFACC864) : Color(0xff6B6B6B),
            ),
            SvgPicture.asset(
              'assets/images/person.svg',
              width: 30,
              height: 30,
              color: selectedIndex == 4 ? Color(0xFFACC864) : Color(0xff6B6B6B),
            ),
          ],
          onTap: (index) {
            setState(() {
               selectedIndex = index;
            });
            _pageController.jumpToPage(index);
            },
            buttonBackgroundColor: Colors.white,
            animationCurve: Curves.easeInOutQuart,
            animationDuration: const Duration(milliseconds: 200),
          ),
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          children: screen,
        ),
      );
  }
}