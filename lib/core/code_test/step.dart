// import 'package:flutter/material.dart';
// import 'package:food_order_app/core/theme/colors/theme_color.dart';
// import 'package:food_order_app/core/theme/text/app_text_theme.dart';
// import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_01.dart';
// import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_02.dart';
// import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_03.dart';
// import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_04.dart';
// import 'package:food_order_app/features/auth/register/presentation/pages/steps/step_05.dart';
// import 'package:food_order_app/features/auth/register/presentation/widgets/steps_acount/steps.dart';
// import 'package:go_router/go_router.dart';

// class RegisterStepsScreen extends StatefulWidget {
//   const RegisterStepsScreen({super.key});

//   @override
//   State<RegisterStepsScreen> createState() => _RegisterStepsScreenState();
// }

// class _RegisterStepsScreenState extends State<RegisterStepsScreen> {
//   int currentStep = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Steps(
//                       step: '1',
//                       isActive: currentStep == 1,
//                       onTap: () => _onStepTapped(1),
//                     ),
//                     const SizedBox(width: 8),
//                     Steps(
//                       step: '2',
//                       isActive: currentStep == 2,
//                       onTap: () => _onStepTapped(2),
//                     ),
//                     const SizedBox(width: 8),
//                     Steps(
//                       step: '3',
//                       isActive: currentStep == 3,
//                       onTap: () => _onStepTapped(3),
//                     ),
//                     const SizedBox(width: 8),
//                     Steps(
//                       step: '4',
//                       isActive: currentStep == 4,
//                       onTap: () => _onStepTapped(4),
//                     ),
//                     const SizedBox(width: 8),
//                     Steps(
//                       step: '5',
//                       isActive: currentStep == 5,
//                       onTap: () => _onStepTapped(5),
//                     ),
//                   ],
//                 ),
//                 InkWell(
//                   onTap: () {
//                     context.goNamed('login');
//                   },
//                   child: Text(
//                     'Skip',
//                     style: context.bodyLarge500Style?.copyWith(
//                       color: ThemeColor.red,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             const SizedBox(height: 24),
//             Expanded(
//               child: _buildStepContent(currentStep),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildStepContent(int step) {
//     switch (step) {
//       case 1:
//         return const Step01();
//       case 2:
//         return const Step02();
//       case 3:
//         return const Step03();
//       case 4:
//         return const Step04();
//       case 5:
//         return const Step05();
//       default:
//         return const Center(child: Text('Invalid Step'));
//     }
//   }

//   // Hàm để chuyển sang bước tương ứng khi người dùng nhấn vào số bước
//   void _onStepTapped(int step) {
//     setState(() {
//       currentStep = step;
//     });
//   }
// }
