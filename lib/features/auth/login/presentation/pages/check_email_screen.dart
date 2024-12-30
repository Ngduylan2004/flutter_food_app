import 'package:flutter/material.dart';
import 'package:food_order_app/core/component/button/app_solid_button.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 120.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Check Your Email', style: context.heading4Style),
              const SizedBox(height: 10),
              Text('We’ve sent the code to your email',
                  style: context.bodyLarge500Style),
              const SizedBox(height: 70),
              PinCodeTextField(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                length: 4, // Số lượng ký tự OTP
                onChanged: (value) {
                  // Xử lý khi giá trị thay đổi
                },
                appContext:
                    context, //                textStyle: context.bodyLarge500Style, // Định dạng kiểu chữ
                keyboardType: TextInputType.number, // Kiểu bàn phím cho số
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  // Sử dụng hình tròn cho ô nhập liệu
                  borderRadius: BorderRadius.circular(70), // Bo góc mạnh mẽ
                  borderWidth: 1, // Độ rộng của viền ô

                  activeColor: ThemeColor.primary, // Màu của ô khi được chọn
                  inactiveColor:
                      ThemeColor.lightGray, // Màu của ô khi chưa được chọn
                  activeFillColor:
                      ThemeColor.primary, // Màu nền của ô khi được chọn
                  inactiveFillColor: ThemeColor.lightGray,
                  fieldHeight: 72, // Chiều cao của ô nhập liệu
                  fieldWidth: 65, // Chiều rộng của ô nhập liệu
                ),
              ),
              const SizedBox(height: 24),
              AppSolidButton(
                width: double.infinity,
                height: 52,
                text: 'Next',
                onPressed: () {
                  context.goNamed('reset-password');
                },
              ),
              const SizedBox(height: 24),
              Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'Code expires in:  ',
                      style: context.bodyRegular500Style),
                  TextSpan(
                    text: '02:03',
                    style: context.bodyRegular500Style?.copyWith(
                      color: ThemeColor.red,
                    ),
                  )
                ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
