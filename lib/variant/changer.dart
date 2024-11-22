import 'package:flutter/material.dart';
import './container.dart';
import './sliders.dart';

class SizeChanger extends StatelessWidget {
  const SizeChanger({super.key});

  @override
  Widget build(BuildContext context) {
        return const Column(
          children: [
            CustomSlider(),
            SizedBox(height: 20),
            CustomContainer(),
          ],
        );
  }
}