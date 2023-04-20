import 'package:equatable/equatable.dart';
import 'package:openapi/ecommerce_api.dart';

enum ProductStatus { initial, success, failure }

class ProductState extends Equatable {
  const ProductState({
    this.allProducts = const <Product>[],
    this.status = ProductStatus.initial,
  });

  final List<Product> allProducts;
  final ProductStatus status;

  ProductState copyWith({
    ProductStatus? status,
    List<Product>? allProducts,
  }) {
    return ProductState(
      status: status ?? this.status,
      allProducts: allProducts ?? this.allProducts,
    );
  }

  @override
  List<Object> get props => [allProducts, status];
}
