import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:getyours_app/app/data/controller/auth_controller.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class KatalogYouMayKnow extends StatelessWidget {
  final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
          future: authCon.getFavorit(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            var data = snapshot.data!.docs;
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              clipBehavior: Clip.antiAlias,
              itemCount: data.length,
              itemBuilder: (context, index) {
                var hasil = data[index].data();
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                    children: [
                      // ClipRRect(
                      //   borderRadius: BorderRadius.circular(50),
                      //   child: Image(
                      //     image: NetworkImage(hasil['photo']),
                      //     height: Get.width * 0.4,
                      //     width: Get.width * 0.4,
                      //     fit: BoxFit.cover,
                      //   ),
                      // ),
                      Positioned(
                        bottom: 5,
                        left: 30,
                        child: Text(
                          hasil['title'],
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        right: -0.5,
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: ElevatedButton(
                            onPressed: () => authCon.addFriends(hasil['title']),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            child: const Icon(
                              Ionicons.heart,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }),
    );
  }
}
