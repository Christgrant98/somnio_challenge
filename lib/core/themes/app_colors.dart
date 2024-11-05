import 'package:flutter/material.dart';

class AppColors {
  Color appBlack = Colors.black;
  Color white = Colors.white;
  Color transparent = Colors.transparent;
  List<Color> gradientApp = [
    const Color(0xFF180222),
    const Color(0xFF180222),
    const Color(0xFF180222),
    const Color(0xFF180222),
    const Color(0xFF390651),
    const Color(0xFF862075),
    const Color(0xFFCF3897),
  ];

  final AppPrimary appPrimary = AppPrimary();
  final AppSecondary appSecondary = AppSecondary();
  final AppOrange appOrange = AppOrange();
  final AppGreen appGreen = AppGreen();
  final AppYellow appYellow = AppYellow();
  final AppBlue appBlue = AppBlue();
  final AppPink appPink = AppPink();
  final AppSuccess appSuccess = AppSuccess();
  final AppError appError = AppError();
  final AppWarning appWarning = AppWarning();
  final AppNeutralSolid appNeutralSolid = AppNeutralSolid();
  final AppNeutralAlpha appNeutralAlpha = AppNeutralAlpha();
  final AppBackground appBackground = AppBackground();
  final AppBorder appBorder = AppBorder();
  final AppTextAndIcon appTextAndIcon = AppTextAndIcon();
}

class AppPrimary {
  final Color color100 = const Color(0xFFF2DAFD);
  final Color color200 = const Color(0xFFE6BAFB);
  final Color color300 = const Color(0xFFD890FA);
  final Color color400 = const Color(0xFFCD72F6);
  final Color color500 = const Color(0xFFCF3897);
  final Color color600 = const Color(0xFF7D28A5);
  final Color color700 = const Color(0xFF591F74);
  final Color color800 = const Color(0xFF3E1751);
  final Color color900 = const Color(0xFF180222);
}

class AppSecondary {
  final Color color100 = const Color(0xFFD9EEFF);
  final Color color200 = const Color(0xFFA6D8FF);
  final Color color300 = const Color(0xFF64BBFF);
  final Color color400 = const Color(0xFF2E9EF6);
  final Color color500 = const Color(0xFF0588F0);
  final Color color600 = const Color(0xFF0878D1);
  final Color color700 = const Color(0xFF05497E);
  final Color color800 = const Color(0xFF072D4B);
  final Color color900 = const Color(0xFF001525);
}

class AppBlue {
  final Color color100 = const Color(0xFFADCFFA);
  final Color color200 = const Color(0xFF74A9F7);
  final Color color300 = const Color(0xFF4F91F5);
  final Color color400 = const Color(0xFF357DF3);
  final Color color500 = const Color(0xFF0F65F1);
  final Color color600 = const Color(0xFF0D5AE0);
  final Color color700 = const Color(0xFF0A4EBE);
  final Color color800 = const Color(0xFF08419D);
  final Color color900 = const Color(0xFF052D6C);
}

class AppOrange {
  final Color color100 = const Color(0xFFFFD1B4);
  final Color color200 = const Color(0xFFFFB280);
  final Color color300 = const Color(0xFFFF9550);
  final Color color400 = const Color(0xFFFF7B24);
  final Color color500 = const Color(0xFFEF5F00);
  final Color color600 = const Color(0xFFCE5200);
}

class AppGreen {
  final Color color100 = const Color(0xFFDEFFF0);
  final Color color200 = const Color(0xFFB4FFDC);
  final Color color300 = const Color(0xFF77FFBF);
  final Color color400 = const Color(0xFF46CE8E);
  final Color color500 = const Color(0xFF2B9A66);
  final Color color600 = const Color(0xFF145838);
}

class AppYellow {
  final Color color100 = const Color(0xFFFFE9AF);
  final Color color200 = const Color(0xFFFFDD8D);
  final Color color300 = const Color(0xFFFFD471);
  final Color color400 = const Color(0xFFFFC641);
  final Color color500 = const Color(0xFFFFBA18);
  final Color color600 = const Color(0xFFEAA400);
}

