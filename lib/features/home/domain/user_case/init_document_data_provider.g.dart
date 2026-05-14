// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_document_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(initDocumentDataUserCase)
final initDocumentDataUserCaseProvider = InitDocumentDataUserCaseProvider._();

final class InitDocumentDataUserCaseProvider
    extends
        $FunctionalProvider<
          InitDocumentDataUserCase,
          InitDocumentDataUserCase,
          InitDocumentDataUserCase
        >
    with $Provider<InitDocumentDataUserCase> {
  InitDocumentDataUserCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'initDocumentDataUserCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$initDocumentDataUserCaseHash();

  @$internal
  @override
  $ProviderElement<InitDocumentDataUserCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InitDocumentDataUserCase create(Ref ref) {
    return initDocumentDataUserCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InitDocumentDataUserCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InitDocumentDataUserCase>(value),
    );
  }
}

String _$initDocumentDataUserCaseHash() =>
    r'e0a183b966ea359192046094d4e9423d5cffc058';
