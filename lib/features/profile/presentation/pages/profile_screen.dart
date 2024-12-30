import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_order_app/core/component/button/app_ouline_button.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/profile/presentation/widgets/my_recipes_widget.dart';
import 'package:food_order_app/features/profile/presentation/widgets/save_chanllenges_widget.dart';
import 'package:food_order_app/features/profile/presentation/widgets/save_recipes_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
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
                'Profile',
                style: context.heading4Style,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: SvgPicture.asset(
                'assets/image/icons/solar_settings-linear.svg',
                width: 32,
                height: 32,
              ),
            ),
          ],
        ),
        toolbarHeight: 140, // Tùy chỉnh chiều cao AppBar nếu cần
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/image/food/Chicken.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DeAndre Walters',
                        style: context.heading5Style,
                      ),
                      Text(
                        'deandrewalters.me@gmail.com',
                        style: context.bodyRegular500Style
                            ?.copyWith(color: ThemeColor.lightBlack),
                      ),
                      const SizedBox(height: 10),
                      AppOulineButton(
                        text: 'Edit Profile',
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              //my profile
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('My Recipes', style: context.heading5Style),
                  Text(
                    'View all',
                    style: context.bodyRegular500Style?.copyWith(
                      color: ThemeColor.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const MyRecipesWidget(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Saved Recipes', style: context.heading5Style),
                  Text(
                    'View all',
                    style: context.bodyRegular500Style?.copyWith(
                      color: ThemeColor.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const SaveRecipesWidget(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Saved Chanllenges', style: context.heading5Style),
                  Text(
                    'View all',
                    style: context.bodyRegular500Style?.copyWith(
                      color: ThemeColor.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const SaveChanllengesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
