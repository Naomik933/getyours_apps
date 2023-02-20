import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:getyours_app/app/data/controller/auth_controller.dart';
import 'package:getyours_app/app/routes/app_pages.dart';
import 'package:getyours_app/app/utils/style/AppColors.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class MyPackage extends StatelessWidget {
  final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Text(
                    //   'Available Package',
                    //   style: TextStyle(fontSize: 30, color: Colors.grey),
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Container(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  'Wedding Package',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    const Image(
                                      image:
                                          AssetImage('assets/icons/icon1.png'),
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: const [
                                        Text('Price : Rp 250.000'),
                                        Text('Period : 3 Hours'),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            // onTap: () => Get.toNamed(Routes.),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                              child: Column(
                                children: [
                                  const Text(
                                    'Hangout Package',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      const Image(
                                        image: AssetImage(
                                            'assets/icons/icon2.png'),
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        children: const [
                                          Text('Price : Rp 150.000'),
                                          Text('Period : 3 Hours'),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  'Wedding Package',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    const Image(
                                      image:
                                          AssetImage('assets/icons/icon3.png'),
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: const [
                                        Text('Price : Rp 50.000'),
                                        Text('Period : 12 Hours'),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  'Add On',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    const Image(
                                      image:
                                          AssetImage('assets/icons/icon4.png'),
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: const [
                                        Text('Dress Code : Rp 100.000'),
                                        Text('Period : 75.000/Hours'),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
