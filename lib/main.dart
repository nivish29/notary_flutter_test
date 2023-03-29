import 'package:flutter/material.dart';
import 'package:for_notary/pages/HomePage.dart';
import 'package:for_notary/pages/ShimmerPage.dart';
import 'package:for_notary/pages/login.dart';
import 'package:get/utils.dart';
import 'package:get_storage/get_storage.dart';
import 'package:for_notary/pages/Customs.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  final data = GetStorage();
  var login = data.read('login');

  runApp(MaterialApp(
    home: login == null ? LoginPage() : HomePage(),
  ));
}
