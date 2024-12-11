abstract class GetProductsState {}
class GetProductsinitial extends GetProductsState{}
class GetProductsLoading extends GetProductsState {}

class GetProductSuccess extends GetProductsState {}

class GetProductsFailure extends GetProductsState {
  final String errMessage;

  GetProductsFailure(this.errMessage);
}
