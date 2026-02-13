import 'package:flutter/material.dart';

abstract class Palette {
  abstract final Color background;
  abstract final Color block;
  abstract final Color black;
  abstract final Color button;
  abstract final Color buttonInactive;
  abstract final Color icon;
  abstract final Color text;
  abstract final Color textSecondary;
  abstract final Color error;
  abstract final Color accent;
  abstract final Color hint;
  abstract final Color border;
}

class LightPalette extends Palette {
  @override
  // TODO: implement accent
  Color get accent => .new(0xFF4A77D9);

  @override
  // TODO: implement background
  Color get background => .new(0xFFF9F6EC);

  @override
  // TODO: implement black
  Color get black => .new(0xFFFFFFFF);

  @override
  // TODO: implement block
  Color get block => .new(0xFFFFEFD9);

  @override
  // TODO: implement border
  Color get border => .new(0xFFCBB89F);

  @override
  // TODO: implement button
  Color get button => .new(0xFFFF9C5A);

  @override
  // TODO: implement buttonInactive
  Color get buttonInactive => .new(0xFFCD7B45);

  @override
  // TODO: implement error
  Color get error => .new(0xFFE06355);

  @override
  // TODO: implement hint
  Color get hint => .new(0xFFB1A79C);

  @override
  // TODO: implement icon
  Color get icon => .new(0xFF23201C);

  @override
  // TODO: implement text
  Color get text => .new(0xFF433E36);

  @override
  // TODO: implement textSecondary
  Color get textSecondary => .new(0xFF7A726A);
}

class DarkPalette extends Palette {
  @override
  // TODO: implement accent
  Color get accent => .new(0xFF7193F0);

  @override
  // TODO: implement background
  Color get background => .new(0xFF121318);

  @override
  // TODO: implement black
  Color get black => .new(0xFFFFFFFF);

  @override
  // TODO: implement block
  Color get block => .new(0xFF2A2E38);

  @override
  // TODO: implement border
  Color get border => .new(0xFF3A3F4C);

  @override
  // TODO: implement button
  Color get button => .new(0xFFDE7C3E);

  @override
  // TODO: implement buttonInactive
  Color get buttonInactive => .new(0xFFA55C2E);

  @override
  // TODO: implement error
  Color get error => .new(0xFFF27872);

  @override
  // TODO: implement hint
  Color get hint => .new(0xFF7E8491);

  @override
  // TODO: implement icon
  Color get icon => .new(0xFFF6F7FB);

  @override
  // TODO: implement text
  Color get text => .new(0xFFC8CDDE);

  @override
  // TODO: implement textSecondary
  Color get textSecondary => .new(0xFFB4BAC6);
}
