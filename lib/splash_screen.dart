import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:book_store/screen/auth.screen/login.screen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    navigationToHome();
  }

  navigationToHome() async {
    await Future.delayed(
        const Duration(
          milliseconds: 2600,
        ),
        () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => LogInScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'APKA BOOK STORE',
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 35,
                fontWeight: FontWeight.w700,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'वाचाल तर वाचाल ..!',
                  textStyle: const TextStyle(
                    color: Colors.blue,
                    fontSize: 30.0,
                    letterSpacing: 3,
                    wordSpacing: 3,
                    fontWeight: FontWeight.w500,
                  ),
                  speed: const Duration(milliseconds: 200),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            const SizedBox(
              height: 15,
            ),
            const SpinKitWaveSpinner(
              color: Colors.blue,
              waveColor: Colors.blue,
              size: 70.0,
            ),
          ],
        ),
      ),
    );
  }
}
