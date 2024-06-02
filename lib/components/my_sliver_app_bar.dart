import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({
    super.key,
    required this.child,
    required this.title
   });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      centerTitle: true,
      pinned: true,
      actions: [
        IconButton(
            onPressed: (){},
            icon: const Icon(Icons.shopping_bag_outlined))
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text("Yengil taom"),
      flexibleSpace: FlexibleSpaceBar(
        title: title,
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        centerTitle: true,
        expandedTitleScale: 1,
      ),
    );
  }
}
