// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_all_documents_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(watchAllDocumentsUserCase)
final watchAllDocumentsUserCaseProvider = WatchAllDocumentsUserCaseProvider._();

final class WatchAllDocumentsUserCaseProvider
    extends
        $FunctionalProvider<
          WatchAllDocumentsUserCase,
          WatchAllDocumentsUserCase,
          WatchAllDocumentsUserCase
        >
    with $Provider<WatchAllDocumentsUserCase> {
  WatchAllDocumentsUserCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchAllDocumentsUserCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchAllDocumentsUserCaseHash();

  @$internal
  @override
  $ProviderElement<WatchAllDocumentsUserCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WatchAllDocumentsUserCase create(Ref ref) {
    return watchAllDocumentsUserCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WatchAllDocumentsUserCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WatchAllDocumentsUserCase>(value),
    );
  }
}

String _$watchAllDocumentsUserCaseHash() =>
    r'fd3c79041c0898c4cda6ad064df65af536872fe7';
