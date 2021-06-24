import 'package:flutter/material.dart';
import 'package:instaprep/constants/app_constants.dart';

class ScreenNotFound extends StatelessWidget {
  const ScreenNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppConstants.NOT_FOUND_MESSAGE,
          style: TextStyle(
            color: Colors.red,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
