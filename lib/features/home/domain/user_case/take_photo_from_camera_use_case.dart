import 'package:image_picker/image_picker.dart';
import 'package:linze/features/home/data/services/camera_service_imp.dart';

class TakePhotoFromCameraUseCase {
  final CameraServiceImp repository;

  TakePhotoFromCameraUseCase({required this.repository});

  Future<XFile> call() async {
    return await repository.takePhoto();
  }
}
