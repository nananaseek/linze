// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_document_by_id_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getDocumentByIdUserCase)
final getDocumentByIdUserCaseProvider = GetDocumentByIdUserCaseProvider._();

final class GetDocumentByIdUserCaseProvider
    extends
        $FunctionalProvider<
          GetDocumentByIdUserCase,
          GetDocumentByIdUserCase,
          GetDocumentByIdUserCase
        >
    with $Provider<GetDocumentByIdUserCase> {
  GetDocumentByIdUserCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getDocumentByIdUserCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getDocumentByIdUserCaseHash();

  @$internal
  @override
  $ProviderElement<GetDocumentByIdUserCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetDocumentByIdUserCase create(Ref ref) {
    return getDocumentByIdUserCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetDocumentByIdUserCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetDocumentByIdUserCase>(value),
    );
  }
}

String _$getDocumentByIdUserCaseHash() =>
    r'45f02ee08aeb4d63bd660aaf09f4708b0472e9f7';
