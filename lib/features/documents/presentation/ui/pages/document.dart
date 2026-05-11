import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:linze/core/utils.dart';

import 'package:linze/sheared/widgets/widgets.dart';

class Document extends ConsumerStatefulWidget {
  final String id;
  const Document({super.key, required this.id});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DocumentState();
}

class _DocumentState extends ConsumerState<Document> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Document name'),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () => print('Текст збільшився'),
            icon: Icon(Icons.text_increase),
          ),
          SizedBox(width: 5.w),

          IconButton(
            onPressed: () => print('Текст зменшився'),
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
                  child: Stack(
                    alignment: .center,
                    children: [
                      Icon(Icons.photo),
                      GestureDetector(
                        onTap: () => context.push('/docs/item/photo'),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/p.jpg'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ItemContainer(
                  width: .infinity,
                  alignment: .topCenter,
                  child: SelectionArea(child: Text(lorem)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}