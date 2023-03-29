// import 'dart:convert';
// import 'dart:html';

import 'package:dio/dio.dart';
import 'package:for_notary/model/CompanyModel.dart';

class API {
  static Future<void> Login(String email) async {
    List<CompaniesList> cc = [];
    try {
      var dio = Dio();
      Response response;
      response = await dio.post(
        "https://notaryapp-staging.herokuapp.com/customer/login",
        data: {"email": email},
      );
      if (response.statusCode == 200) {
        // print(response.data["data"]["companiesList"].runtimeType);
        List<dynamic> company = response.data["data"]["companiesList"];
        List<CompaniesList> temp = [];
        for (var c in company) {
          CompaniesList company = CompaniesList.fromJson(c);
          temp.add(company);
        }
        cc = temp;
        // // print(cc[0].name);
        // return temp;
      }
    } catch (err) {
      print(err);
    }
  }
}
