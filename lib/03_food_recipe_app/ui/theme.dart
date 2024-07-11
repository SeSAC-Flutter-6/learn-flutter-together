import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff166b54),
      surfaceTint: Color(0xff166b54),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa4f2d5),
      onPrimaryContainer: Color(0xff002117),
      secondary: Color(0xff845316),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdcbc),
      onSecondaryContainer: Color(0xff2c1700),
      tertiary: Color(0xff406375),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffc3e8fe),
      onTertiaryContainer: Color(0xff001e2b),
      error: Color(0xff8f4a4c),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad9),
      onErrorContainer: Color(0xff3b080e),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff22191c),
      onSurfaceVariant: Color(0xff3f4944),
      outline: Color(0xff707974),
      outlineVariant: Color(0xffbfc9c3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372e30),
      inversePrimary: Color(0xff89d6ba),
      primaryFixed: Color(0xffa4f2d5),
      onPrimaryFixed: Color(0xff002117),
      primaryFixedDim: Color(0xff89d6ba),
      onPrimaryFixedVariant: Color(0xff00513e),
      secondaryFixed: Color(0xffffdcbc),
      onSecondaryFixed: Color(0xff2c1700),
      secondaryFixedDim: Color(0xfffbba73),
      onSecondaryFixedVariant: Color(0xff683d00),
      tertiaryFixed: Color(0xffc3e8fe),
      onTertiaryFixed: Color(0xff001e2b),
      tertiaryFixedDim: Color(0xffa7cce1),
      onTertiaryFixedVariant: Color(0xff274b5d),
      surfaceDim: Color(0xffe6d6d9),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f2),
      surfaceContainer: Color(0xfffaeaed),
      surfaceContainerHigh: Color(0xfff5e4e7),
      surfaceContainerHighest: Color(0xffefdfe1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004d3a),
      surfaceTint: Color(0xff166b54),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff338269),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff623900),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff9e692b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff234759),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff56798d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff6e2f32),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffaa5f61),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff22191c),
      onSurfaceVariant: Color(0xff3c4541),
      outline: Color(0xff58615c),
      outlineVariant: Color(0xff737d78),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372e30),
      inversePrimary: Color(0xff89d6ba),
      primaryFixed: Color(0xff338269),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff126852),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff9e692b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff815114),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff56798d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3d6073),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe6d6d9),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f2),
      surfaceContainer: Color(0xfffaeaed),
      surfaceContainerHigh: Color(0xfff5e4e7),
      surfaceContainerHighest: Color(0xffefdfe1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00281d),
      surfaceTint: Color(0xff166b54),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004d3a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff351c00),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff623900),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002635),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff234759),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff440f14),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff6e2f32),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1d2622),
      outline: Color(0xff3c4541),
      outlineVariant: Color(0xff3c4541),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372e30),
      inversePrimary: Color(0xffaefcde),
      primaryFixed: Color(0xff004d3a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003427),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff623900),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff442600),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff234759),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff063142),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe6d6d9),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f2),
      surfaceContainer: Color(0xfffaeaed),
      surfaceContainerHigh: Color(0xfff5e4e7),
      surfaceContainerHighest: Color(0xffefdfe1),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff89d6ba),
      surfaceTint: Color(0xff89d6ba),
      onPrimary: Color(0xff00382a),
      primaryContainer: Color(0xff00513e),
      onPrimaryContainer: Color(0xffa4f2d5),
      secondary: Color(0xfffbba73),
      onSecondary: Color(0xff492900),
      secondaryContainer: Color(0xff683d00),
      onSecondaryContainer: Color(0xffffdcbc),
      tertiary: Color(0xffa7cce1),
      onTertiary: Color(0xff0c3445),
      tertiaryContainer: Color(0xff274b5d),
      onTertiaryContainer: Color(0xffc3e8fe),
      error: Color(0xffffb3b4),
      onError: Color(0xff561d21),
      errorContainer: Color(0xff733336),
      onErrorContainer: Color(0xffffdad9),
      surface: Color(0xff191113),
      onSurface: Color(0xffefdfe1),
      onSurfaceVariant: Color(0xffbfc9c3),
      outline: Color(0xff89938e),
      outlineVariant: Color(0xff3f4944),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdfe1),
      inversePrimary: Color(0xff166b54),
      primaryFixed: Color(0xffa4f2d5),
      onPrimaryFixed: Color(0xff002117),
      primaryFixedDim: Color(0xff89d6ba),
      onPrimaryFixedVariant: Color(0xff00513e),
      secondaryFixed: Color(0xffffdcbc),
      onSecondaryFixed: Color(0xff2c1700),
      secondaryFixedDim: Color(0xfffbba73),
      onSecondaryFixedVariant: Color(0xff683d00),
      tertiaryFixed: Color(0xffc3e8fe),
      onTertiaryFixed: Color(0xff001e2b),
      tertiaryFixedDim: Color(0xffa7cce1),
      onTertiaryFixedVariant: Color(0xff274b5d),
      surfaceDim: Color(0xff191113),
      surfaceBright: Color(0xff413739),
      surfaceContainerLowest: Color(0xff140c0e),
      surfaceContainerLow: Color(0xff22191c),
      surfaceContainer: Color(0xff261d20),
      surfaceContainerHigh: Color(0xff31282a),
      surfaceContainerHighest: Color(0xff3c3235),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8ddabe),
      surfaceTint: Color(0xff89d6ba),
      onPrimary: Color(0xff001b12),
      primaryContainer: Color(0xff529f85),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffbe78),
      onSecondary: Color(0xff241200),
      secondaryContainer: Color(0xffbe8544),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffacd0e5),
      onTertiary: Color(0xff001924),
      tertiaryContainer: Color(0xff7295aa),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffb9b9),
      onError: Color(0xff340309),
      errorContainer: Color(0xffcb7a7c),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff191113),
      onSurface: Color(0xfffff9f9),
      onSurfaceVariant: Color(0xffc3cdc7),
      outline: Color(0xff9ba5a0),
      outlineVariant: Color(0xff7c8580),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdfe1),
      inversePrimary: Color(0xff00523f),
      primaryFixed: Color(0xffa4f2d5),
      onPrimaryFixed: Color(0xff00150e),
      primaryFixedDim: Color(0xff89d6ba),
      onPrimaryFixedVariant: Color(0xff003e2f),
      secondaryFixed: Color(0xffffdcbc),
      onSecondaryFixed: Color(0xff1d0d00),
      secondaryFixedDim: Color(0xfffbba73),
      onSecondaryFixedVariant: Color(0xff512e00),
      tertiaryFixed: Color(0xffc3e8fe),
      onTertiaryFixed: Color(0xff00131d),
      tertiaryFixedDim: Color(0xffa7cce1),
      onTertiaryFixedVariant: Color(0xff143a4b),
      surfaceDim: Color(0xff191113),
      surfaceBright: Color(0xff413739),
      surfaceContainerLowest: Color(0xff140c0e),
      surfaceContainerLow: Color(0xff22191c),
      surfaceContainer: Color(0xff261d20),
      surfaceContainerHigh: Color(0xff31282a),
      surfaceContainerHighest: Color(0xff3c3235),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffedfff5),
      surfaceTint: Color(0xff89d6ba),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff8ddabe),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffffaf8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffbe78),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff7fbff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffacd0e5),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffb9b9),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff191113),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff3fdf7),
      outline: Color(0xffc3cdc7),
      outlineVariant: Color(0xffc3cdc7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdfe1),
      inversePrimary: Color(0xff003124),
      primaryFixed: Color(0xffa8f7d9),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff8ddabe),
      onPrimaryFixedVariant: Color(0xff001b12),
      secondaryFixed: Color(0xffffe2c7),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffbe78),
      onSecondaryFixedVariant: Color(0xff241200),
      tertiaryFixed: Color(0xffccebff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffacd0e5),
      onTertiaryFixedVariant: Color(0xff001924),
      surfaceDim: Color(0xff191113),
      surfaceBright: Color(0xff413739),
      surfaceContainerLowest: Color(0xff140c0e),
      surfaceContainerLow: Color(0xff22191c),
      surfaceContainer: Color(0xff261d20),
      surfaceContainerHigh: Color(0xff31282a),
      surfaceContainerHighest: Color(0xff3c3235),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );

  /// Green
  static const green = ExtendedColor(
    seed: Color(0xff31b057),
    value: Color(0xff31b057),
    light: ColorFamily(
      color: Color(0xff35693e),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb7f1ba),
      onColorContainer: Color(0xff002109),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff35693e),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb7f1ba),
      onColorContainer: Color(0xff002109),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff35693e),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb7f1ba),
      onColorContainer: Color(0xff002109),
    ),
    dark: ColorFamily(
      color: Color(0xff9cd4a0),
      onColor: Color(0xff003914),
      colorContainer: Color(0xff1c5129),
      onColorContainer: Color(0xffb7f1ba),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xff9cd4a0),
      onColor: Color(0xff003914),
      colorContainer: Color(0xff1c5129),
      onColorContainer: Color(0xffb7f1ba),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xff9cd4a0),
      onColor: Color(0xff003914),
      colorContainer: Color(0xff1c5129),
      onColorContainer: Color(0xffb7f1ba),
    ),
  );

  /// Rating
  static const rating = ExtendedColor(
    seed: Color(0xffffad30),
    value: Color(0xffffad30),
    light: ColorFamily(
      color: Color(0xff815512),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffddb6),
      onColorContainer: Color(0xff2a1800),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff815512),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffddb6),
      onColorContainer: Color(0xff2a1800),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff815512),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffddb6),
      onColorContainer: Color(0xff2a1800),
    ),
    dark: ColorFamily(
      color: Color(0xfff6bc70),
      onColor: Color(0xff462a00),
      colorContainer: Color(0xff643f00),
      onColorContainer: Color(0xffffddb6),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xfff6bc70),
      onColor: Color(0xff462a00),
      colorContainer: Color(0xff643f00),
      onColorContainer: Color(0xffffddb6),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xfff6bc70),
      onColor: Color(0xff462a00),
      colorContainer: Color(0xff643f00),
      onColorContainer: Color(0xffffddb6),
    ),
  );


  List<ExtendedColor> get extendedColors => [
    green,
    rating,
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
