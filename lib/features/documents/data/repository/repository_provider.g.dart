// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(documentRepository)
final documentRepositoryProvider = DocumentRepositoryProvider._();

final class DocumentRepositoryProvider
    extends
        $FunctionalProvider<
          IDocumentRepository,
          IDocumentRepository,
          IDocumentRepository
        >
    with $Provider<IDocumentRepository> {
  DocumentRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'documentRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$documentRepositoryHash();

  @$internal
  @override
  $ProviderElement<IDocumentRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IDocumentRepository create(Ref ref) {
    return documentRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IDocumentRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IDocumentRepository>(value),
    );
  }
}

String _$documentRepositoryHash() =>
    r'47786d0d1248c13d1de02a4bb6a05a7761c8e8af';
