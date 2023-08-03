import 'package:book_store/utils/utils.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final dimension = Utils.getDimensions(context, true);
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [],
      ),
    ));
  }
}
