// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_document_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(addDocumentUserCase)
final addDocumentUserCaseProvider = AddDocumentUserCaseProvider._();

final class AddDocumentUserCaseProvider
    extends
        $FunctionalProvider<
          AddDocumentUserCase,
          AddDocumentUserCase,
          AddDocumentUserCase
        >
    with $Provider<AddDocumentUserCase> {
  AddDocumentUserCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addDocumentUserCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addDocumentUserCaseHash();

  @$internal
  @override
  $ProviderElement<AddDocumentUserCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AddDocumentUserCase create(Ref ref) {
    return addDocumentUserCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddDocumentUserCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddDocumentUserCase>(value),
    );
  }
}

String _$addDocumentUserCaseHash() =>
    r'7ffb750471776a9759ba6df26d9b34653007468b';
