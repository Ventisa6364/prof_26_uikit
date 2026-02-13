import 'package:flutter/material.dart';

abstract class Palette {
  abstract final Color background;
  abstract final Color black;
  abstract final Color block;
  abstract final Color border;
  abstract final Color button;
  abstract final Color buttonInactive;
  abstract final Color icon;
  abstract final Color text;
  abstract final Color textSecondary;
  abstract final Color hint;
  abstract final Color accent;
  abstract final Color error;
}

class LightPalette extends Palette {
  @override
  // TODO: implement accent
  Color get accent => .new(0x4A77D9);

  @override
  // TODO: implement background
  Color get background => .new(0xF9F6EC);

  @override
  // TODO: implement black
  Color get black => .new(0xF9F6EC);

  @override
  // TODO: implement block
  Color get block => .new(0xF9F6EC);

  @override
  // TODO: implement border
  Color get border => .new(0xCBB89F);

  @override
  // TODO: implement button
  Color get button => .new(0xFF9C5A);

  @override
  // TODO: implement buttonInactive
  Color get buttonInactive => .new(0xCD7B45);

  @override
  // TODO: implement error
  Color get error => .new(0xE06355);

  @override
  // TODO: implement hint
  Color get hint => .new(0xB1A79C);

  @override
  // TODO: implement icon
  Color get icon => .new(0x23201C);

  @override
  // TODO: implement text
  Color get text => .new(0x433E36);

  @override
  // TODO: implement textSecondary
  Color get textSecondary => .new(0x7A726A);
}

class DarkPalette extends Palette {
  @override
  // TODO: implement accent
  Color get accent => .new(0x7193F0);

  @override
  // TODO: implement background
  Color get background => .new(0x121318);

  @override
  // TODO: implement black
  Color get black => .new(0x000000);

  @override
  // TODO: implement block
  Color get block => .new(0x2A2E38);

  @override
  // TODO: implement border
  Color get border => .new(0x3A3F4C);

  @override
  // TODO: implement button
  Color get button => .new(0xDE7C3E);

  @override
  // TODO: implement buttonInactive
  Color get buttonInactive => .new(0xA55C2E);

  @override
  // TODO: implement error
  Color get error => .new(0xF27872);

  @override
  // TODO: implement hint
  Color get hint => .new(0x7E8491);

  @override
  // TODO: implement icon
  Color get icon => .new(0xF6F7FB);

  @override
  // TODO: implement text
  Color get text => .new(0xC8CDDE);

  @override
  // TODO: implement textSecondary
  Color get textSecondary => .new(0xB4BAC6);
}
