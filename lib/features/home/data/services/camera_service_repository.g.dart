// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camera_service_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cameraService)
final cameraServiceProvider = CameraServiceProvider._();

final class CameraServiceProvider
    extends
        $FunctionalProvider<
          CameraServiceImp,
          CameraServiceImp,
          CameraServiceImp
        >
    with $Provider<CameraServiceImp> {
  CameraServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cameraServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cameraServiceHash();

  @$internal
  @override
  $ProviderElement<CameraServiceImp> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CameraServiceImp create(Ref ref) {
    return cameraService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CameraServiceImp value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CameraServiceImp>(value),
    );
  }
}

String _$cameraServiceHash() => r'ee7ce911063251e37b1dd76dcc04b050a37e3838';
