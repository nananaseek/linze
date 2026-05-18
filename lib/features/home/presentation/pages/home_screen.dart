import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:linze/features/home/presentation/controllers/camera_controller.dart';
import 'package:linze/features/home/presentation/widgets/bottom_panel.dart';
import 'package:linze/features/home/presentation/widgets/test_buttons_for_create_obj_in_db.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(homeCameraControlerProvider);

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        if (context.mounted) context.go('/docs');
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            // mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .center,
            children: [
              Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    // SizedBox.expand(),
                    // controller.whenData((data) => SizedBox(width: .infinity, child: CameraPreview(data!))).requireValue,
                    controller.when(
                      data: (data) =>
                          SizedBox(width: .infinity, child: CameraPreview(data!)),
                      error: (e, st) => Center(child: Text('Reboot application!')),
                      loading: () =>
                          Container(color: Colors.black, width: .infinity, child: Center(child: CircularProgressIndicator(color: Colors.indigo,),),),
                    ),
                    // Container(color: Colors.black, width: .infinity,),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 10.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: .center,
                            end: .bottomCenter,
                            colors: [.fromARGB(0, 1, 1, 1), Colors.black],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      
              Expanded(child: BottomPanel()),
            ],
          ),
        ),
      ),
    );
  }
}
