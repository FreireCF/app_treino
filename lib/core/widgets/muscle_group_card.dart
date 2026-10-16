import 'package:flutter/material.dart';

class MuscleGroupCard extends StatefulWidget {
  const MuscleGroupCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
    this.borderRadius = 20,
    this.padding = const EdgeInsets.all(16),
  });

  final String title;
  final String subtitle;
  final Widget icon;
  final VoidCallback? onTap;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  @override
  State<MuscleGroupCard> createState() => MuscleGroupCardState();
}

class MuscleGroupCardState extends State<MuscleGroupCard> {
  bool pressed = false;
  // bool hovered = false;

  void _setPressed(bool value) {
    if (pressed != value) setState(() => pressed = value);
  }

  /*void _setHovered(bool value) {
    if (hovered != value) setState(() => hovered = value);
  }*/

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    return AnimatedScale(
      scale: pressed ? 0.97 : 1.0,
      duration: const Duration(milliseconds: 120),
      curve: Curves.easeOut,
      child: Material(
        // color: _hovered
        //     ? scheme.surfaceContainerHighest
        //     : scheme.surface,
        color: scheme.surface,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          side: BorderSide(color: scheme.outlineVariant),
        ),
        child: InkWell(
          onTap: widget.onTap,
          onTapDown: (_) => _setPressed(true),
          onTapUp: (_) => _setPressed(false),
          onTapCancel: () => _setPressed(false),
          // onHover: _setHovered,
          child: Padding(
            padding: widget.padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 40, height: 40, child: widget.icon),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      widget.subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
