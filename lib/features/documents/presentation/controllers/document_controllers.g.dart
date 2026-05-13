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
    extends $StreamNotifierProvider<DocumentController, List<DocumentEntity>> {
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
    r'1458807ef5d2756fc8a737cc282d2ef8070f12ab';

abstract class _$DocumentController
    extends $StreamNotifier<List<DocumentEntity>> {
  Stream<List<DocumentEntity>> build();
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

@ProviderFor(getDocumentById)
final getDocumentByIdProvider = GetDocumentByIdFamily._();

final class GetDocumentByIdProvider
    extends
        $FunctionalProvider<
          AsyncValue<DocumentEntity>,
          DocumentEntity,
          FutureOr<DocumentEntity>
        >
    with $FutureModifier<DocumentEntity>, $FutureProvider<DocumentEntity> {
  GetDocumentByIdProvider._({
    required GetDocumentByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getDocumentByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getDocumentByIdHash();

  @override
  String toString() {
    return r'getDocumentByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<DocumentEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DocumentEntity> create(Ref ref) {
    final argument = this.argument as String;
    return getDocumentById(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetDocumentByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getDocumentByIdHash() => r'8dbc66fcc97b87a83c0ea48fb5b24095343c8410';

final class GetDocumentByIdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<DocumentEntity>, String> {
  GetDocumentByIdFamily._()
    : super(
        retry: null,
        name: r'getDocumentByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetDocumentByIdProvider call(String id) =>
      GetDocumentByIdProvider._(argument: id, from: this);

  @override
  String toString() => r'getDocumentByIdProvider';
}
