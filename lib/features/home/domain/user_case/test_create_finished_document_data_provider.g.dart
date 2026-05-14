// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_create_finished_document_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(testCreateFinishedDocumentDataUserCase)
final testCreateFinishedDocumentDataUserCaseProvider =
    TestCreateFinishedDocumentDataUserCaseProvider._();

final class TestCreateFinishedDocumentDataUserCaseProvider
    extends
        $FunctionalProvider<
          TestCreateFinishedDocumentDataUserCase,
          TestCreateFinishedDocumentDataUserCase,
          TestCreateFinishedDocumentDataUserCase
        >
    with $Provider<TestCreateFinishedDocumentDataUserCase> {
  TestCreateFinishedDocumentDataUserCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'testCreateFinishedDocumentDataUserCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$testCreateFinishedDocumentDataUserCaseHash();

  @$internal
  @override
  $ProviderElement<TestCreateFinishedDocumentDataUserCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TestCreateFinishedDocumentDataUserCase create(Ref ref) {
    return testCreateFinishedDocumentDataUserCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TestCreateFinishedDocumentDataUserCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<TestCreateFinishedDocumentDataUserCase>(value),
    );
  }
}

String _$testCreateFinishedDocumentDataUserCaseHash() =>
    r'2b47f8739ded66301bd9fdd23b854f865b4ee50d';
