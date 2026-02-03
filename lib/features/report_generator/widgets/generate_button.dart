import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reportautomation/features/report_generator/providers/report_provider.dart';

class GenerateButton extends StatelessWidget {
  const GenerateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ReportProvider>(
      builder: (context, provider, child) {
        final isEnabled = provider.audioFile != null && !provider.isLoading;

        return SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            onPressed: isEnabled
                ? () => provider.startGenerationPipeline()
                : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
              disabledBackgroundColor: Colors.grey.shade300,
            ),
            child: provider.isLoading
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      ),
                      SizedBox(width: 12),
                      Text("Processing..."),
                    ],
                  )
                : const Text(
                    "GENERATE REPORT",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
          ),
        );
      },
    );
  }
}
