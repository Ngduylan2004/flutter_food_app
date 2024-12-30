import 'package:flutter/material.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/detail/presentation/widgets/share_widget/item_shocial_share.dart';

class SocialShare extends StatelessWidget {
  const SocialShare({super.key});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.sizeOf(context).width;
    // final widthItem = (width - (30 * 3)) / 4; // Điều chỉnh khoảng cách hợp lý

    return Container(
      width: double.infinity,
      height: 306,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Share',
                style: context.heading5Style,
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.3,
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Wrap(
                runSpacing: 20,
                spacing: 20,
                children: [
                  ItemSocialShare(
                    title: 'WhatsApp',
                    image: 'assets/image/icons/phone.png',
                    onTap: () {},
                  ),
                  ItemSocialShare(
                    title: 'Instagram',
                    image: 'assets/image/icons/insta.png',
                    onTap: () {},
                  ),
                  ItemSocialShare(
                    title: 'Messenger',
                    image: 'assets/image/icons/mess.png',
                    onTap: () {},
                  ),
                  ItemSocialShare(
                    title: 'Telegram',
                    image: 'assets/image/icons/tele.png',
                    onTap: () {},
                  ),
                  ItemSocialShare(
                    title: 'Twitter',
                    image: 'assets/image/icons/x.png',
                    onTap: () {},
                  ),
                  ItemSocialShare(
                    title: 'More',
                    image: 'assets/image/icons/more.png',
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
