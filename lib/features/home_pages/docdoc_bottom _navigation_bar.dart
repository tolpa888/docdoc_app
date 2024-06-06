import 'package:docdoc_app/core/theming/colors.dart';
import 'package:docdoc_app/features/home_pages/calendar/calendar_screen.dart';
import 'package:docdoc_app/features/home_pages/chat/chat_screen.dart';
import 'package:docdoc_app/features/home_pages/home/home_screen.dart';
import 'package:docdoc_app/features/home_pages/profile/ui/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class DocdocBottomNavigationBar extends StatefulWidget {
  const DocdocBottomNavigationBar({super.key});

  @override
  State<DocdocBottomNavigationBar> createState() =>
      _DocdocBottomNavigationBarState();
}

class _DocdocBottomNavigationBarState extends State<DocdocBottomNavigationBar> {
  final PageController pageController = PageController(initialPage: 0);
  late int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          HomeScreen(),
          CalendarScreen(),
          ChatScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        //  type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.orange,
        currentIndex: _selectedIndex,
        selectedItemColor: ColorsManger.mainblue,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            pageController.jumpToPage(index);
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: SvgPicture.asset((_selectedIndex == 0
                ? 'assets/svgs/home-2.svg'
                : 'assets/svgs/homeUnselected.svg')),
            title: const Text('Home'),
            selectedColor: ColorsManger.mainblue,
          ),
          SalomonBottomBarItem(
            icon: SvgPicture.asset((_selectedIndex == 1
                ? 'assets/svgs/calendar-2.svg'
                : 'assets/svgs/calendar.svg')),
            title: const Text('Calendar'),
          ),
          SalomonBottomBarItem(
            icon: SvgPicture.asset((_selectedIndex == 2
                ? 'assets/svgs/message_selected.svg'
                : 'assets/svgs/message.svg')),
            title: const Text('Chat'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.account_circle_outlined),
            title: const Text('Profile'),
          ),
        ],
      ),
    );
  }
}
