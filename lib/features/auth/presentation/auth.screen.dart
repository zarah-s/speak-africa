import 'package:flutter/material.dart';
import 'package:speak_nigerian/features/auth/presentation/signin.screen.dart';
import 'package:speak_nigerian/features/auth/presentation/signup.screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  int currentIndex = 0;
  final PageController _pageController = PageController();
  void changePage(int index) {
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 3), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      SigninScreen(
        onChangePage: changePage,
      ),
      SignupScreen(
        onChangePage: changePage,
      )
    ];
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (value) => setState(() => currentIndex = value),
        itemCount: screens.length,
        itemBuilder: (context, index) => screens[index],
      ),
    );
  }
}
