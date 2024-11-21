import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pickit_flutter/screens/main_screens.dart';
import 'package:pickit_flutter/theme.dart';

import 'package:firebase_core/firebase_core.dart';
import './AuthManager.dart';
import './KeywordManager.dart';
import './UserManager.dart';
import './Keyword.dart';
import '/global.dart';
import './Controller/GetFilteredFeeds.dart';
import 'package:pickit_flutter/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); //initializeApp가 처리되는걸 대기

  AuthManager am = AuthManager();
  User user = User("minu", "1234");
  am.loginUser(user.userId, user.userPwd); //로그인

  Keyword keyword = Keyword("삼성", true);

  KeywordManager km = KeywordManager(user);

  runApp(const MyApp());

  getFilteredFeeds();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 1. 테마 설정
      debugShowCheckedModeBanner: false,
      home: MainScreens(),
      theme: theme(),
      /*initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginPage(),
      },*/
    );
  }
}
