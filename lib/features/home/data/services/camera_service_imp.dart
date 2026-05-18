import 'package:camera/camera.dart';
import 'package:linze/features/home/domain/repository/i_camera_repository.dart';

class CameraServiceImp extends ICameraRepository {
  CameraController? _controller;
  List<CameraDescription> _cameras = [];

  @override
  CameraController? get controller => _controller;

  @override
  Future<void> dispose() async {
    await _controller?.dispose();
    _controller = null;
  }

  @override
  Future<void> init() async {
    if (_controller != null && _controller!.value.isInitialized) return;

    _cameras = await availableCameras();
    if (_cameras.isNotEmpty) {
      _controller = CameraController(_cameras.first, .high, enableAudio: false);
    } else {
      throw Exception('Can`t find camera');
    }

    await _controller?.initialize();
  }

  @override
  Future<XFile> takePhoto() async {
    if (_controller!.value.isTakingPicture) throw Exception('Camera allredy take picture');
    return await _controller!.takePicture();
  }
}
