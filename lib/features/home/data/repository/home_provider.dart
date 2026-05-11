import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'home_repository_imp.dart';

part 'home_provider.g.dart';

@riverpod
HomeRepositoryImp homeRepository (Ref ref) {
  return HomeRepositoryImp();
}