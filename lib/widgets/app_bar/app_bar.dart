import 'package:ecommerce_app/shared/colors.dart';
import 'package:ecommerce_app/shared/shared.dart';
import 'package:ecommerce_app/widgets/categories_bar/categories_bar.dart';
import 'package:flutter/material.dart';

class CommerceAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommerceAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: CommerceColors.gradientStart,
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
        gradient: LinearGradient(
          colors: [CommerceColors.gradientStart, CommerceColors.gradientEnd],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: outlineBorder(),
                    enabledBorder: outlineBorder(),
                    border: outlineBorder(),
                    hintStyle: Theme.of(context).textTheme.titleSmall,
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.clear),
                    hintText: 'Search for products...',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.7),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CategoriesBar(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(
        double.maxFinite,
        180,
      );
}
