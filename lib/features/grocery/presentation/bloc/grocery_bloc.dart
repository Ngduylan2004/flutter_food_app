import 'package:flutter_bloc/flutter_bloc.dart';

part 'grocery_event.dart';
part 'grocery_state.dart';

class GroceryBloc extends Bloc<GroceryEvent, GroceryState> {
  final listGrocery = List<Map<String, String>>.generate(
    30,
    (index) => {
      'name': 'Yangnyeom Chicken',
      'content': 'Chicken',
      'image': 'assets/image/food/banner_home.png',
    },
  );

  final List<Map<String, String>> displayItems = []; // Dữ liệu đã tải
  final int itemTotal = 10; // Tổng số item cần tải

  GroceryBloc()
      : super(GroceryState(
          listGrocery: [],
        )) {
    // Lấy dữ liệu ban đầu
    on<GroceryGetData>((event, emit) async {
      await Future.delayed(const Duration(seconds: 2)); // Giả lập delay

      displayItems.addAll(listGrocery.sublist(0, itemTotal));
      emit(GroceryState(listGrocery: List.from(displayItems)));
      print('displayItems1: ${displayItems.length}');
    });

    // Tải thêm dữ liệu
    on<GroceryGetMoreData>((event, emit) async {
      if (state.isLoading || displayItems.length >= listGrocery.length) return;
      emit(GroceryState(
          listGrocery: state.listGrocery,
          isLoading:
              true)); // tại s khi delete thằng emit này thì bên view k render loading

      await Future.delayed(const Duration(seconds: 2)); // Giả lập delay

      final remainingItems = listGrocery.length - displayItems.length;
      final itemsToLoad =
          remainingItems >= itemTotal ? itemTotal : remainingItems;

      // Thêm dữ liệu vào list đã tải
      displayItems.addAll(
        listGrocery.sublist(
          displayItems.length,
          displayItems.length + itemsToLoad,
        ),
      );
      print('displayItems2: ${displayItems.length}');
      emit(GroceryState(listGrocery: displayItems, isLoading: false));
    });
  }
}
