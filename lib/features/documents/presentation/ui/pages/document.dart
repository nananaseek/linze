import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:linze/features/documents/presentation/controllers/document_controllers.dart';
import 'package:linze/features/documents/presentation/controllers/document_font_size_controllers.dart';

import 'package:linze/sheared/widgets/widgets.dart';

class Document extends ConsumerWidget {
  final String id;
  const Document({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncDocument = ref.watch(getDocumentByIdProvider(id));
    return asyncDocument.when(
      data: (data) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(data.name),
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: () => ref
                  .watch(documentFontSizeControllerProvider.notifier)
                  .increase(),
              icon: Icon(Icons.text_increase),
            ),
            SizedBox(width: 5.w),

            IconButton(
              onPressed: () => ref
                  .watch(documentFontSizeControllerProvider.notifier)
                  .decrease(),
              icon: Icon(Icons.text_decrease),
            ),
          ],
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  ItemContainer(
                    height: 200.w,
                    width: .infinity,
                    child: Stack(
                      alignment: .center,
                      children: [
                        Icon(Icons.photo),
                        GestureDetector(
                          onTap: () =>
                              context.push('/docs/item/${data.id}/photo'),
                          child: Image.file(
                            File(data.imgPath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Consumer(
                    builder: (context, ref, child) {
                      final fontSize = ref.watch(
                        documentFontSizeControllerProvider,
                      );
                      return ItemContainer(
                        width: .infinity,
                        alignment: .topCenter,
                        child: SelectionArea(
                          child: Text(
                            data.content ?? '',
                            style: TextStyle(fontSize: fontSize),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
      error: (error, stackTrace) => Scaffold(
        appBar: AppBar(title: Text('error')),
        body: Center(child: Text('Critical Error')),
      ),
      loading: () => Scaffold(
        appBar: AppBar(title: Text('Loading'), centerTitle: true),
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }

  // DocumentEntity getItem({required WidgetRef ref, required String id}) {
  //   final provider =
  //   return provider;
  // }
}
