import 'package:flutter/material.dart';

import '../utils/icon_paths.dart';
import '../utils/titles.dart';
import 'icon_column.dart';

class EditIconContainer extends StatelessWidget {
  const EditIconContainer({super.key});

  final List<Map<String, String>> iconData = const [
    {'icon': IconPaths.style, 'title': Titles.aIStyle},
    {'icon': IconPaths.makeup, 'title': Titles.makeUp},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(100, 32, 100, 64),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: iconData
            .map((data) => IconColumn(iconPath: data['icon']!, title: data['title']!))
            .toList(),
      ),
    );
  }
}
