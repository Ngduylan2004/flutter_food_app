part of 'grocery_bloc.dart';

class GroceryState {
  final List<Map<String, String>> listGrocery;
  final bool isLoading;

  GroceryState({required this.listGrocery, this.isLoading = false});
}
