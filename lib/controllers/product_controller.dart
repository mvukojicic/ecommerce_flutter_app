import 'package:ecommerce_app/services/locator.dart';
import 'package:ecommerce_app/services/rest_api.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:openapi/ecommerce_api.dart';

class ProductController extends GetxController {
  RxBool isLoading = false.obs;
  List<Product>? allProducts;

  @override
  Future<void> onInit() async {
    super.onInit();
    await getAllProducts();
  }

  Future<void> getAllProducts() async {
    try {
      isLoading(true);
      final response =
          await getIt<RestApi>().api().getProductsApi().apiProductsGet();
      if (response.statusCode == 200) {
        allProducts = [...response.data ?? []];
      } else {
        if (kDebugMode) {
          print('Error fetching data');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error while getting the data is $e');
      }
    } finally {
      isLoading(false);
    }
  }
}
