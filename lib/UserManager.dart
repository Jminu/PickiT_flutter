import 'package:firebase_database/firebase_database.dart';

import './Keyword.dart';
import 'models/News.dart';

class User {
  String userId;
  String userPwd;
  List<Keyword> userKeywords = [];
  List<News> myNews = []; //스크랩 해놓은 뉴스

  User(this.userId, this.userPwd);

  String getUserId() {
    return this.userId;
  }

  String getUserPwd() {
    return this.userPwd;
  }

  void setUserId(String userId) {
    this.userId = userId;
  }

  void setUserPwd() {
    this.userPwd = userPwd;
  }
}
