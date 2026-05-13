import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:linze/features/home/presentation/controllers/home_page_controller.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homePageControllerProvider.notifier);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  const Text('Click for create loading document'),
                  ElevatedButton.icon(
                    onPressed: () => state.testCreateLoadingDocument(),
                    label: Text('Create loding document'),
                  ),

                  const Text('Click for create finished document'),
                  ElevatedButton.icon(
                    onPressed: () => state.testCreateFinishedDocument(),
                    label: Text('Create Finished data'),
                  ),

                  const Text('Click for del db'),
                  ElevatedButton.icon(
                    onPressed: () => state.deleteAllDB(),
                    label: Text('delete db'),
                  ),
                ],
              ),
            ),
            Container(
              height: 10.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .center,
                  end: .bottomCenter,
                  colors: [.fromARGB(0, 1, 1, 1), Colors.black],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black),
              child: SizedBox(
                height: 100.h,
                width: .infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: .center,
                        child: IconButton(
                          onPressed: () => context.go('/docs'),
                          icon: Icon(Icons.camera_alt),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: .center,
                        child: IconButton(
                          onPressed: () => print('Take photo'),
                          icon: Icon(
                            Icons.circle_sharp,
                            size: 50.h,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(alignment: .center, child: Text('data')),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
