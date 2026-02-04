import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  final int currentStep;
  final List<String> steps;

  final Function(int)? onStepSelected;

  const StepIndicator({
    super.key,
    required this.currentStep,
    required this.steps,
    this.onStepSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(steps.length, (index) {
            final isCompleted = index < currentStep;
            final isCurrent = index == currentStep;

            return Row(
              children: [
                // Step Circle
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isCompleted
                        ? Colors.green
                        : (isCurrent
                              ? Colors.blue
                              : Colors.grey.withValues(alpha: 0.3)),
                    boxShadow: isCurrent
                        ? [
                            BoxShadow(
                              color: Theme.of(
                                context,
                              ).primaryColor.withValues(alpha: 0.2),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ]
                        : [],
                  ),
                  child: InkWell(
                    onTap: () => onStepSelected?.call(index),
                    customBorder: const CircleBorder(),
                    child: Center(
                      child: isCompleted
                          ? const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 20,
                            )
                          : Text(
                              '${index + 1}',
                              style: TextStyle(
                                color: isCurrent || isCompleted
                                    ? Colors.white
                                    : Colors.grey.shade600,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                // Step Label (Conditional visibility on small screens could be added)
                Text(
                  steps[index],
                  style: TextStyle(
                    fontWeight: isCurrent ? FontWeight.bold : FontWeight.normal,
                    color: isCurrent
                        ? Theme.of(context).primaryColor
                        : Colors.grey.shade700,
                  ),
                ),

                // Arrow/Line
                if (index < steps.length - 1)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      width: 30,
                      height: 2,
                      color: isCompleted ? Colors.green : Colors.grey.shade300,
                    ),
                  ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
