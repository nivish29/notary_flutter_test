import 'dart:convert';
import 'ShimmerPage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'HomePage.dart';
import '../Api/api.dart';
import '../model/CompanyModel.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final data = GetStorage();
  List<CompaniesList> cc = [];
  List<dynamic> myCompany = [];

  TextEditingController emailEditingController = TextEditingController();
  bool isLoading = false;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Image.asset('assets/login.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40.0, right: 40, bottom: 40),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller: emailEditingController,
                          decoration: InputDecoration(
                              hintText: 'Email',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Login(emailEditingController.text.toString());
              },
              child: Container(
                height: 40,
                width: 110,
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black87),
                child: Center(
                  child: isLoading
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(),
                        )
                      : Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                ),
              ),
            ),
            // Text(myCompany.length.toString()),
          ],
        ),
      ),
    );
  }

  Future Login(String email) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ShimmerPage()));
    setState(() {
      isLoading = true;
    });
    var dio = Dio();
    Response response;
    response = await dio.post(
      "https://notaryapp-staging.herokuapp.com/customer/login",
      data: {"email": email},
    );
    data.write('login', "done");
    if (response.statusCode == 200) {
      List<dynamic> company = response.data["data"]["companiesList"];
      print(company);
      List<CompaniesList> temp = [];
      for (var c in company) {
        CompaniesList newCrypto = CompaniesList.fromJson(c);
        temp.add(newCrypto);
      }
      cc = temp;
      print(cc.length);
      data.write("companiesList", company);
      myCompany = data.read("companiesList");

      print(myCompany.length);
      isLoading = false;
      setState(() {});
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }
}
