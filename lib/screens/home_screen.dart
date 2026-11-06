import 'package:flutter/material.dart';

import '../core/widgets/exercise_card.dart';
import '../models/muscle_group_model.dart';
import '../screens/muscle_group_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<MuscleGroup> groups = const [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Text(
                        'BeeFit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ExerciseCard(
                      onRegisterWorkout: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MuscleGroupsScreen(groups: groups),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
