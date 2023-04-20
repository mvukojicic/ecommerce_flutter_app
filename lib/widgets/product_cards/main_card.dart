import 'package:ecommerce_app/shared/colors.dart';
import 'package:flutter/material.dart';

class MainProductCard extends StatelessWidget {
  const MainProductCard({
    super.key,
    this.productImage,
    this.productTitle,
    this.productDescription,
    this.productRating,
  });
  final String? productImage;
  final String? productTitle;
  final String? productDescription;
  final num? productRating;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
        top: 24,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(color: CommerceColors.gradientStart.withOpacity(0.3)),
          ],
          color: Colors.white24,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                  productImage ?? 'assets/icons/received.png',
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productTitle ?? 'Title text',
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    productDescription ?? 'Product description',
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Text(productRating.toString()),
                        const SizedBox(
                          width: 3,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
