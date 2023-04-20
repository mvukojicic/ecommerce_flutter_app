import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/screens/home/bloc/product_events.dart';
import 'package:ecommerce_app/screens/home/bloc/product_state.dart';
import 'package:ecommerce_app/services/locator.dart';
import 'package:ecommerce_app/services/rest_api.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(const ProductState()) {
    on<GetAllProducts>(_getAllProducts);
  }

  Future<void> _getAllProducts(
    GetAllProducts event,
    Emitter<ProductState> emit,
  ) async {
    try {
      if (state.status == ProductStatus.initial) {
        final productList =
            await getIt<RestApi>().api().getProductsApi().apiProductsGet();
        emit(
          state.copyWith(
            allProducts: [...productList.data?.asList() ?? []],
            status: ProductStatus.success,
          ),
        );
      }
    } catch (e) {
      emit(state.copyWith(status: ProductStatus.failure));
    }
  }
}
