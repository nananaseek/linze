import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:linze/features/documents/domain/entity/document_entity.dart';
import 'package:linze/features/documents/domain/entity/state_enum_entity.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'main_tablse.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Documents])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'linze_db.sqlite'));
    return NativeDatabase(file);
  });
}
