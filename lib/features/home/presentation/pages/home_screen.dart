import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linze/features/home/presentation/widgets/bottom_panel.dart';
import 'package:linze/features/home/presentation/widgets/test_buttons_for_create_obj_in_db.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            TestButtorn(),
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
            BottomPanel()
          ],
        ),
      ),
    );
  }
}
