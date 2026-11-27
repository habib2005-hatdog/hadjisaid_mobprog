import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hadjisaid_mobprog/constant.dart';
import 'package:hadjisaid_mobprog/screens/newsfeed_screen.dart';
import 'package:hadjisaid_mobprog/screens/notification_screen.dart';
import 'package:hadjisaid_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: fbTextColorWhite,
        elevation: 2,
        title: CustomText(
          text: _selectedIndex == 0 ? 'Facebook' : 'Notifications',
          fontSize: ScreenUtil().setSp(25),
          color: _selectedIndex == 0 ? fbPrimary : Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),

      body: PageView(
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
        children: const [
          NewsfeedScreen(),
          NotificationScreen(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: fbPrimary,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });

          _pageController.jumpToPage(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }
}