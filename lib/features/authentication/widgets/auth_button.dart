import 'package:flutter/material.dart';
import 'package:titok_clone/constants/sizes.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Icon icon;

  const AuthButton({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      // 부모의 크기 비례해서 Box의 사이즈가 정해짐.
      widthFactor: 1,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size16,
        ),
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.grey.shade200,
          width: Sizes.size1,
        )),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: Sizes.size10,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: icon,
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: Sizes.size16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
