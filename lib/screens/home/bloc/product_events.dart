import 'package:equatable/equatable.dart';
import 'package:openapi/ecommerce_api.dart';

abstract class ProductEvent extends Equatable {
  @override
  List<Product> get props => [];
}

class GetAllProducts extends ProductEvent {}
