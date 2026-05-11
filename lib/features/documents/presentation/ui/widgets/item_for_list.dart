import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linze/sheared/widgets/widgets.dart';

part 'preview.dart';

class Item extends ConsumerWidget {
  final String name;
  final String imgPath;

  const Item({super.key, required this.name, required this.imgPath});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ItemContainer(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Expanded(
            child: Stack(
              alignment: .center,
              children: [
                Icon(Icons.photo),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/p.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(margin: .symmetric(vertical: 5), child: Divider()),
          Text(name),
        ],
      ),
    );
  }
}
