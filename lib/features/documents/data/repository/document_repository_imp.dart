// data/repositories/document_repository_impl.dart
import 'package:drift/drift.dart';
import 'package:linze/core/database/app_database.dart';
import 'package:linze/features/documents/domain/entity/document_entity.dart';
import 'package:linze/features/documents/domain/repository/i_document_repository.dart';

class DocumentRepositoryImpl implements IDocumentRepository {
  final AppDatabase _db;

  DocumentRepositoryImpl(this._db);

  @override
  Future<List<DocumentEntity>> getAllDocuments() async {
    return await _db.select(_db.documents).get();
  }

  @override
  Stream<List<DocumentEntity>> watchAllDocuments() {
    return _db.select(_db.documents).watch();
  }

  @override
  Future<DocumentEntity> getDocumentById(String id) async {
    return await (_db.select(_db.documents)..where((target) => target.id.equals(id))).getSingle();
  }

  @override
  Future<void> addDocument(DocumentEntity doc) async {
    await _db.into(_db.documents).insert(
          DocumentsCompanion.insert(
            id: doc.id,
            name: doc.name,
            content: doc.content,
            imgPath: doc.imgPath,
            state: doc.state,
            createdAt: Value(doc.createdAt),
          ),
        );
  }

  @override
  Future<void> deleteDocument(String id) async {
    await (_db.delete(_db.documents)..where((t) => t.id.equals(id))).go();
  }

}