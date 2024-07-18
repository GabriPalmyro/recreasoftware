

import 'package:recreshow_system/app/commons/design_system/core/tokens/design/borders.dart';
import 'package:recreshow_system/app/commons/design_system/core/tokens/design/colors.dart';
import 'package:recreshow_system/app/commons/design_system/core/tokens/design/font.dart';
import 'package:recreshow_system/app/commons/design_system/core/tokens/design/spacing.dart';

abstract class DSTokens {
  DSTokens({
    required this.colors,
    required this.font,
    required this.spacing,
    required this.borderWidth,
    required this.borders,
  });

  final DSBorder borders;
  final DSThemeColor colors;
  final DSThemeFont font;
  final DSThemeSpacing spacing;
  final DSBorderWidth borderWidth;
}
