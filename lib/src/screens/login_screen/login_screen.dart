import 'package:codepur_app/gen/assets.gen.dart';
import 'package:codepur_app/src/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                Assets.svg.onboarding,
                height: 250,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Welcome',
              style: AppTheme.textTheme.title1,
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Password'),
            )
          ],
        ),
      ),
    );
  }
}
