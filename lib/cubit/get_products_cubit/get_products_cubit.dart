import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/Models/product_model.dart';
import 'package:store_app/Services/get_all_products_service.dart';
import 'package:store_app/cubit/get_products_cubit/get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit() : super(GetProductsinitial());
  // late List<ProductModel> product;
  void getProducts() async {
    emit(GetProductsLoading());
    try {
      var product = await GetAllProductsService().getAllProducts();
      emit(GetProductSuccess(product: product));
    } catch (e) {
      emit(GetProductsFailure("Error"));
    }
  }
}
