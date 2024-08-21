import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconColumn extends StatelessWidget {
  final String iconPath;
  final String title;

  const IconColumn({
    Key? key,
    required this.iconPath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: const Color(0xFF323232),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(iconPath),
              style: IconButton.styleFrom(
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.zero,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
