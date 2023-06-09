import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:nss_connect/HomeDasboard.dart';
import 'package:nss_connect/poDashboard.dart';
import 'package:nss_connect/volunteer_dashboard.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:nss_connect/register.dart';
import 'login.dart';
import 'cfmdta.dart';
import 'welcomeTour.dart';
import 'Secretary.dart';
import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          buttonTheme:
              ThemeData().buttonTheme.copyWith(buttonColor: primaryButton),
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: primaryColor,
                secondary: secondaryColor,
              ),
        ),
        // initialRoute: Home.id,
        routes: {
          Home.id: (ctx) => Home(),
          HomeDashboard.id:(ctx)=>HomeDashboard(),
          Login.id: (ctx) => Login(),
          Register.id: (ctx) => Register(),
          ConfirmData.id: (ctx) => ConfirmData(),
          SecretaryDashboard.id: (ctx) => SecretaryDashboard(),
          VolunteerDashboardPage.id: (ctx) => VolunteerDashboardPage(),
          PoDashboardPage.id: (ctx) => PoDashboardPage(),
        },
        home: AnimatedSplashScreen(
            duration: 1500,
            splash: Icons.home,
            nextScreen: Home(),
            splashTransition: SplashTransition.rotationTransition,
            pageTransitionType: PageTransitionType.rightToLeft,
            centered: true,
            backgroundColor: Color.fromARGB(255, 237, 83, 83))
        // home: const Login(),
        );
  }
}
