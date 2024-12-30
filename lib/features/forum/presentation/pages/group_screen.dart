import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/forum/presentation/widgets/groups_widget/all_group_widget.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'All Groups',
              style: context.heading6Style,
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/image/icons/setting-4.svg',
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        const AllGroupWidget(),
      ],
    );
  }
}
