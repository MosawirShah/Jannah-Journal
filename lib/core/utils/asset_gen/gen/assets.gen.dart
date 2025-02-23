/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/charity_image.png
  AssetGenImage get charityImage =>
      const AssetGenImage('assets/images/charity_image.png');

  /// File path: assets/images/dua_image.png
  AssetGenImage get duaImage =>
      const AssetGenImage('assets/images/dua_image.png');

  /// File path: assets/images/grommet-icons_google.png
  AssetGenImage get grommetIconsGoogle =>
      const AssetGenImage('assets/images/grommet-icons_google.png');

  /// File path: assets/images/logos_facebook.png
  AssetGenImage get logosFacebook =>
      const AssetGenImage('assets/images/logos_facebook.png');

  /// File path: assets/images/logos_linkedin-icon.png
  AssetGenImage get logosLinkedinIcon =>
      const AssetGenImage('assets/images/logos_linkedin-icon.png');

  /// File path: assets/images/overview_image.png
  AssetGenImage get overviewImage =>
      const AssetGenImage('assets/images/overview_image.png');

  /// File path: assets/images/prayer_image.png
  AssetGenImage get prayerImage =>
      const AssetGenImage('assets/images/prayer_image.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    charityImage,
    duaImage,
    grommetIconsGoogle,
    logosFacebook,
    logosLinkedinIcon,
    overviewImage,
    prayerImage,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
