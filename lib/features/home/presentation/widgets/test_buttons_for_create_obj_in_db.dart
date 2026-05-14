import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linze/features/home/presentation/controllers/home_page_controller.dart';

class TestButtorn extends ConsumerWidget {
  const TestButtorn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homePageControllerProvider.notifier);
    return Expanded(
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
    );
  }
}
