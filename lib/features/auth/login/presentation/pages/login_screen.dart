import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_order_app/core/component/button/app_solid_button.dart';
import 'package:food_order_app/core/component/social/social.dart';
import 'package:food_order_app/core/component/textFiled/auth_textFiled.dart';
import 'package:food_order_app/core/theme/colors/theme_color.dart';
// import 'package:food_order_app/core/component/button/app_solid_button.dart';
import 'package:food_order_app/core/theme/text/app_text_theme.dart';
import 'package:food_order_app/features/auth/login/presentation/bloc/login_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_overlay/loading_overlay.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          bool isLoading = state is LoginLoading;
          return LoadingOverlay(
            isLoading: isLoading,
            child: Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 120.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome Back! 😊🤗🤗',
                            style: context.heading4Style),
                        const SizedBox(height: 10),
                        Text('Please enter your account details below!',
                            style: context.bodyLarge500Style),
                        const SizedBox(height: 50),
                        AuthTextFiled(
                          obscureText: false,
                          controller: emailController,
                          label: 'Email',
                          prefixIcon: Icons.email,
                        ),
                        const SizedBox(height: 16),
                        AuthTextFiled(
                          controller: passwordController,
                          label: 'Password',
                          prefixIcon: Icons.lock,
                          obscureText: true,
                        ),
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.centerRight, // Căn phải
                          child: InkWell(
                            onTap: () {
                              context.goNamed('password-recovery');
                            },
                            child: Text(
                              'Forgot Password?',
                              style: context.bodyRegular500Style?.copyWith(
                                  color: ThemeColor.primary,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        BlocListener<LoginBloc, LoginState>(
                          listener: (context, state) {
                            if (state is LoginSuccess ||
                                state is LoginGoogleSuccess) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      backgroundColor: ThemeColor.primary,
                                      content: Text('Đăng nhập thành công')));
                              context.goNamed('dashboard');
                            } else if (state is LoginFailure) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor: ThemeColor.red,
                                      content:
                                          Center(child: Text(state.message))));
                            }
                          },
                          child: const SizedBox(),
                        ),
                        const SizedBox(height: 24),
                        AppSolidButton(
                          width: double.infinity,
                          height: 55,
                          text: 'Login',
                          onPressed: () {
                            context.read<LoginBloc>().add(LoginEmailEvent(
                                email: emailController.text,
                                password: passwordController.text));
                          },
                        ),
                        const SizedBox(height: 24),
                        Center(
                          child: SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Đường kẻ ngang trước text
                                const Expanded(
                                  child: Divider(
                                    color: Colors.black, // Màu đường kẻ
                                    thickness: 0.2, // Độ dày đường kẻ
                                    indent: 20, // Khoảng cách từ trái
                                  ),
                                ),
                                const SizedBox(width: 10),
                                // Text
                                Text(
                                  'Or login in with',
                                  style: context.bodyRegular500Style
                                      ?.copyWith(), // Sử dụng style của bạn tại đây
                                ),
                                const SizedBox(width: 10),
                                // Đường kẻ ngang sau text
                                const Expanded(
                                  child: Divider(
                                    color: Colors.black, // Màu đường kẻ
                                    thickness: 0.2, // Độ dày đường kẻ
                                    endIndent: 20, // Khoảng cách từ phải
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialButton(
                              image: 'assets/image/icons/gg.png',
                              text: 'Google',
                              onPressed: () {
                                context
                                    .read<LoginBloc>()
                                    .add(LoginGoogleEvent());
                              },
                            ),
                            const SizedBox(width: 16),
                            SocialButton(
                              image: 'assets/image/icons/facebook.png',
                              text: 'Facebook',
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 54),
                        Center(
                          child: Text.rich(
                            TextSpan(
                              text:
                                  'Don\'t have account with us? ', // Văn bản không nhấn
                              style: context.bodyLarge500Style
                                  ?.copyWith(color: ThemeColor.lightBlack),
                              children: [
                                TextSpan(
                                  text: 'SignUp', // Văn bản có thể nhấn
                                  style: context.bodyRegular500Style
                                      ?.copyWith(color: ThemeColor.primary),
                                  // Chuyển hướng khi nhấn recognizer có thể nhấn
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      context.go(
                                          '/register'); // Chuyển hướng khi nhấn
                                    },
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
