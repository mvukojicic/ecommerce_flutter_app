import 'package:ecommerce_app/services/auth_service.dart';
import 'package:ecommerce_app/services/locator.dart';
import 'package:ecommerce_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [CommerceColors.gradientStart, CommerceColors.gradientEnd],
            begin: Alignment.bottomCenter,
            end: AlignmentDirectional.topCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15, right: 10),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: CommerceColors.gradientEnd,
                    spreadRadius: 1,
                    blurRadius: 10,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              width: MediaQuery.of(context).size.width / 1.3,
              height: 60,
              child: InkWell(
                onTap: () {
                  getIt<AuthService>().handleGoogleSignIn();
                },
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/google-icon.svg',
                      fit: BoxFit.fitHeight,
                      height: 40,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      'Sign in with Google',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
