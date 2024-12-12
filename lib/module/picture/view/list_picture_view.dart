import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class ListPictureView extends StatelessWidget {
  final controller = Get.put(ListPictureController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Photo')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: controller.pictureList.length,
            itemBuilder: (context, index) {
              final picture = controller.pictureList[index];
              return ListContentWidget(
                imageUrl: picture['download_url'],
                photographer: picture['author'],
                onTap: () {
                  // Navigasi ke halaman detail
                  Get.toNamed(Paths.DETAIL_PICTURES,
                      arguments: int.parse(picture['id']));
                },
              );
            },
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.loadMorePictures(); // Memuat lebih banyak gambar
        },
        child: Icon(Icons.add),
      ),
    );
  }
}