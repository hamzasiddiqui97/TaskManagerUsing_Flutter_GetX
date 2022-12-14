import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_using_getx/app/data/services/storage/services.dart';
import 'package:task_management_using_getx/app/modules/home/view.dart';
import 'package:get_storage/get_storage.dart';

void main()async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo List using GetX",
      home: HomePage(),
    );
  }
}
