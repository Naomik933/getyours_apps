import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getyours_app/app/data/controller/auth_controller.dart';
import 'package:getyours_app/app/routes/app_pages.dart';

class MyKatalog extends StatelessWidget {
  final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // stream users for get task list
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Catalog Agent',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              clipBehavior: Clip.antiAlias,
              // onDoubleTap: () => Get.toNamed(Routes.DETAIL),
              child: Container(
                // margin: const EdgeInsets.only(bottom: 10),
                // padding: const EdgeInsets.all(5),
                // height: 140,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(20),
                //   color: AppColors.cardBg,
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onDoubleTap: () => Get.toNamed(Routes.DETAIL),
                      child: Row(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: const Image(
                                image: AssetImage('assets/images/agent1.png'),
                                width: 120,
                                height: 115,
                                fit: BoxFit.cover,
                              ),
                            ),
                            margin: const EdgeInsets.only(
                              bottom: 10,
                              left: 15,
                              top: 5,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    bottom: 10,
                                    top: 10,
                                  ),
                                  child: const Text(
                                    'Panji',
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                Container(
                                  // padding:
                                  //     const EdgeInsetsDirectional
                                  //         .fromSTEB(0, 0, 0, 25),
                                  child: const Text(
                                    'Saya seorang pekerja, memiliki rambut hitam dan mata hitam. Tinggi badan 179cm dan berat badan 73kg.',
                                    // maxLines: 1,
                                    // overflow:
                                    //     TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: const Image(
                              image: AssetImage('assets/images/agent2.png'),
                              width: 120,
                              height: 115,
                              fit: BoxFit.cover,
                            ),
                          ),
                          margin: const EdgeInsets.only(
                            bottom: 10,
                            left: 15,
                            top: 5,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  bottom: 10,
                                  top: 10,
                                ),
                                child: const Text(
                                  'Hani',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Container(
                                // padding:
                                //     const EdgeInsetsDirectional
                                //         .fromSTEB(0, 0, 0, 25),
                                child: const Text(
                                  'Saya seorang mahasiswa, memiliki rambut coklat dan mata coklat. Tinggi badan 158cm dan berat badan 58kg.',
                                  // maxLines: 1,
                                  // overflow:
                                  //     TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: const Image(
                              image: AssetImage('assets/images/agent3.png'),
                              width: 120,
                              height: 115,
                              fit: BoxFit.cover,
                            ),
                          ),
                          margin: const EdgeInsets.only(
                            bottom: 10,
                            left: 15,
                            top: 5,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  bottom: 10,
                                  top: 10,
                                ),
                                child: const Text(
                                  'Anji',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Container(
                                // padding:
                                //     const EdgeInsetsDirectional
                                //         .fromSTEB(0, 0, 0, 25),
                                child: const Text(
                                  'Saya seorang pekerja, memiliki rambut hitam dan mata hitam. Tinggi badan 185cm dan berat badan 70kg.',
                                  // maxLines: 1,
                                  // overflow:
                                  //     TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: const Image(
                              image: AssetImage('assets/images/agent4.png'),
                              width: 120,
                              height: 115,
                              fit: BoxFit.cover,
                            ),
                          ),
                          margin: const EdgeInsets.only(
                            bottom: 10,
                            left: 15,
                            top: 5,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  bottom: 10,
                                  top: 10,
                                ),
                                child: const Text(
                                  'Putri',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Container(
                                // padding:
                                //     const EdgeInsetsDirectional
                                //         .fromSTEB(0, 0, 0, 25),
                                child: const Text(
                                  'Saya seorang mahasiswa, saya suka memakai hijab dan mata coklat. Tinggi badan 158cm dan berat badan 58kg.',
                                  // maxLines: 1,
                                  // overflow:
                                  //     TextOverflow.ellipsis,
                                ),
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
          ),
        ],
      ),
    );
  }
}
