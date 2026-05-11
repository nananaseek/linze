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
    final rows = await _db.select(_db.documents).get();
    return rows.map((row) => _mapToEntity(row)).toList();
  }

  @override
  Future<DocumentEntity> getDocumentById(String id) async {
    final data = (_db.select(_db.documents)..where((target) => target.id.equals(id))).getSingle();
    return _mapToEntity(await data);
  }

  @override
  Future<void> addDocument(DocumentEntity doc) async {
    await _db.into(_db.documents).insert(
          DocumentsCompanion.insert(
            id: doc.id,
            name: doc.name,
            content: doc.content,
            imgPath: doc.imgPath,
            createdAt: Value(doc.createdAt),
          ),
        );
  }

  @override
  Future<void> deleteDocument(String id) async {
    await (_db.delete(_db.documents)..where((t) => t.id.equals(id))).go();
  }

  DocumentEntity _mapToEntity(Document data) {
    return DocumentEntity(
      id: data.id,
      name: data.name,
      content: data.content,
      imgPath: data.imgPath,
      createdAt: data.createdAt,
    );
  }
}