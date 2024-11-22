import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './size_state.dart';
import './section.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SizeState>(context);
    return Column(children: [
      SliderSection(
        label: "Width",
        value: provider.width,
        onChanged: provider.setWidth,
      ),
      SliderSection(
        label: "Height",
        value: provider.height,
        onChanged: provider.setHeight,
      ),
      SliderSection(
        label: "Radius",
        value: provider.topright,
        onChanged: provider.setTopRight,
      ),
    ]);
  }
}
