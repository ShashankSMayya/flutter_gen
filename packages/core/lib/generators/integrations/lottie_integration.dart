import 'package:flutter_gen_core/settings/asset_type.dart';

import 'integration.dart';

class LottieIntegration extends Integration {
  @override
  String classInstantiate(String path) => 'LottieGenImage(\'$path\')';

  @override
  String get className => 'LottieGenImage';

  @override
  String get classOutput => '''class LottieGenImage {
  const LottieGenImage(this._assetName);
  final String _assetName;
  LottieBuilder lottie({
    Animation<double> controller,
    bool animate,
    FrameRate frameRate,
    bool repeat,
    bool reverse,
    LottieDelegates delegates,
    LottieOptions options,
    void Function(LottieComposition) onLoaded,
    LottieImageProviderFactory imageProviderFactory,
    Key key,
    AssetBundle bundle,
    LottieFrameBuilder frameBuilder,
    double width,
    double height,
    BoxFit fit,
    Alignment alignment,
    String package,
    bool addRepaintBoundary,
  }) {
    return Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      width: width,
      height: height,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
    );
  }
  String get path => _assetName;
}''';

  @override
  bool get isConstConstructor => true;

  @override
  bool isSupport(AssetType type) =>
      type.extension == '.json' ||
      type.extension == '.zip' ||
      type.extension == '.lottie';

  @override
  List<String> get requiredImports => ['package:lottie/lottie.dart'];
}
