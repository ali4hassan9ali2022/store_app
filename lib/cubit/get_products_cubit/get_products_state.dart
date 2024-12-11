import 'package:store_app/Models/product_model.dart';

abstract class GetProductsState {}
class GetProductsinitial extends GetProductsState{}
class GetProductsLoading extends GetProductsState {}

class GetProductSuccess extends GetProductsState {
  final List<ProductModel> product;

  GetProductSuccess({required this.product});

}

class GetProductsFailure extends GetProductsState {
  final String errMessage;

  GetProductsFailure(this.errMessage);
}
