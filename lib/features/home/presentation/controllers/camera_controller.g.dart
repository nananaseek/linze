// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camera_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HomeCameraControler)
final homeCameraControlerProvider = HomeCameraControlerProvider._();

final class HomeCameraControlerProvider
    extends $AsyncNotifierProvider<HomeCameraControler, CameraController?> {
  HomeCameraControlerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeCameraControlerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeCameraControlerHash();

  @$internal
  @override
  HomeCameraControler create() => HomeCameraControler();
}

String _$homeCameraControlerHash() =>
    r'b932786e7f7c813e577b3079817aee73e6f951ca';

abstract class _$HomeCameraControler extends $AsyncNotifier<CameraController?> {
  FutureOr<CameraController?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<CameraController?>, CameraController?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<CameraController?>, CameraController?>,
              AsyncValue<CameraController?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
