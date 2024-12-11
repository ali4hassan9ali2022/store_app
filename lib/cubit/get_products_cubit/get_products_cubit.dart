import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/cubit/get_products_cubit/get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState>  {
  GetProductsCubit() : super (GetProductsinitial());
}