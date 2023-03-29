import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:for_notary/pages/Customs.dart';

class CompanyPage extends StatefulWidget {
  final TextEditingController searchController;
  List<dynamic> dummyList;
  final List<dynamic> companyList;
  CompanyPage(
      {Key? key,
      required this.searchController,
      required this.dummyList,
      required this.companyList})
      : super(key: key);

  @override
  State<CompanyPage> createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  void searchCompany(String query) {
    final sug = widget.companyList.where((element) {
      final title = element['name'].toString().toLowerCase();
      final input = query.toLowerCase();
      return title.contains(input);
    }).toList();
    setState(() {
      widget.dummyList = sug;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 16.0, right: 16, bottom: 16, top: 30),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              controller: widget.searchController,
              decoration: const InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10)),
              onChanged: (value) {
                searchCompany(value);
                setState(() {});
              },
            ),
          ),
        ),
        Row(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: Text(
                  'Companies',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
            ),
            Text(
              '(${widget.dummyList.length})',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: widget.dummyList.length,
              itemBuilder: (context, index) {
                return CPage(
                  Name: widget.dummyList[index]['name'].toString(),
                );
              }),
        ),
      ],
    );
  }
}
