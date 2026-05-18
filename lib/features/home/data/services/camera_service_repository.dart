import 'package:linze/features/home/data/services/camera_service_imp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'camera_service_repository.g.dart';

@riverpod
CameraServiceImp cameraService (Ref ref) {
  return CameraServiceImp();
}