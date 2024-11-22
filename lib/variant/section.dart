
import 'package:flutter/material.dart';

class SliderSection extends StatelessWidget {
  final String label;
  final double value;
  final Function(double) onChanged;

  const SliderSection({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("$label: "),
            Text(
             "${value.round()}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Slider(
          value: value,
          min: 0,
          max: 300,
          onChanged: onChanged,
        ),
      ],
    );
  }
}