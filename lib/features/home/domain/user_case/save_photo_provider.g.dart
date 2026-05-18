// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_photo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(savePhotoUseCase)
final savePhotoUseCaseProvider = SavePhotoUseCaseProvider._();

final class SavePhotoUseCaseProvider
    extends
        $FunctionalProvider<
          SavePhotoUseCase,
          SavePhotoUseCase,
          SavePhotoUseCase
        >
    with $Provider<SavePhotoUseCase> {
  SavePhotoUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'savePhotoUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$savePhotoUseCaseHash();

  @$internal
  @override
  $ProviderElement<SavePhotoUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SavePhotoUseCase create(Ref ref) {
    return savePhotoUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SavePhotoUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SavePhotoUseCase>(value),
    );
  }
}

String _$savePhotoUseCaseHash() => r'c06a69a35af6a8a336f1d9556f5d12c32a05091f';
