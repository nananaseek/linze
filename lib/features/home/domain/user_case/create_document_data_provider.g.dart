// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_document_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(createDocumentDataUserCase)
final createDocumentDataUserCaseProvider =
    CreateDocumentDataUserCaseProvider._();

final class CreateDocumentDataUserCaseProvider
    extends
        $FunctionalProvider<
          CreateDocumentDataUserCase,
          CreateDocumentDataUserCase,
          CreateDocumentDataUserCase
        >
    with $Provider<CreateDocumentDataUserCase> {
  CreateDocumentDataUserCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createDocumentDataUserCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createDocumentDataUserCaseHash();

  @$internal
  @override
  $ProviderElement<CreateDocumentDataUserCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CreateDocumentDataUserCase create(Ref ref) {
    return createDocumentDataUserCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateDocumentDataUserCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateDocumentDataUserCase>(value),
    );
  }
}

String _$createDocumentDataUserCaseHash() =>
    r'df1f05d8c18561126b39642a07b07373031a40e1';
