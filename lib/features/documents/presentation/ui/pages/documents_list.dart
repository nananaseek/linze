import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:linze/features/documents/presentation/controllers/document_controllers.dart';
import 'package:linze/features/documents/presentation/ui/widgets/item_for_list.dart';

class DocumentsListScreen extends ConsumerWidget {
  const DocumentsListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(documentControllerProvider);
    return state.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Document list'),
            leading: IconButton(
              onPressed: () => context.go('/'),
              icon: Icon(Icons.arrow_back),
            ),
          ),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              final item = data[index];
              return InkWell(
                onTap: () => context.push('/docs/item/${item.id}'),
                child: Item(name: item.name, imgPath: item.imgPath),
              );
            },
          ),
        );
      },
      error: (error, stackTrace) {
        return Scaffold(
          appBar: AppBar(title: Text(error.toString())),
          body: Center(child: Text(stackTrace.toString())),
        );
      },
      loading: () {
        return Scaffold(appBar: AppBar(title: Text('loading')));
      },
    );
  }
}
