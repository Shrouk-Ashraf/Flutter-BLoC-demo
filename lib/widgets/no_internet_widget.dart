import 'package:flutter/material.dart';

class NoInternetWidet extends StatelessWidget {
  const NoInternetWidet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/no_internet.png'),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Can't connect......Check the internet",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff343A40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
