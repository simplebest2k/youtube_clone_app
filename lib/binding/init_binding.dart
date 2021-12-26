import 'package:get/get.dart';
import 'package:youtube_clone_app/controller/AppController.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}