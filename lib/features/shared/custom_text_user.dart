import 'package:flutter/material.dart';

class CustomTextUser extends StatelessWidget {
  const CustomTextUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          RichText(
            text: const TextSpan(
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: '¡Hola, '),
                  TextSpan(
                      text: 'John Doe', style: TextStyle(color: Colors.red)),
                  TextSpan(text: '!')
                ]),
          )
        ],
      ),
    );
  }
}
