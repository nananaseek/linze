// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'take_photo_from_camera_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(takePhotoFromCameraUseCase)
final takePhotoFromCameraUseCaseProvider =
    TakePhotoFromCameraUseCaseProvider._();

final class TakePhotoFromCameraUseCaseProvider
    extends
        $FunctionalProvider<
          TakePhotoFromCameraUseCase,
          TakePhotoFromCameraUseCase,
          TakePhotoFromCameraUseCase
        >
    with $Provider<TakePhotoFromCameraUseCase> {
  TakePhotoFromCameraUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'takePhotoFromCameraUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$takePhotoFromCameraUseCaseHash();

  @$internal
  @override
  $ProviderElement<TakePhotoFromCameraUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TakePhotoFromCameraUseCase create(Ref ref) {
    return takePhotoFromCameraUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TakePhotoFromCameraUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TakePhotoFromCameraUseCase>(value),
    );
  }
}

String _$takePhotoFromCameraUseCaseHash() =>
    r'b8710bab64176cf28d5cb5afc2c4c6b3bbb75319';
