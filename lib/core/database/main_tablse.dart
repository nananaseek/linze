import 'package:drift/drift.dart';
import 'package:linze/features/documents/domain/entity/document_entity.dart';
import 'package:linze/features/documents/domain/entity/state_enum_entity.dart';

@UseRowClass(DocumentEntity)
class Documents extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().withLength(min: 1, max: 100)();
  TextColumn get imgPath => text()();
  TextColumn get content => text()();
  TextColumn get state => textEnum<DocumentState>()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();


  @override
  Set<Column> get primaryKey => {id};
}
