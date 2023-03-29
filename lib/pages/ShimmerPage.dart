import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:for_notary/model/CompanyModel.dart';
import 'package:for_notary/pages/login.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPage extends StatefulWidget {
  // List<dynamic> companyList;
  ShimmerPage({Key? key}) : super(key: key);

  @override
  State<ShimmerPage> createState() => _ShimmerPageState();
}

class _ShimmerPageState extends State<ShimmerPage> {
  final data = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Shimmer.fromColors(
              baseColor: Colors.black12,
              highlightColor: Colors.white10,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Container(
                    height: 60,
                    // width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Shimmer.fromColors(
                      baseColor: Colors.black12,
                      highlightColor: Colors.white10,
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          height: 60,
                          // width: 200,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
