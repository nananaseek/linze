import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linze/features/documents/domain/entity/state_enum_entity.dart';
import 'package:linze/sheared/widgets/widgets.dart';

part 'preview.dart';

class Item extends ConsumerWidget {
  final String name;
  final String imgPath;
  final DocumentState docState;

  const Item({
    super.key,
    required this.name,
    required this.imgPath,
    required this.docState,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ItemContainer(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Expanded(
            child: switch (docState) {
              DocumentState.loding => Center(
                child: CircularProgressIndicator(),
              ),

              DocumentState.finish => Stack(
                alignment: .center,
                children: [
                  Icon(Icons.photo),
                  Container(
                    alignment: .center,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(imgPath)),
                    ),
                  ),
                ],
              ),
            },
          ),
          Container(margin: .symmetric(vertical: 5), child: Divider()),
          Text(name),
        ],
      ),
    );
  }
}
