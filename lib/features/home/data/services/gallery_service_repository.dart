import 'package:linze/features/home/data/services/gallery_service_imp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gallery_service_repository.g.dart';

@riverpod
GalleryServiceImp galleryService (Ref ref) {
  return GalleryServiceImp();
}