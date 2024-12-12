import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // Nonaktifkan banner debug
      title: 'Mini Project', // Judul aplikasi
      initialRoute: Paths.LIST_PICTURES, // Route awal aplikasi
      getPages: AppPages.routes, // Daftar route dari AppPages
      theme: ThemeData(
        primarySwatch: Colors.blue, // Warna tema utama
      ),
      unknownRoute: GetPage(
        name: '/not-found',
        page: () => Scaffold(
          appBar: AppBar(title: Text('Not Found')),
          body: Center(child: Text('Halaman tidak ditemukan')),
        ),
      ),
    );
  }
}