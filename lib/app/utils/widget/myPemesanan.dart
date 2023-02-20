import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getyours_app/app/routes/app_pages.dart';

class MyPemesanan extends StatelessWidget {
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
                        'Detail Pemesanan',
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
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Pilihan Pembayaran : ',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.defaultDialog(
                              title: "Selamat",
                              content: const Text("Pembayaran Berhasil"),
                              confirm: ElevatedButton(
                                onPressed: () => Get.toNamed(Routes.HOME),
                                child: const Text("OK"),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            margin: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: const Image(
                              image: AssetImage('assets/icons/bca.png'),
                              width: 300,
                              height: 50,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          margin: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: const Image(
                            image: AssetImage('assets/icons/bri.png'),
                            width: 300,
                            height: 40,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          margin: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: const Image(
                            image: AssetImage('assets/icons/gopay.png'),
                            width: 300,
                            height: 50,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          child: const Image(
                            image: AssetImage('assets/icons/dana.png'),
                            width: 300,
                            height: 50,
                          ),
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
