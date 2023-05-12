import 'package:flutter/material.dart';

import 'package:matrix/matrix.dart';

import '../util/colors.dart';

class Avatar extends StatelessWidget {
  final String url;
  final String? name;
  final double size;
  final void Function()? onTap;
  static const double defaultSize = 44;
  final Client? client;
  final double fontSize;

  const Avatar({
    required this.url,
    this.name,
    this.size = defaultSize,
    this.onTap,
    this.client,
    this.fontSize = 30,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fallbackLetters = '@';
    final name = this.name;
    if (name != null) {
      if (name.runes.length >= 2) {
        fallbackLetters = String.fromCharCodes(name.toUpperCase().runes, 0, 1);
      } else if (name.runes.length == 1) {
        fallbackLetters = name;
      }
    }
    final noPic = url.isEmpty || url == 'null';
    final textWidget = Center(
      child: Text(
        fallbackLetters,
        style: TextStyle(
          color: noPic ? Colors.white : null,
          fontSize: fontSize,
        ),
      ),
    );
    final borderRadius = BorderRadius.circular(size);
    final container = ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        width: size,
        height: size,
        color: noPic
            ? AppColors.avatarColors[name!.codeUnits[0] % 7]
            : Theme.of(context).secondaryHeaderColor,
        child: noPic ? textWidget : Image.network(url),
      ),
    );
    if (onTap == null) return container;
    return InkWell(
      onTap: onTap,
      borderRadius: borderRadius,
      child: container,
    );
  }
}
