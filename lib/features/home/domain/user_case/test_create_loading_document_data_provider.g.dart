// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_create_loading_document_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(testCreateLoadingDocumentDataUserCase)
final testCreateLoadingDocumentDataUserCaseProvider =
    TestCreateLoadingDocumentDataUserCaseProvider._();

final class TestCreateLoadingDocumentDataUserCaseProvider
    extends
        $FunctionalProvider<
          TestCreateLodingDocumentDataUserCase,
          TestCreateLodingDocumentDataUserCase,
          TestCreateLodingDocumentDataUserCase
        >
    with $Provider<TestCreateLodingDocumentDataUserCase> {
  TestCreateLoadingDocumentDataUserCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'testCreateLoadingDocumentDataUserCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$testCreateLoadingDocumentDataUserCaseHash();

  @$internal
  @override
  $ProviderElement<TestCreateLodingDocumentDataUserCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TestCreateLodingDocumentDataUserCase create(Ref ref) {
    return testCreateLoadingDocumentDataUserCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TestCreateLodingDocumentDataUserCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<TestCreateLodingDocumentDataUserCase>(value),
    );
  }
}

String _$testCreateLoadingDocumentDataUserCaseHash() =>
    r'575855fe86294b7ee771330c901478ef2bee6a40';
