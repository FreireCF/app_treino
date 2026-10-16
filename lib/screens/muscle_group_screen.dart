import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/widgets/muscle_group_card.dart';
import '../models/muscle_group.dart';

class MuscleGroupsScreen extends StatelessWidget {
  const MuscleGroupsScreen({
    super.key,
    required this.groups,
    this.onGroupTap,
  });

  final List<MuscleGroup> groups;
  final ValueChanged<MuscleGroup>? onGroupTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Treinos')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.2,
        ),
        itemCount: groups.length,
        itemBuilder: (context, i) {
          final g = groups[i];
          return MuscleGroupCard(
            title: g.name,
            subtitle: g.exerciseCount == 1
                ? '1 exercício'
                : '${g.exerciseCount} exercícios',
            icon: SvgPicture.asset(g.iconPath),
            onTap: () => onGroupTap?.call(g),
          );
        },
      ),
    );
  }
}