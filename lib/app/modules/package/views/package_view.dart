import 'package:flutter/material.dart';
import 'package:getyours_app/app/data/controller/auth_controller.dart';
import 'package:getyours_app/app/routes/app_pages.dart';
import 'package:getyours_app/app/utils/style/AppColors.dart';
import 'package:getyours_app/app/utils/widget/header.dart';
import 'package:getyours_app/app/utils/widget/katalogYouMayKnow.dart';
import 'package:getyours_app/app/utils/widget/myKatalog.dart';
import 'package:getyours_app/app/utils/widget/myPackage.dart';
import 'package:getyours_app/app/utils/widget/sideBar.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../controllers/package_controller.dart';

class PackageView extends GetView<PackageController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _drawerKey,
        drawer: const SizedBox(width: 150, child: SideBar()),
        backgroundColor: AppColors.primaryBg,
        body: SafeArea(
          child: Row(
            children: [
              !context.isPhone
                  ? const Expanded(
                      flex: 2,
                      child: SideBar(),
                    )
                  : const SizedBox(),
              Expanded(
                flex: 15,
                child: Column(children: [
                  !context.isPhone
                      ? const header()
                      : Container(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  _drawerKey.currentState!.openDrawer();
                                },
                                icon: const Icon(
                                  Icons.menu,
                                  size: 40,
                                  color: AppColors.primaryText,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Package',
                                    style: TextStyle(
                                        height: 1.5,
                                        fontSize: 25,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const SizedBox(
                                width: 15,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 25,
                                  foregroundImage: NetworkImage(
                                      authCon.auth.currentUser!.photoURL!),
                                ),
                              ),
                            ],
                          ),
                        ),
                  // content / isi page / screen
                  Expanded(
                    child: Container(
                      padding: !context.isPhone
                          ? const EdgeInsets.all(50)
                          : const EdgeInsets.all(20),
                      margin: !context.isPhone
                          ? const EdgeInsets.all(10)
                          : const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: !context.isPhone
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Available Package',
                            style: TextStyle(fontSize: 30, color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 40,
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
                                          image: AssetImage(
                                              'assets/icons/icon1.png'),
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
                                onTap: () => Get.toNamed(Routes.PEMESANAN),
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
                                      'Chat Me Package',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        const Image(
                                          image: AssetImage(
                                              'assets/icons/icon3.png'),
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
                                          image: AssetImage(
                                              'assets/icons/icon4.png'),
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
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
