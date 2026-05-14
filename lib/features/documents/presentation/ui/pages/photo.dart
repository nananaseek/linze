import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:linze/features/documents/presentation/controllers/document_controllers.dart';

class FullScreenImagePage extends ConsumerWidget {
  final String id;

  const FullScreenImagePage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncDocument = ref.watch(getDocumentByIdProvider(id));
    return asyncDocument.whenData(
      (data) =>  Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white, size: 30),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Hero(
          tag: data.imgPath,
          child: InteractiveViewer(
            panEnabled: true,
            minScale: 0.5,
            maxScale: 4.0,
            child: Image.asset(
              data.imgPath,
              fit: BoxFit.contain, 
            ),
          ),
        ),
      )
      )
      
      ).asData?.value ?? CircularProgressIndicator();
    
  }}