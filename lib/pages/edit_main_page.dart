import 'package:edit_main_screen/widget/custom_app_bar.dart';
import 'package:edit_main_screen/widget/edit_icon_container.dart';
import 'package:edit_main_screen/widget/edit_main_container.dart';
import 'package:flutter/material.dart';

class EditMainPage extends StatefulWidget {
  const EditMainPage({super.key});

  @override
  State<EditMainPage> createState() => _EditMainPageState();
}

class _EditMainPageState extends State<EditMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            Expanded(
              flex: 2, // You can adjust the flex value to control the space distribution
              child: EditMainContainer(),
            ),
            const SizedBox(height: 16), // Optional: Add space between the two sections
            Expanded(
              flex: 0,
              child: EditIconContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
