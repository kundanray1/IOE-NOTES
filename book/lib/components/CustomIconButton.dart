import 'package:book/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextButton.icon(
        style: TextButton.styleFrom(
            // surfaceTintColor: Colors.amber,
            backgroundColor: Colors.lightBlue,
            side: BorderSide(color: Colors.lightBlue)),
        onPressed: () {},
        icon: const Icon(
          Icons.check,
          color: tdBlack,
        ),
        label: const Text(
          'Edit Profile',
          style: TextStyle(color: tdBlack, fontSize: 18),
        ),
      ),
    );
  }
}
