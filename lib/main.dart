import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:titok_clone/constants/sizes.dart';
import 'package:titok_clone/features/authentication/sign_up_screen.dart';
import 'package:titok_clone/features/main_navigation/main_navigation_screen.dart';

void main() async {
  //bind, flutter engine과 플랫폼을 컴파일하기 전에 sync한 후에
  WidgetsFlutterBinding.ensureInitialized();

//항상 세로 방향으로 유지하게끔 설정
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );
  runApp(const TicTokApp());
}

class TicTokApp extends StatelessWidget {
  const TicTokApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok Clone',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFFE9435A),
        //모든 TextFieldCursor 색을 변경하기 위해 아래 설정.
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(
            0xFFE9435A,
          ),
        ),
        // click 시 splash action 삭제
        splashColor: Colors.transparent,
        // long-click 시 splash action 삭제
        highlightColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size16 + Sizes.size2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: const Color(0xFFE9435A),
        brightness: Brightness.dark,
      ),
      home: const SignUpScreen(),
    );
  }
}
