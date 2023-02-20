import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getyours_app/app/routes/app_pages.dart';
import 'package:getyours_app/app/utils/style/AppColors.dart';

import '../controllers/term_controller.dart';

class TermView extends GetView<TermController> {
  // const TermView({Key? key}) : super(key: key);
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryText,
        body: SafeArea(
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'SYARAT DAN KETENTUAN',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'Anda wajib membaca dan menyetujui Syarat Penggunaan (“Perjanjian”) kami karena hal ini merupakan kontrak yang mengikat antara Anda dan Get Yours. Namun demikian, kami telah menyediakan rangkuman singkat berikut untuk kenyamanan Anda (dengan istilah dalam huruf kapital yang ditetapkan dalam Perjanjian).'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'Penerimaan. Dengan menggunakan Layanan ini, Anda sepakat dengan Perjanjian ini, Kebijakan Privasi, dan Kiat Keselamatan kami, serta segala ketentuan yang berlaku untuk pembelian dalam aplikasi yang Anda lakukan. Kelayakan. Anda harus berusia sekurang-kurangnya 18 tahun untuk menggunakan Layanan ini dan tidak dilarang oleh Hukum untuk menggunakan Layanan ini. Anda berjanji untuk mematuhi hukum dan Anda bukan narapidana ataupun pelaku kejahatan seksual. Akun Anda. Apabila Anda menggunakan Facebook untuk mengakses GetYours, Anda harus mengizinkan kami mengakses informasi tertentu dari Facebook untuk menggunakan GetYours. Anda setuju untuk menjaga akun Anda tetap aman dan rahasia. Mengubah Layanan; Penghentian. Kami dapat mengubah ataupun menghentikan Layanan sewaktu-waktu. Anda dapat menghentikan akun Anda pada bagian Pengaturan, dan kami berhak menghentikannya jika Anda melanggar Perjanjian ini, atau jika kami menganggap Layanan yang Anda gunakan tidak sesuai. Keselamatan. Get Yours tidak bertanggung jawab atas tindakan penggunanya atau interaksi Anda dengan mereka, dan kami tidak melakukan pemeriksaan latar belakang. Berhati-hatilah dan pastikan Anda membaca dan mengikuti Kiat Keselamatan kami saat berinteraksi dengan orang-orang melalui Get Yours atau di luar Get Yours. Hak. Get Yours memberikan hak kepada Anda untuk menggunakan Layanan kami sebagaimana diperkenankan dan diizinkan oleh Perjanjian ini. Lihat Perjanjian untuk memperoleh daftar lengkap tindakan yang Anda sepakati untuk tidak diambil. Anda memberikan hak kepada Get Yours untuk menampilkan profil dan Konten Anda demi tujuan terbatas dalam pengoperasian Layanan dan penelitian serta pengembangan terbaru Get Yours. Aturan. Lihat Perjanjian untuk memperoleh daftar aturan yang Anda setujui untuk dipatuhi saat Anda menggunakan Get Yours, misalnya tidak meminta uang dari pengguna lain, melecehkan pengguna lain, atau menggunakan Layanan demi tujuan ilegal apa pun. Pembelian dalam Aplikasi. Get Yours dapat menawarkan layanan untuk pembelian melalui platform seluler seperti iTunes dan Google Play. Pembelian tersebut diatur oleh ketentuan dalam platform. Sebagian besar pembelian tidak dapat dikembalikan dan layanan tertentu hanya memberikan lisensi yang ditetapkan kepada Anda, sebagaimana disebutkan dalam Perjanjian. Hak Cipta. Apabila Anda meyakini bahwa pekerjaan Anda telah diposting dalam Layanan dan melanggar hak cipta Anda, kirim pemberitahuan kepada Agen Hak Cipta kami dengan mengikuti petunjuk dalam Perjanjian. Sangkalan. Kami memberikan Layanan “sebagaimana adanya,” dan kami menyangkal tanggung jawab hukum untuk kualitas, keselamatan, atau keandalan Layanan kami. Batasan Kewajiban. Sejauh diizinkan oleh hukum, kami membatasi tanggung jawab kami kepada Anda untuk jenis kerugian tertentu atas gugatan yang berhubungan dengan penggunaaan Layanan Anda, perilaku pengguna lain, dan akses atau penggunaan Konten tanpa izin. Tanggung jawab keseluruhan kami tidak akan melebihi biaya yang Anda bayarkan kepada kami. Arbitrase. Perjanjian kami memuat klausulul arbitrase yang bersifat wajib. Anda menyetujui bahwa segala sengketa akan diselesaikan melalui arbitrase dan Anda melepaskan hak Anda atas pengadilan oleh hakim ataupun untuk berpartisipasi dalam gugatan kelompok. Hal ini tidak berlaku bagi pengguna yang tinggal di UE, Norwegia atau negara mana pun yang dilarang oleh hukum. Hukum yang Mengatur; Tempat. Hukum Texas berlaku untuk Perjanjian ini. Tindakan untuk sengketa yang berkaitan dengan Perjanjian ini wajib dibawa ke Dallas, Texas, kecuali bagi pengguna yang berada di UE atau Norwegia, yang dapat mengajukan gugatan di negara tempat tinggal mereka. Ganti Rugi. Anda setuju untuk mengganti kerugian kepada kami atas tindakan yang timbul karena penggunaan Layanan, Konten, atau pelanggaran yang Anda lakukan terhadap Perjanjian ini.'),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Align(
          alignment: const Alignment(0.95, 0.95),
          child: FloatingActionButton.extended(
            onPressed: () => Get.toNamed(Routes.HOME),
            label: const Text('Saya setuju'),
          ),
        ),
      ),
    );
  }
}
