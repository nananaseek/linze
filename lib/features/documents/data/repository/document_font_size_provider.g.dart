// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_font_size_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(documentFontSizeRepository)
final documentFontSizeRepositoryProvider =
    DocumentFontSizeRepositoryProvider._();

final class DocumentFontSizeRepositoryProvider
    extends
        $FunctionalProvider<
          IDocumentFontSizeRepository,
          IDocumentFontSizeRepository,
          IDocumentFontSizeRepository
        >
    with $Provider<IDocumentFontSizeRepository> {
  DocumentFontSizeRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'documentFontSizeRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$documentFontSizeRepositoryHash();

  @$internal
  @override
  $ProviderElement<IDocumentFontSizeRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IDocumentFontSizeRepository create(Ref ref) {
    return documentFontSizeRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IDocumentFontSizeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IDocumentFontSizeRepository>(value),
    );
  }
}

String _$documentFontSizeRepositoryHash() =>
    r'52894abe2dbfac3bac4eed44402191741e78a945';
