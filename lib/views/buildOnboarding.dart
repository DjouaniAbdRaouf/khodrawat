// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildOnboarding extends StatelessWidget {
  const BuildOnboarding(
      {Key? key,
      required this.color,
      required this.path,
      required this.title,
      required this.subtitle})
      : super(key: key);

  final Color color;
  final String path, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              path,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.teal.shade700,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  subtitle,
                  style: TextStyle(
                      color: Colors.teal.shade700,
                      fontSize: 22,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }
}
