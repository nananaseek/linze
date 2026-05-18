import 'package:camera/camera.dart';
import 'package:linze/features/home/data/services/camera_service_repository.dart';
import 'package:linze/features/home/domain/user_case/take_photo_from_camera_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'take_photo_from_camera_provider.g.dart';

@riverpod
TakePhotoFromCameraUseCase takePhotoFromCameraUseCase(Ref ref) {
  final repository = ref.read(cameraServiceProvider);
  return TakePhotoFromCameraUseCase(repository: repository);
}