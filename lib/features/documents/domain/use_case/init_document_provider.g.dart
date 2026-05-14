// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_document_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(initDocumentUserCase)
final initDocumentUserCaseProvider = InitDocumentUserCaseProvider._();

final class InitDocumentUserCaseProvider
    extends
        $FunctionalProvider<
          InitDocumentUserCase,
          InitDocumentUserCase,
          InitDocumentUserCase
        >
    with $Provider<InitDocumentUserCase> {
  InitDocumentUserCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'initDocumentUserCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$initDocumentUserCaseHash();

  @$internal
  @override
  $ProviderElement<InitDocumentUserCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InitDocumentUserCase create(Ref ref) {
    return initDocumentUserCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InitDocumentUserCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InitDocumentUserCase>(value),
    );
  }
}

String _$initDocumentUserCaseHash() =>
    r'c3d5941d2daebaece402154a1d7b3c899cc13a6a';
