// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_documents_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getAllDocumentsUserCase)
final getAllDocumentsUserCaseProvider = GetAllDocumentsUserCaseProvider._();

final class GetAllDocumentsUserCaseProvider
    extends
        $FunctionalProvider<
          GetAllDocumentsUserCase,
          GetAllDocumentsUserCase,
          GetAllDocumentsUserCase
        >
    with $Provider<GetAllDocumentsUserCase> {
  GetAllDocumentsUserCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllDocumentsUserCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllDocumentsUserCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllDocumentsUserCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllDocumentsUserCase create(Ref ref) {
    return getAllDocumentsUserCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllDocumentsUserCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllDocumentsUserCase>(value),
    );
  }
}

String _$getAllDocumentsUserCaseHash() =>
    r'97cd109ce374f38d2888bbf864195f30900c54e5';
