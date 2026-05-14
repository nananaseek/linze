import 'package:gal/gal.dart';
import 'package:image_picker/image_picker.dart';
import 'package:linze/core/constants.dart';
import 'package:linze/features/home/domain/repository/i_gallery_repository.dart';

class GalleryServiceImp extends IGalleryRepository{
  final ImagePicker _picker = ImagePicker();
  
  @override
  Future<bool> hasPremisionRead() async => await Gal.hasAccess();

  @override
  Future<bool> hasPremisionSaveAlbum() async => await Gal.hasAccess(toAlbum: true);

  @override
  Future<void> requestPremisionSave() async => await Gal.requestAccess();

  @override
  Future<void> requestPremisionSaveAlbum() async => await Gal.requestAccess(toAlbum: true);

  @override
  Future<void> saveImageToGallery(String path) async {
    await Gal.putImage(path, album: appGalleryName);
  }

  @override
  Future<String?> takeImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    return image?.path;
  }
  
  // @override
  // Future<String> getImageFromGallery(String path) {
  //   // TODO: implement getImageFromGallery
  //   throw UnimplementedError();
  // }
  
}