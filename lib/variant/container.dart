import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './size_state.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SizeState>(context);
        return Container(
          width: provider.width,
          height: provider.height,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(provider.topright),
            ),
          ),
        );
  }
}