// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_premision_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getPremisionUseCase)
final getPremisionUseCaseProvider = GetPremisionUseCaseProvider._();

final class GetPremisionUseCaseProvider
    extends
        $FunctionalProvider<
          GetPremisionUseCase,
          GetPremisionUseCase,
          GetPremisionUseCase
        >
    with $Provider<GetPremisionUseCase> {
  GetPremisionUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPremisionUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPremisionUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetPremisionUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetPremisionUseCase create(Ref ref) {
    return getPremisionUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPremisionUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPremisionUseCase>(value),
    );
  }
}

String _$getPremisionUseCaseHash() =>
    r'06512952bdbb66505af5ee5f0d38eb4f731b9931';
