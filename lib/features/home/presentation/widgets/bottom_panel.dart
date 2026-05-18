import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:linze/features/home/presentation/controllers/camera_controller.dart';
import 'package:linze/features/home/presentation/controllers/gallery_controller.dart';
import 'package:linze/features/home/presentation/controllers/home_page_controller.dart';

class BottomPanel extends ConsumerWidget {
  const BottomPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // late String? path;
    ref.watch(galleryControllerProvider);
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: .center,
              child: IconButton(
                onPressed: () => context.push('/docs'),
                icon: Icon(Icons.camera_alt),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: .center,
              child: IconButton(
                onPressed: () async {
                  final path = await ref
                      .read(homeCameraControlerProvider.notifier)
                      .takePhoto();
                  if (path != null) {
                    await ref
                        .read(homePageControllerProvider.notifier)
                        .initDocumentFromGallery(imgPath: path);
                  }
                },
                icon: Icon(Icons.circle_sharp, size: 50.w, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: .center,
              child: IconButton(
                onPressed: () async {
                  await ref
                      .read(galleryControllerProvider.notifier)
                      .getPremision();
                  final path = await ref
                      .read(galleryControllerProvider.notifier)
                      .importImage();
                  if (path != null) {
                    await ref
                        .read(homePageControllerProvider.notifier)
                        .initDocumentFromGallery(imgPath: path);
                  }
                },
                icon: Icon(Icons.photo_library_rounded),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
