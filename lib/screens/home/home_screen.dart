import 'package:ecommerce_app/controllers/product_controller.dart';
import 'package:ecommerce_app/widgets/app_bar/app_bar.dart';
import 'package:ecommerce_app/widgets/product_cards/main_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openapi/ecommerce_api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> allProducts = [];
  ProductController controller = Get.put(ProductController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommerceAppBar(),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    if (controller.allProducts != null)
                      ...controller.allProducts!.map(
                        (e) => MainProductCard(
                          productImage: e.thumbnail,
                          productTitle: e.title,
                          productDescription: e.description,
                          productRating: e.rating,
                        ),
                      ),
                  ],
                ),
              ),
      ),
    );
  }
}
