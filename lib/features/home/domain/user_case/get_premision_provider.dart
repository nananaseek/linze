import 'package:linze/features/home/data/services/gallery_service_repository.dart';
import 'package:linze/features/home/domain/user_case/get_premision_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_premision_provider.g.dart';

@riverpod
GetPremisionUseCase getPremisionUseCase (Ref ref) {
  final repository = ref.read(galleryServiceProvider);
  return GetPremisionUseCase(repository: repository);
}