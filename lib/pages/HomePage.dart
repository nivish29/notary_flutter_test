import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:for_notary/model/CompanyModel.dart';
import 'package:for_notary/pages/CompanyWidget.dart';
import 'package:for_notary/pages/Customs.dart';
import 'package:for_notary/pages/login.dart';
// import 'package:for_notary/pages/CompanyWidget.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // static List<CompaniesList>

  TextEditingController searchController = TextEditingController();
  late List<dynamic> companyList;
  late List<dynamic> dummyList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    companyList = data.read("companiesList");
    dummyList = data.read("companiesList");
  }

  final data = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CompanyPage(
          searchController: searchController,
          dummyList: dummyList,
          companyList: companyList,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          data.remove('login');
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        child: Icon(Icons.logout),
      ),
    );
  }
}
