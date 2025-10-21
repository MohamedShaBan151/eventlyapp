// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/amerca_icon.png
  AssetGenImage get amercaIcon =>
      const AssetGenImage('assets/icon/amerca_icon.png');

  /// File path: assets/icon/app_icon.png
  AssetGenImage get appIcon => const AssetGenImage('assets/icon/app_icon.png');

  /// File path: assets/icon/app_icon_without_text.svg
  SvgGenImage get appIconWithoutText =>
      const SvgGenImage('assets/icon/app_icon_without_text.svg');

  /// File path: assets/icon/egypt_icon.png
  AssetGenImage get egyptIcon =>
      const AssetGenImage('assets/icon/egypt_icon.png');

  /// File path: assets/icon/email_icon.svg
  SvgGenImage get emailIcon => const SvgGenImage('assets/icon/email_icon.svg');

  /// File path: assets/icon/eye_icon.svg
  SvgGenImage get eyeIcon => const SvgGenImage('assets/icon/eye_icon.svg');

  /// File path: assets/icon/google_icon.png
  AssetGenImage get googleIcon =>
      const AssetGenImage('assets/icon/google_icon.png');

  /// File path: assets/icon/heart.svg
  SvgGenImage get heart => const SvgGenImage('assets/icon/heart.svg');

  /// File path: assets/icon/imail_icon.png
  AssetGenImage get imailIcon =>
      const AssetGenImage('assets/icon/imail_icon.png');

  /// File path: assets/icon/lock_icon.svg
  SvgGenImage get lockIcon => const SvgGenImage('assets/icon/lock_icon.svg');

  /// File path: assets/icon/person_icon.svg
  SvgGenImage get personIcon =>
      const SvgGenImage('assets/icon/person_icon.svg');

  /// File path: assets/icon/selected_heart_icon.svg
  SvgGenImage get selectedHeartIcon =>
      const SvgGenImage('assets/icon/selected_heart_icon.svg');

  /// File path: assets/icon/selected_home_icon.svg
  SvgGenImage get selectedHomeIcon =>
      const SvgGenImage('assets/icon/selected_home_icon.svg');

  /// File path: assets/icon/selected_location_icon.svg
  SvgGenImage get selectedLocationIcon =>
      const SvgGenImage('assets/icon/selected_location_icon.svg');

  /// File path: assets/icon/selected_person_icon.svg
  SvgGenImage get selectedPersonIcon =>
      const SvgGenImage('assets/icon/selected_person_icon.svg');

  /// File path: assets/icon/unselected_heart_icon.svg
  SvgGenImage get unselectedHeartIcon =>
      const SvgGenImage('assets/icon/unselected_heart_icon.svg');

  /// File path: assets/icon/unselected_home_icon.svg
  SvgGenImage get unselectedHomeIcon =>
      const SvgGenImage('assets/icon/unselected_home_icon.svg');

  /// File path: assets/icon/unselected_location_icon.svg
  SvgGenImage get unselectedLocationIcon =>
      const SvgGenImage('assets/icon/unselected_location_icon.svg');

  /// File path: assets/icon/unselected_person_icon.svg
  SvgGenImage get unselectedPersonIcon =>
      const SvgGenImage('assets/icon/unselected_person_icon.svg');

  /// List of all assets
  List<dynamic> get values => [
    amercaIcon,
    appIcon,
    appIconWithoutText,
    egyptIcon,
    emailIcon,
    eyeIcon,
    googleIcon,
    heart,
    imailIcon,
    lockIcon,
    personIcon,
    selectedHeartIcon,
    selectedHomeIcon,
    selectedLocationIcon,
    selectedPersonIcon,
    unselectedHeartIcon,
    unselectedHomeIcon,
    unselectedLocationIcon,
    unselectedPersonIcon,
  ];
}

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/all_image_dark.png
  AssetGenImage get allImageDark =>
      const AssetGenImage('assets/image/all_image_dark.png');

  /// File path: assets/image/birthday_image_dark.png
  AssetGenImage get birthdayImageDark =>
      const AssetGenImage('assets/image/birthday_image_dark.png');

  /// File path: assets/image/bookclub_image_dark.png
  AssetGenImage get bookclubImageDark =>
      const AssetGenImage('assets/image/bookclub_image_dark.png');

  /// File path: assets/image/eating_image_dark.png
  AssetGenImage get eatingImageDark =>
      const AssetGenImage('assets/image/eating_image_dark.png');

  /// File path: assets/image/exhibition_image_dark.png
  AssetGenImage get exhibitionImageDark =>
      const AssetGenImage('assets/image/exhibition_image_dark.png');

  /// File path: assets/image/gaming_image_dark.png
  AssetGenImage get gamingImageDark =>
      const AssetGenImage('assets/image/gaming_image_dark.png');

  /// File path: assets/image/holiday_image_dark.png
  AssetGenImage get holidayImageDark =>
      const AssetGenImage('assets/image/holiday_image_dark.png');

  /// File path: assets/image/meeting_image_dark.png
  AssetGenImage get meetingImageDark =>
      const AssetGenImage('assets/image/meeting_image_dark.png');

  /// File path: assets/image/route_image.png
  AssetGenImage get routeImage =>
      const AssetGenImage('assets/image/route_image.png');

  /// File path: assets/image/sport_image_dark.png
  AssetGenImage get sportImageDark =>
      const AssetGenImage('assets/image/sport_image_dark.png');

  /// File path: assets/image/workshop_image_dark.png
  AssetGenImage get workshopImageDark =>
      const AssetGenImage('assets/image/workshop_image_dark.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    allImageDark,
    birthdayImageDark,
    bookclubImageDark,
    eatingImageDark,
    exhibitionImageDark,
    gamingImageDark,
    holidayImageDark,
    meetingImageDark,
    routeImage,
    sportImageDark,
    workshopImageDark,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconGen icon = $AssetsIconGen();
  static const $AssetsImageGen image = $AssetsImageGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
