import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reportautomation/features/report_generator/providers/report_provider.dart';

class UploadButton extends StatelessWidget {
  const UploadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ReportProvider>(
      builder: (context, provider, child) {
        final file = provider.audioFile;

        return Column(
          children: [
            InkWell(
              onTap: provider.isLoading ? null : () => provider.pickAudioFile(),
              borderRadius: BorderRadius.circular(16),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Theme.of(
                    context,
                  ).colorScheme.surfaceContainerHighest.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.5),
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      file != null
                          ? Icons.audiotrack
                          : Icons.cloud_upload_outlined,
                      size: 48,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      file != null ? file.name : "Tap to Upload Audio Meeting",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    if (file == null)
                      Text(
                        "Supports MP3, M4A, WAV",
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall?.copyWith(color: Colors.grey),
                      ),
                  ],
                ),
              ),
            ),
            if (file != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "Size: ${(file.size / 1024 / 1024).toStringAsFixed(2)} MB",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
          ],
        );
      },
    );
  }
}
