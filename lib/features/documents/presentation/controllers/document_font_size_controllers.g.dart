// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_font_size_controllers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DocumentFontSizeController)
final documentFontSizeControllerProvider =
    DocumentFontSizeControllerProvider._();

final class DocumentFontSizeControllerProvider
    extends $NotifierProvider<DocumentFontSizeController, double> {
  DocumentFontSizeControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'documentFontSizeControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$documentFontSizeControllerHash();

  @$internal
  @override
  DocumentFontSizeController create() => DocumentFontSizeController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double>(value),
    );
  }
}

String _$documentFontSizeControllerHash() =>
    r'28c2bf3661e0a7fe7fbd0ddead434080076fdbfd';

abstract class _$DocumentFontSizeController extends $Notifier<double> {
  double build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<double, double>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<double, double>,
              double,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
