// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_controllers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DocumentController)
final documentControllerProvider = DocumentControllerProvider._();

final class DocumentControllerProvider
    extends $AsyncNotifierProvider<DocumentController, List<DocumentEntity>> {
  DocumentControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'documentControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$documentControllerHash();

  @$internal
  @override
  DocumentController create() => DocumentController();
}

String _$documentControllerHash() =>
    r'9ae0c55ea33b7dc00948b6591e9e4764a7c1d989';

abstract class _$DocumentController
    extends $AsyncNotifier<List<DocumentEntity>> {
  FutureOr<List<DocumentEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<DocumentEntity>>, List<DocumentEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<DocumentEntity>>,
                List<DocumentEntity>
              >,
              AsyncValue<List<DocumentEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
