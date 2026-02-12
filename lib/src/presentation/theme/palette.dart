import 'package:flutter/material.dart';

abstract class Palette {
  abstract final Color background;
  abstract final Color block;
  abstract final Color black;
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

class DarkPalette extends Palette {
  @override
  Color get accent => .new(0xFF7193F0);

  @override
  Color get background => .new(0xFF121318);

  @override
  Color get black => .new(0xFF000000);

  @override
  Color get block => .new(0xFF2A2E38);

  @override
  Color get border => .new(0xFF3A3F4C);

  @override
  Color get button => .new(0xFFDE7C3E);

  @override
  Color get buttonInactive => .new(0xFFCD7B45);

  @override
  Color get error => .new(0xFFF27872);

  @override
  Color get hint => .new(0xFF7E8491);

  @override
  Color get icon => .new(0xFFF6F7FB);

  @override
  Color get text => .new(0xFFC8CDDE);

  @override
  Color get textSecondary => .new(0xFFB4BAC6);
}