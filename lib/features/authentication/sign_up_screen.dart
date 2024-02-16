import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:titok_clone/constants/gaps.dart';
import 'package:titok_clone/constants/sizes.dart';
import 'package:titok_clone/features/authentication/username_screen.dart';
import 'package:titok_clone/features/authentication/login_screen.dart';
import 'package:titok_clone/features/authentication/widgets/auth_button.dart';
import 'package:titok_clone/utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  void _onLoginTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LogInScreen(),
      ),
    );
  }

  void _onEmailTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const UsernameScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.size40,
              ),
              child: Column(
                children: [
                  Gaps.v80,
                  const Text(
                    'Sign up for TikTok',
                    style: TextStyle(
                      fontSize: Sizes.size28,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Gaps.v20,
                  const Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Create a profile, follow other accounts, make your own videos, and more.',
                      style: TextStyle(
                        fontSize: Sizes.size16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Gaps.v40,
                  if (orientation == Orientation.portrait) ...[
                    GestureDetector(
                      onTap: () => _onEmailTap(context),
                      child: const AuthButton(
                        icon: Icon(
                          CupertinoIcons.person,
                        ),
                        text: 'Use Email & Password',
                      ),
                    ),
                    Gaps.v14,
                    const AuthButton(
                      icon: Icon(
                        CupertinoIcons.tv,
                      ),
                      text: 'Continue with Apple',
                    ),
                  ],
                  if (orientation == Orientation.landscape)
                    Row(
                      children: [
                        //Row 안에 있으면 FractionallSizedBox 가 되기 때문에 Expanded로 감싸줘야함.
                        Expanded(
                          child: GestureDetector(
                            onTap: () => _onEmailTap(context),
                            child: const AuthButton(
                              icon: Icon(
                                CupertinoIcons.person,
                              ),
                              text: 'Use Email & Password',
                            ),
                          ),
                        ),
                        Gaps.h14,
                        const Expanded(
                          child: AuthButton(
                            icon: Icon(
                              CupertinoIcons.tv,
                            ),
                            text: 'Continue with Apple',
                          ),
                        ),
                      ],
                    )
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: isDarkMode(context)
                ? Colors.grey.shade900
                : Colors.grey.shade50,
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: Sizes.size20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                  ),
                  Gaps.h10,
                  GestureDetector(
                    onTap: () => _onLoginTap(context),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
