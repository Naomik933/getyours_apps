import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getyours_app/app/data/controller/auth_controller.dart';
import 'package:getyours_app/app/utils/style/AppColors.dart';

import '../controllers/datadiri_controller.dart';

class DatadiriView extends GetView<DatadiriController> {
  // const DatadiriView({Key? key}) : super(key: key);
  // final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryText,
        body: SafeArea(
          child: Column(
            children: [
              !context.isPhone
                  ? SizedBox()
                  : Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 150,
                              // padding: const EdgeInsets.only(top: 10),
                              // width: double.infinity,
                              // alignment: Alignment.topCenter,
                              child: const Image(
                                image: AssetImage('assets/icons/icon.png'),
                                color: Color.fromARGB(255, 241, 91, 3),
                              ),
                            ),
                            Text('Welcome to'),
                          ],
                        ),
                        Text('Get Yours'),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
