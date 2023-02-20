import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:getyours_app/app/data/controller/auth_controller.dart';
import 'package:getyours_app/app/routes/app_pages.dart';
import 'package:getyours_app/app/utils/style/AppColors.dart';
import 'package:getyours_app/app/utils/widget/prosesKatalog.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class MyDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 120,
                    ),
                    child: const Text(
                      'Panji',
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
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Biodata Agent : ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Nama Lengkap : Muhammad Panji Putra',
                  ),
                  const Text(
                    'Nama Panggilan : Panji',
                  ),
                  const Text(
                    'Umur : 23 tahun',
                  ),
                  const Text(
                    'Jenis Kelamin : Laki - laki',
                  ),
                  const Text(
                    'Hobi : Travelling dan bermain game',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Detail Agent : ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Saya seorang pekerja, memiliki rambut hitam dan mata hitam. Tinggi badan 179cm dan berat badan 73kg.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
