import 'package:flutter/material.dart';

class CategoriesBar extends StatelessWidget {
  const CategoriesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: SizedBox(
        height: 75,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            categoryField(
              icon: 'assets/icons/category_icons/smartphone.png',
              context: context,
              categoryName: 'smartphones',
            ),
            categoryField(
              icon: 'assets/icons/category_icons/food.png',
              context: context,
              categoryName: 'food',
            ),
            categoryField(
              icon: 'assets/icons/category_icons/glasses.png',
              context: context,
              categoryName: 'glasses',
            ),
            categoryField(
              icon: 'assets/icons/category_icons/laptop.png',
              context: context,
              categoryName: 'laptops',
            ),
            categoryField(
              icon: 'assets/icons/category_icons/perfume.png',
              context: context,
              categoryName: 'perfumes',
            ),
            categoryField(
              icon: 'assets/icons/category_icons/automotive.png',
              context: context,
              categoryName: 'automotive',
            ),
            categoryField(
              icon: 'assets/icons/category_icons/living-room.png',
              context: context,
              categoryName: 'home',
            )
          ],
        ),
      ),
    );
  }
}

Widget categoryField({
  required BuildContext context,
  required String categoryName,
  String? icon,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 15),
    child: Column(
      children: [
        Image.asset(
          icon ?? 'assets/icons/category_icons/category.png',
          height: 40,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          categoryName,
          style: Theme.of(context).textTheme.bodySmall,
          overflow: TextOverflow.clip,
        ),
      ],
    ),
  );
}
