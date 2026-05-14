abstract class IGalleryRepository{
  Future<bool> hasPremisionRead();
  Future<bool> hasPremisionSaveAlbum();
  Future<void> requestPremisionSave();
  Future<void> requestPremisionSaveAlbum();
  Future<String?> takeImage();
  Future<void> saveImageToGallery(String path);
  // Future<String> getImageFromGallery(String path);
}