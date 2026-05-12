import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import '../features/personal/vm/provider/personal_provider.dart';

class ListItemsScreen extends StatelessWidget {
  const ListItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final value = ref.watch(getPersonalProvider);

        return Scaffold(
          body: Center(
            child: value.when(
              loading: () => Shimmer.fromColors(
                baseColor: Colors.blue.shade300,
                highlightColor: Colors.blue.shade100,
                child: Container(
                  width: 200,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              error: (error, stackTrace) => Text(
                'Error: $error',
                style: const TextStyle(fontSize: 16, color: Colors.red),
              ),
              data: (personal) => SafeArea(
                child: Text(
                  personal.fullName,
                  style: const TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
