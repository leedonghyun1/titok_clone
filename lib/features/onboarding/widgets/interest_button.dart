import 'package:flutter/material.dart';
import 'package:titok_clone/constants/sizes.dart';

// selected 된 정보를 넘기려면 login_form_screen에서 정보 넘기는 방법 참고.

class interestButton extends StatefulWidget {
  const interestButton({
    super.key,
    required this.interest,
  });

  final String interest;

  @override
  State<interestButton> createState() => _interestButtonState();
}

class _interestButtonState extends State<interestButton> {
  bool _isSelected = false;

  void _onTap() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 300,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size12,
          horizontal: Sizes.size12,
        ),
        decoration: BoxDecoration(
            color: _isSelected
                ? Theme.of(context).primaryColor.withOpacity(0.9)
                : Colors.white,
            border: Border.all(
              color: Colors.black.withOpacity(
                0.01,
              ),
            ),
            borderRadius: BorderRadius.circular(
              Sizes.size32,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 5,
                spreadRadius: 5,
              )
            ]),
        child: Text(
          widget.interest,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: _isSelected ? Colors.white : Colors.grey.shade800,
          ),
        ),
      ),
    );
  }
}
