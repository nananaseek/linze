import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:linze/features/documents/documents.dart';
import 'package:linze/features/home/home.dart';

import 'router_name.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: homeRoute,
        builder: (context, state) => HomePage(),
        routes: [
          GoRoute(
            path: 'docs',
            name: documentListRoute,
            builder: (context, state) => DocumentsListScreen(),
          ),
        ],
      ),
      GoRoute(
        path: '/docs/item/:id',
        name: documentItemRoute,
        builder: (context, state) {
          final docId = state.pathParameters['id']!;
          return Document(id: docId);
        },
        routes: [
          GoRoute(
            path: '/photo',
            name: photoRoute,
            builder: (context, state) {
              final id = state.pathParameters['id']!;
              return FullScreenImagePage(id: id);
            },
          ),
        ],
      ),
    ],
  );
});
