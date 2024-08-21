import 'package:flutter/cupertino.dart';

import '../utils/fonts.dart';
import '../utils/images.dart';
import '../utils/titles.dart';

class EditMainContainer extends StatelessWidget {
  const EditMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            Images.editMain,
            fit: BoxFit.cover, // Use BoxFit.cover for full coverage
          ),
        ),
        Center(
          child: Text(
            Titles.inputUser,
            semanticsLabel: Fonts.font2,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
