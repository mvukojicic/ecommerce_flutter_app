import 'package:ecommerce_app/controllers/product_controller.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<ProductController>(ProductController());
  }
}
