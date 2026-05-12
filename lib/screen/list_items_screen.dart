import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/personal/vm/provider/personal_provider.dart';

class ListItemsScreen extends StatelessWidget {
  const ListItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final value = ref.watch(getPersonalProvider);

        return Scaffold(
          // appBar: AppBar(title: Text('UI Widgets')),
          body: Center(
            child: Text(value.requireValue.fullName,
                style: TextStyle(fontSize: 20, color: Colors.blue)),
          ),
        );
      },);
  }
}
