import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome back 👋',
              style: TextStyle(fontSize: 20),
            ),
            Text('Marcel´s Portfolio',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800))
          ],
        ),
        const Icon(
          Icons.account_circle,
          size: 30,
        )
      ],
    );
  }
}
