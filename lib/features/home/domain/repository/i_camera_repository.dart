abstract class ICameraRepository {
  Future<void> init();
  Future<void> dispose();
  Future<void> takePhoto();
  dynamic get controller;
}