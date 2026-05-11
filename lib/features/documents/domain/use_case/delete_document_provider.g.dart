// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_document_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(deleteDocumentUserCase)
final deleteDocumentUserCaseProvider = DeleteDocumentUserCaseProvider._();

final class DeleteDocumentUserCaseProvider
    extends
        $FunctionalProvider<
          DeleteDocumentUserCase,
          DeleteDocumentUserCase,
          DeleteDocumentUserCase
        >
    with $Provider<DeleteDocumentUserCase> {
  DeleteDocumentUserCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteDocumentUserCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteDocumentUserCaseHash();

  @$internal
  @override
  $ProviderElement<DeleteDocumentUserCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DeleteDocumentUserCase create(Ref ref) {
    return deleteDocumentUserCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeleteDocumentUserCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeleteDocumentUserCase>(value),
    );
  }
}

String _$deleteDocumentUserCaseHash() =>
    r'9dc47c06ce31b28b63e3ef52d266be68c3341f5d';
