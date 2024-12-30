import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/grocery/presentation/bloc/grocery_bloc.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({super.key});

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                'Grocery',
                style: context.heading4Style,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add, color: Colors.green),
                ),
              ),
            ),
          ],
        ),
        toolbarHeight: 140, // Tùy chỉnh chiều cao AppBar nếu cần
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                fillColor: const Color(0xfff5f6f5),
                filled: true, //để đặt màu nền
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 18), //khoảng cách giữa nội dung và viền
                hintText: 'Search anything...',
                hintStyle: context.bodyRegular500Style?.copyWith(
                  color: ThemeColor.lightBlack,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(200),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    'assets/image/icons/akar-icons_search.svg',
                    color: ThemeColor.lightBlack,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    'assets/image/icons/setting-4.svg',
                  ),
                ),
              ),
              style: context.bodyLarge500Style?.copyWith(
                color: ThemeColor.lightBlack,
              ),
              enableInteractiveSelection: true,
            ),
            const SizedBox(height: 24),
            BlocBuilder<GroceryBloc, GroceryState>(
              builder: (context, state) {
                if (state.listGrocery.isEmpty) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state.listGrocery.isNotEmpty) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: state.listGrocery.length + 1,
                      itemBuilder: (context, index) {
                        if (index == state.listGrocery.length) {
                          context.read<GroceryBloc>().add(GroceryGetMoreData());
                          return state.isLoading
                              ? const Center(child: CircularProgressIndicator())
                              : const SizedBox.shrink();
                        }

                        final item = state.listGrocery[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: SizedBox(
                            width: double.infinity,
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 5,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              height: 80,
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      bottomLeft: Radius.circular(12),
                                    ),
                                    child: Image.asset(
                                      item['image']!,
                                      height: 80,
                                      width: 90,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            item['name']!,
                                            style: context.heading5Style,
                                          ),
                                          Text(
                                            item['content']!,
                                            style: context.bodySmall500Style,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
