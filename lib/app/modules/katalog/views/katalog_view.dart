import 'package:flutter/material.dart';
import 'package:getyours_app/app/data/controller/auth_controller.dart';
import 'package:getyours_app/app/utils/style/AppColors.dart';
import 'package:getyours_app/app/utils/widget/header.dart';
import 'package:getyours_app/app/utils/widget/myKatalog.dart';
import 'package:getyours_app/app/utils/widget/prosesKatalog.dart';
import 'package:getyours_app/app/utils/widget/sideBar.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../controllers/katalog_controller.dart';

class KatalogView extends GetView<KatalogController> {
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
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      _drawerKey.currentState!.openDrawer();
                                    },
                                    icon: const Icon(
                                      Icons.menu,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Catalog',
                                        style: TextStyle(
                                            height: 1.5,
                                            fontSize: 25,
                                            color: Colors.white),
                                      ),
                                      // Text(
                                      //   'Manage task made easy with friends',
                                      //   style: TextStyle(
                                      //       fontSize: 11,
                                      //       color: AppColors.primaryText),
                                      // ),
                                    ],
                                  ),
                                  const Spacer(),
                                  // const Icon(
                                  //   Ionicons.notifications,
                                  //   color: AppColors.primaryText,
                                  //   size: 30,
                                  // ),
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
                              const SizedBox(
                                height: 10,
                              ),
                              context.isPhone
                                  ? TextField(
                                      onChanged: (value) =>
                                          authCon.searchFriends(value),
                                      controller:
                                          authCon.searchFriendsController,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: const EdgeInsets.only(
                                            left: 40, right: 10),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.blue),
                                        ),
                                        prefixIcon: const Icon(
                                          Icons.search,
                                          color: Colors.black,
                                        ),
                                        hintText: 'Search',
                                      ),
                                    )
                                  : const SizedBox(),
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
                            : BorderRadius.circular(30),
                      ),
                      child: MyKatalog(),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
        // floatingActionButton: Align(
        //   alignment: const Alignment(0.95, 0.95),
        //   child: FloatingActionButton.extended(
        //     onPressed: () {
        //       addEditTask(context: context, type: 'Tambahkan', docId: '');
        //     },
        //     label: const Text('Tambah Resep'),
        //     icon: const Icon(Ionicons.add),
        //   ),
        // ),
      ),
    );
  }
}
