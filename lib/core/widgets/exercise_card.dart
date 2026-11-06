import 'package:app_treino/core/widgets/button_default.dart';
import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  final VoidCallback onRegisterWorkout;

  const ExerciseCard({super.key, required this.onRegisterWorkout});

  static const blue = Color(0xFF1683F8);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 20, 18, 17),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE0E0E0)),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Exercícios',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              _ExerciseIcon(),
              SizedBox(width: 11),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cardio',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Nome do exercício',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Row(
            children: [
              Expanded(
                child: _MetricPill(icon: Icons.access_time, text: '10 min'),
              ),
              SizedBox(width: 5),
              Expanded(
                child: _MetricPill(icon: Icons.straighten, text: '1km'),
              ),
              SizedBox(width: 5),
              Expanded(
                child: _MetricPill(
                  icon: Icons.local_fire_department,
                  text: '37 kcal',
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: ButtonDefault(
                text: 'Registrar Treino',
                onPressed: onRegisterWorkout,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ExerciseIcon extends StatelessWidget {
  const _ExerciseIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: const Color(0xFFE8F3FF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Icon(
        Icons.favorite_border,
        color: Color(0xFF1683F8),
        size: 20,
      ),
    );
  }
}

class _MetricPill extends StatelessWidget {
  final IconData icon;
  final String text;

  const _MetricPill({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE7E9ED)),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 9, color: const Color(0xFF1683F8)),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 8, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
