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
          backgroundColor: Colors.lightBlue,
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.edit,
          color: Colors.white,
        ),
        label: const Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
