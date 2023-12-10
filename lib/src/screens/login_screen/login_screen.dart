import 'package:codepur_app/gen/assets.gen.dart';
import 'package:codepur_app/src/constants/theme.dart';
import 'package:codepur_app/src/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String name = '';
  final _formkey = GlobalKey<FormState>();
  bool changebutton = false;
  mobeToHome(BuildContext context) async {
    setState(() {
      changebutton = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    if (_formkey.currentState!.validate()) {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    }
    setState(() {
      changebutton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formkey,
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
                  'Welcome $name',
                  style: AppTheme.textTheme.title1,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) =>
                      value!.isEmpty ? 'password cannot be empty' : null,
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  controller: usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'password cannot be empty';
                    } else if (value.length < 6) {
                      return 'password should be atleast 6digit';
                    }
                    return null;
                  },
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () => mobeToHome(context),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 20),
                    height: 60,
                    width: changebutton ? 100 : 200,
                    decoration: BoxDecoration(
                      shape:
                          changebutton ? BoxShape.circle : BoxShape.rectangle,
                      color: Colors.deepPurple,
                    ),
                    child: Center(
                      child: changebutton
                          ? const Icon(
                              Icons.check,
                              color: Colors.white,
                            )
                          : Text(
                              'Login',
                              style: AppTheme.textTheme.title2,
                            ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
