import 'package:flutter/material.dart';
import 'package:flutter_quickstart_learn/common/index.dart';
import 'package:flutter_quickstart_learn/pages/welcome.dart';

/// Splash 页
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int number = 3;

  // 倒计时
  Future<void> _countdown() async {
    const int duration = 3;
    for (int i = 0; i < duration; i++) {
      await Future.delayed(const Duration(seconds: 1), () {
        if (mounted == true) {
          setState(() {
            number--;
          });
        }
      });
      // 倒计时结束, 进入 welcome
      if (number == 0) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const WelcomePage()));
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _countdown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.backgroundSplash,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 图标
              Stack(
                alignment: Alignment.center,
                children: [
                  // 底部
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(120 / 2),
                    ),
                  ),
                  // 图标
                  Image.asset(
                    AssetsImages.logoPng,
                    width: 84,
                    height: 80,
                  ),
                ],
              ),

              // 间距
              const SizedBox(height: 24),

              // 文字
              const Text(
                'Online Market',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // 间距
              const SizedBox(height: 20),

              // 计时器
              Text(
                '$number',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
