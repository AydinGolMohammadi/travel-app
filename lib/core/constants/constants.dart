import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const String kToken = '';
const String kStyleMapLight = 'https://tile.openstreetmap.org/{z}/{x}/{y}.png';
const String kStyleMapDark =
    'https://api.mapbox.com/styles/v1/mapbox/navigation-night-v1/tiles/{z}/{x}/{y}?access_token=pk.eyJ1Ijoic2VwaWRlaHRhZGF5b24iLCJhIjoiY2t5dG16Yzh1MGdhdTJ4bzhqa2N5aXhuZCJ9.RF8Hc0pbIBQygcPtSkXVOA';
const String kBaseUrl = 'https://travel-app.iran.liara.run/api/';
const int kConnectTimeout = 50000;
const int kReceiveTimeout = 50000;
const int kMaxDetailsTextLength = 150;
const String kUnknownInputCast = "Unknown Input Cast";

const kColorBody = Color(0xffffffff);
const kColorPrimary = Color(0xff0FA3E2);
const kColorSecondary = Color(0xffED8326);
const kColorNature = Color(0xff5C5D5F);

const kColorBlack = Color(0xff000000);

const kColorDarkBlue = Color(0xff164598);
const kColorUltraLightRed = Color(0xffF0D3D2);
const kColorLightRed = Color(0xffFD4650);
const kColorPink = Color(0xfffc6c74);
const kColorWhite = Color(0xfffFFFFF);
const kColorBackground = Color(0xffF7F7F7);
const kColorGray = Color(0xff707070);
const kColorGray2 = Color(0xff505050);
const kColorGray3 = Color(0xff3D3E3F);
const kColorLightBlack = Color(0xff212121);
const kColorGrayDark = Color(0xff2C2C2C);
const kColorGrayDark1 = Color(0xff2E2E2E);
const kColorBlueDark = Color(0xff313C4A);
const kColorBlueLight = Color(0xff81A3DB);
const kColorBlueUltraLight = Color(0xffd4f4e8);
const kColorGrayDisable = Color(0xffEEEEEE);
const kColorOffWhite = Color(0xffF6F6F8);
const kColorGrayEnabledTextField = Color(0xff777777);
const kColorGrayBorderLight = Color(0xffDFDFDF);
const kColorGrayFillTextField = Color(0xffFAFAFA);
const kColorGrayDisableTextField = Color(0xffF2F2F2);
const kColorGrayDisableText = Color(0xff999999);
const kColorGrayBorderBox = Color(0xffdadada);
const kColorGrayBorder = Color(0xffDCDCDC);
const kColorGrayShadow = Color(0xff80f0f0f0);
const kColorbronze = Color(0xffb76d4b);
const kColorGrayUltraLight = Color(0xffE5E5E5);
const kColorGolden = Color(0xffED9E26);
const kColorGoldenDark = Color(0xffC87912);
const kColorOrange = Color(0xffFBA852);
const kColorOrangeDark = Color(0xffEA7225);
const kColorOrangeDark2 = Color(0xffcc4e00);
const kColorOrangeDark1 = Color(0xffe69419);
const kColorOrangeLight = Color(0xffF8951D);
const kColorOrangeLight1 = Color(0x5ce3be92);
const kColorPurple = Color(0xff666CDC);
const kColorPurpleLight = Color(0xffe1d4f7);
const kColorPurpleDark = Color(0xff5c04e6);
const kColorGreenLight = Color(0xff92e3a9);
const kColorGreenDark = Color(0xff094309);
const kColorGreenLight1 = Color(0xff62b275);
const kColorError = Color(0xffE40521);
const kColorBlueDark1 = Color(0xff1c9599);
const kColorSuccess = Color(0xff169842);
const String faPrimaryFontFamily = 'poppins';

const BoxShadow kBoxShadow = BoxShadow(
  color: kColorGrayBorderBox,
  offset: Offset(0, 3),
  blurRadius: 3,
  spreadRadius: 1,
);

const kTextStyleBold = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontFamily: 'poppins',
  fontWeight: FontWeight.bold,
);
const kTextStyleLight = TextStyle(
  color: kColorGrayEnabledTextField,
  fontSize: 16,
  fontFamily: 'poppins',
  fontWeight: FontWeight.w400,
);
const kTextStyleDialog = TextStyle(
  color: Color(0xff2c2c2c),
  fontFamily: 'poppins',
  fontWeight: FontWeight.w500,
);
const kTextStyleTitle = TextStyle(
  color: kColorDarkBlue,
  fontSize: 18,
  fontFamily: 'poppins',
  fontWeight: FontWeight.bold,
);
const kTextStyleHeadline = TextStyle(
  color: kColorGrayDark,
  fontSize: 16,
  fontFamily: 'poppins',
  fontWeight: FontWeight.bold,
);
const kTextStyleBody = TextStyle(
  color: kColorGrayEnabledTextField,
  fontSize: 14,
  fontFamily: 'poppins',
  fontWeight: FontWeight.w400,
);
const kTextStyle14Bold = TextStyle(
  color: kColorGray3,
  fontSize: 14,
  fontFamily: 'poppins',
  fontWeight: FontWeight.bold,
);
const kTextStyle14Regular = TextStyle(
  color: kColorGray3,
  fontSize: 14,
  fontFamily: 'poppins',
  fontWeight: FontWeight.w500,
);
const kTextStyleHomepageBottomNavigation = TextStyle(
  color: kColorGrayEnabledTextField,
  fontSize: 12,
  fontFamily: 'poppins',
);

