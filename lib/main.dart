import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/grocery/presentation/bloc/grocery_bloc.dart';
import 'package:food_order_app/router/app_router.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => GroceryBloc()..add(GroceryGetData()),
        ),
      ],
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus
              ?.unfocus(); // tắt bàn phím cho toàn bộ màn hình
        },
        child: MaterialApp.router(
          routerConfig: app_router,
          theme: ThemeData(
            scaffoldBackgroundColor: ThemeColor.white,
            textTheme: AppTextTheme.textTheme,
          ),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
