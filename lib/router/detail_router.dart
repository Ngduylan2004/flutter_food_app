import 'package:food_order_app/features/detail/presentation/pages/image_detail.screen.dart';
import 'package:food_order_app/features/detail/presentation/pages/repice_detail_screen.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> detail_router = [
  GoRoute(
    path: '/recipe-detail',
    name: 'recipe-detail',
    builder: (context, state) {
      return const RecipeDetailScreen();
    },
    routes: <RouteBase>[
      GoRoute(
        path: '/recipe-detail/image',
        name: 'image-detail',
        builder: (context, state) {
          return const ImageDetailScreen();
        },
      ),
    ],
  ),
];