const kTextStyle12Bold = TextStyle(
  color: Colors.white,
  fontSize: 12,
  fontWeight: FontWeight.bold,
  fontFamily: 'poppins',
);
const kTextStyle10 = TextStyle(
  color: Color(0xff292d32),
  fontSize: 10,
  fontFamily: 'poppins',
);
const kTextStyleHomepageBottomNavigationBold = TextStyle(
  color: kColorGrayEnabledTextField,
  fontSize: 12,
  fontWeight: FontWeight.bold,
  fontFamily: 'poppins',
);
const kTextStyleSuggestedTitle = TextStyle(
    color: kColorGrayDark,
    fontSize: 12,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400);
const kTextStyleSuggestedOff = TextStyle(
    color: kColorLightRed,
    fontSize: 10,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400);
const kTextStyleErrorTextField = TextStyle(
    color: kColorDarkBlue,
    fontSize: 12,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400);
const kTextStyleHeadLine2 = TextStyle(
  color: Colors.white,
  fontSize: 12,
  fontFamily: 'poppins',
  fontWeight: FontWeight.bold,
);
const kTextStyleHeadLine3 = TextStyle(
  color: kColorGrayEnabledTextField,
  fontSize: 13,
  fontFamily: 'poppins',
);
const kTextStyleBody1 = TextStyle(
  color: Colors.black,
  fontSize: 11,
  fontFamily: 'poppins',
  fontWeight: FontWeight.w500,
);
final LinearGradient kGalaxyLinearGradientIndicator = const LinearGradient(
  colors: <Color>[
    Color(0xff1F63D9),
    Color(0xff164598),
    Color(0xff0A1F44),
  ],
).scale(2);

final LinearGradient kGalaxyLinearGradient = const LinearGradient(
  colors: <Color>[
    Color(0xff4017B3),
    Color(0xff3A1061),
    Color(0xff390A69),
    Color(0xff432995),
    Color(0xff0F081B),
  ],
).scale(2);
final LinearGradient kLinearGradientGray = const LinearGradient(
  colors: <Color>[
    Color(0xffe2c451),
    Color(0xffe8cf5a),
    Color(0xffa5a9b5),
    Color(0xff777b86)
  ],
).scale(1);

final LinearGradient kBackgroundSplashGradiant = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
    Color(0xff1f63d9),
    Color(0xff164598),
    Color(0xff0a1f44),
  ],
).scale(1);

final LinearGradient kBackgroundFirstRankingGradiant = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
    Color(0xffF5B000),
    Color(0xffAD7D00),
  ],
).scale(1);

final LinearGradient kBackgroundSecondRankingGradiant = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
    Color(0xff88898B),
    Color(0xff5D5E60),
  ],
).scale(1);

final LinearGradient kBackgroundThirdRankingGradiant = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
    Color(0xffCA8359),
    Color(0xff93542F),
  ],
).scale(1);

final LinearGradient kShadowGradiant = LinearGradient(
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  colors: <Color>[
    const Color(0xff000000).withOpacity(0.60),
    Colors.transparent,
  ],
).scale(1);

class Palette {
  static const Map kColorSecondary = <int, Color>{
    0: Color(0xff1c0e02),
    1: Color(0xff381d05),
    2: Color(0xff552b07),
    3: Color(0xff713a09),
    4: Color(0xff8d480c),
    5: Color(0xffa9570e),
    6: Color(0xffc66510),
    7: Color(0xffe27313),
    8: Color(0xffED8326),
    9: Color(0xffed8325),
    10: Color(0xffef913e),
    11: Color(0xfff19f56),
    12: Color(0xfff3ac6e),
    13: Color(0xfff5ba86),
    14: Color(0xffF9D6B7),
    15: Color(0xfff9d6b7),
    16: Color(0xffFDF1E7),
  };
  static const Map kColorPrimary = <int, Color>{
    0: Color(0xff020811),
    1: Color(0xff050F22),
    2: Color(0xff071733),
    3: Color(0xff0A1F44),
    4: Color(0xff0C2654),
    5: Color(0xff0F2E65),
    6: Color(0xff113676),
    7: Color(0xff143d87),
    8: Color(0xff164598),
    9: Color(0xff1b54b9),
    10: Color(0xff1f63d9),
    11: Color(0xff3b78e3),
    12: Color(0xff5c8ee7),
    13: Color(0xff7da5ec),
    14: Color(0xff9dbbf1),
    15: Color(0xffbed2f6),
    16: Color(0xffdee8fa),
    17: Color(0xffF2F6FD),
  };
  static const Map kColorNature = <int, Color>{
    0: Color(0xff0a0a0b),
    1: Color(0xff141415),
    2: Color(0xff1f1f20),
    3: Color(0xff29292a),
    4: Color(0xff333335),
    5: Color(0xff3d3d3f),
    6: Color(0xff48484a),
    7: Color(0xff525254),
    8: Color(0xff5C5D5F),
    9: Color(0xff6e6f71),
    10: Color(0xff7f8083),
    11: Color(0xff929395),
    12: Color(0xffa4a5a7),
    13: Color(0xffb6b6b8),
    14: Color(0xffc8c8ca),
    15: Color(0xffdbdbdc),
    16: Color(0xffededed),
    17: Color(0xffefefef),
    18: Color(0xfff2f2f2),
    19: Color(0xfff4f4f4),
    20: Color(0xfff7f7f7),
    21: Color(0xfff8f8f8),
    22: Color(0xfff9f9f9),
    23: Color(0xfffcfcfc),
    24: Color(0xffffffff),
  };
}

const ColorFilter kGreyscale = ColorFilter.matrix(<double>[
  0.2126,
  0.7152,
  0.0622,
  0,
  0,
  0.2126,
  0.7152,
  0.0622,
  0,
  0,
  0.2126,
  0.7152,
  0.0622,
  0,
  0,
  0,
  0,
  0,
  1,
  0,
]);
