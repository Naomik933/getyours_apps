import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getyours_app/app/routes/app_pages.dart';
import 'package:ionicons/ionicons.dart';

class history extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // margin: const EdgeInsets.only(
                      //   left: 120,
                      // ),
                      child: const Text(
                        'History',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: const Image(
                        image: AssetImage('assets/images/agent1.png'),
                        width: 250,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Nama Agent : ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 73,
                        ),
                        Text(
                          'Panji',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          'Pilihan Paket : ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          'Hangout Package',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          'Total : ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 123,
                        ),
                        Text(
                          'Rp. 150.000',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          'Pembayaran : ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 73,
                        ),
                        Text(
                          'BCA',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // SizedBox(
                        //   width: 100,
                        // ),
                        FloatingActionButton.extended(
                          onPressed: () {
                            Get.defaultDialog(
                                title:
                                    "Apakah anda puas dengan pelayanan kami ?",
                                content: TextFormField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 2,
                                  decoration: InputDecoration(
                                    hintText: 'Tulis Ulasan Disini',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                confirm: ElevatedButton(
                                    onPressed: () {
                                      Get.defaultDialog(
                                        title:
                                            "Terimakasih atas penilaian yang anda berikan",
                                        custom: const Icon(Ionicons.heart),
                                        content: const Text(
                                            'Kami sangat senang apabila pelayanan kami dapat membantu anda.'),
                                        confirm: ElevatedButton(
                                          onPressed: () =>
                                              Get.toNamed(Routes.HOME),
                                          child: const Text('Sure!'),
                                        ),
                                      );
                                    },
                                    child: const Text("Kirim")));
                          },
                          label: const Text('Beri Ulasan'),
                          backgroundColor:
                              const Color.fromRGBO(255, 135, 109, 1),
                        ),
                      ],
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