class AppPink {
  final Color color100 = const Color(0xFFF5CDE6);
  final Color color200 = const Color(0xFFF5CDE6);
  final Color color300 = const Color(0xFFE390C4);
  final Color color400 = const Color(0xFFCE6BA9);
  final Color color500 = const Color(0xFFCF3897);
  final Color color600 = const Color(0xFFAD016D);
}

class AppSuccess {
  final Color color100 = const Color(0xFFD1F0E1);
  final Color color200 = const Color(0xFFA2E1C3);
  final Color color300 = const Color(0xFF74D3A5);
  final Color color400 = const Color(0xFF45C487);
  final Color color500 = const Color(0xFF17B569);
  final Color color600 = const Color(0xFF129154);
  final Color color700 = const Color(0xFF0E6D3F);
  final Color color800 = const Color(0xFF09482A);
  final Color color900 = const Color(0xFF052415);
}

class AppError {
  final Color color100 = const Color(0xFFFFEEEF);
  final Color color200 = const Color(0xFFEDA6A9);
  final Color color300 = const Color(0xFFE5797F);
  final Color color400 = const Color(0xFFDC4D54);
  final Color color500 = const Color(0xFFD32029);
  final Color color600 = const Color(0xFFA91A21);
  final Color color700 = const Color(0xFF7F1319);
  final Color color800 = const Color(0xFF540D10);
  final Color color900 = const Color(0xFF2A0608);
}

class AppWarning {
  final Color color100 = const Color(0xFFFDF1D9);
  final Color color200 = const Color(0xFFFBE2B3);
  final Color color300 = const Color(0xFFF8D48C);
  final Color color400 = const Color(0xFFF6C566);
  final Color color500 = const Color(0xFFF4B740);
  final Color color600 = const Color(0xFFC39233);
  final Color color700 = const Color(0xFF926E26);
  final Color color800 = const Color(0xFF62491A);
  final Color color900 = const Color(0xFF31250D);
}

class AppNeutralSolid {
  final Color color0 = const Color(0xFFF8FAFB);
  final Color color25 = const Color(0xFFF6F8FA);
  final Color color50 = const Color(0xFFECEFF3);
  final Color color100 = const Color(0xFFDFE1E7);
  final Color color200 = const Color(0xFFC1C7D0);
  final Color color300 = const Color(0xFFA4ACB9);
  final Color color400 = const Color(0xFF818898);
  final Color color500 = const Color(0xFF666D80);
  final Color color600 = const Color(0xFF36394A);
  final Color color700 = const Color(0xFF272835);
  final Color color800 = const Color(0xFF1A1B25);
  final Color color000 = const Color(0xFF0D0D12);
}

class AppNeutralAlpha {
  final Color color0 = const Color(0xFF165879);
  final Color color25 = const Color(0xFF1D4F81);
  final Color color50 = const Color(0xFF113668);
  final Color color100 = const Color(0xFF091948);
  final Color color200 = const Color(0xFF072045);
  final Color color300 = const Color(0xFF02173B);
  final Color color400 = const Color(0xFF031030);
  final Color color500 = const Color(0xFF000C29);
  final Color color600 = const Color(0xFF010419);
  final Color color700 = const Color(0xFF010213);
  final Color color800 = const Color(0xFF01020E);
  final Color color000 = const Color(0xFF0D0D12);
}

class AppBackground {
  final Color disable = const Color(0xFFEBEBEC);
  final Color normal = const Color(0xFFF6F8FA);
  final Color hover = const Color(0xFFECEFF3);
  final Color pressed = const Color(0xFFDFE1E7);
  final Color loud = const Color(0xFF0D0D12);
}

class AppBorder {
  final Color disable = const Color(0xFFF6F8FA);
  final Color normal = const Color(0xFFECEFF3);
  final Color hover = const Color(0xFFDFE1E7);
  final Color pressed = const Color(0xFFC1C7D0);
}

class AppTextAndIcon {
  final Color disable = const Color(0xFFA4ACB9);
  final Color subdued = const Color(0xFF818898);
  final Color normal = const Color(0xFF666D80);
  final Color muted = const Color(0xFF36394A);
  final Color loud = const Color(0xFF0D0D12);
}
