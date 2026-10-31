import 'package:flutter/material.dart';

import 'models/muscle_group_model.dart';
import 'screens/muscle_group_screen.dart';

void main() => runApp(const PreviewApp());

const grupos = [
  MuscleGroup(
    name: 'Peito',
    exerciseCount: 6,
    iconPath: 'assets/icons/peito.svg',
  ),
  MuscleGroup(
    name: 'Costas',
    exerciseCount: 7,
    iconPath: 'assets/icons/costas.svg',
  ),
  MuscleGroup(
    name: 'Pernas',
    exerciseCount: 8,
    iconPath: 'assets/icons/pernas.svg',
  ),
  MuscleGroup(
    name: 'Ombros',
    exerciseCount: 5,
    iconPath: 'assets/icons/ombros.svg',
  ),
  MuscleGroup(
    name: 'Bíceps',
    exerciseCount: 4,
    iconPath: 'assets/icons/biceps.svg',
  ),
  MuscleGroup(
    name: 'Tríceps',
    exerciseCount: 1,
    iconPath: 'assets/icons/triceps.svg',
  ),
];

class PreviewApp extends StatelessWidget {
  const PreviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: MuscleGroupsScreen(
        groups: grupos,
        onGroupTap: (g) => debugPrint('Abrir ${g.name}'),
      ),
    );
  }
}
