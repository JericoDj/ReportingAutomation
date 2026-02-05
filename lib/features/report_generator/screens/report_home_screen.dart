import 'package:flutter/material.dart';
import 'dart:io';
import 'package:provider/provider.dart';
import 'package:reportautomation/features/report_generator/providers/report_provider.dart';
import 'package:reportautomation/features/report_generator/widgets/step_indicator.dart';
import 'package:reportautomation/features/report_generator/widgets/upload_button.dart';
import 'package:reportautomation/features/report_generator/widgets/storage_file_picker.dart';
import 'package:reportautomation/features/report_generator/widgets/session_picker.dart';

import 'package:printing/printing.dart'; // For previewing standard PDFs easily
import 'package:flutter/foundation.dart'; // For kIsWeb
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:reportautomation/features/report_generator/widgets/web_pdf_view/web_pdf_view.dart';

class ReportHomeScreen extends StatelessWidget {
  const ReportHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final steps = [
      "Upload",
      "Transcribe",
      "Analyze",
      "Report JSON",
      "PDF Gen",
      "Review & Sign",
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text('Real Estate AI Reporter'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      body: Consumer<ReportProvider>(
        builder: (context, provider, child) {
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Step Indicator
                StepIndicator(
                  currentStep: provider.currentStepIndex,
                  steps: steps,
                  onStepSelected: (index) =>
                      _showStepData(context, provider, index),
                ),
                const SizedBox(height: 40),

                // Main Content Area
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: _buildMainContent(context, provider),
                  ),
                ),

                const SizedBox(height: 24),

                // Bottom Action Bar (Generate / Continue / Pause / Stop / Sign)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // START / CONTINUE
                        if (!provider.isLoading &&
                            provider.currentStepIndex < 4 &&
                            provider.pdfReport == null)
                          ElevatedButton.icon(
                            onPressed: () => provider.continueGeneration(),
                            icon: Icon(
                              provider.currentStepIndex == 0
                                  ? Icons.play_arrow
                                  : Icons.fast_forward,
                            ),
                            label: Text(
                              provider.currentStepIndex == 0
                                  ? "GENERATE REPORT"
                                  : "CONTINUE PROCESS",
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade600,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 16,
                              ),
                            ),
                          ),

                        // PAUSE
                        if (provider.isLoading)
                          ElevatedButton.icon(
                            onPressed: () => provider.pauseGeneration(),
                            icon: const Icon(Icons.pause),
                            label: const Text("PAUSE"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange.shade600,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 16,
                              ),
                            ),
                          ),

                        const SizedBox(width: 16),

                        // STOP
                        if (provider.isLoading ||
                            (provider.currentStepIndex > 0 &&
                                provider.currentStepIndex < 4))
                          OutlinedButton.icon(
                            onPressed: () => provider.stopGeneration(),
                            icon: const Icon(Icons.stop),
                            label: const Text("STOP"),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.red,
                              side: const BorderSide(color: Colors.red),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 16,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),

                if (provider.currentStepIndex == 4 &&
                    provider.pdfReport != null)
                  SizedBox(
                    height: 56,
                    child: ElevatedButton.icon(
                      onPressed: provider.isLoading
                          ? null
                          : () => provider.signAndApprove(),
                      icon: const Icon(Icons.edit_document),
                      label: const Text("DIGITALLY SIGN REPORT"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade600,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),

                // Error Display
                if (provider.errorMessage != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.red.shade200),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.error_outline, color: Colors.red),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              provider.errorMessage!,
                              style: TextStyle(color: Colors.red.shade800),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showStepData(
    BuildContext context,
    ReportProvider provider,
    int stepIndex,
  ) {
    if (provider.currentStepIndex < stepIndex && !provider.isLoading) {
      // Don't show data for future steps if we haven't reached them
    }

    String title = "";
    Widget content = const SizedBox.shrink();

    switch (stepIndex) {
      case 1: // Transcribe
        if (provider.transcription == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("No transcription data yet.")),
          );
          return;
        }
        title = "Transcription Data";
        content = SingleChildScrollView(
          child: SelectableText(provider.transcription!.transcription),
        );
        break;
      case 2: // Analyze
        if (provider.analysis == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("No analysis data yet.")),
          );
          return;
        }
        title = "Analysis Data";

        String formatString(String? input) {
          if (input == null || input.isEmpty) return 'Unknown';
          return input
              .replaceAll('_', ' ')
              .split(' ')
              .map(
                (word) => word.isNotEmpty
                    ? '${word[0].toUpperCase()}${word.substring(1)}'
                    : '',
              )
              .join(' ');
        }

        content = SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDialogRow("Topic", formatString(provider.analysis!.type)),
              const SizedBox(height: 12),
              _buildDialogRow(
                "AI Confidence",
                "${((provider.analysis?.confidence ?? 0) * 100).toStringAsFixed(1)}%",
              ),
              const SizedBox(height: 12),
              const Text(
                "Keywords:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 4),
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: provider.analysis!.keywords
                    .map(
                      (k) => Chip(
                        label: Text(k),
                        backgroundColor: Colors.blue.shade50,
                        labelStyle: TextStyle(color: Colors.blue.shade800),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 16),
              _buildDialogRow(
                "Document Type",
                formatString(provider.analysis!.recommendedReportType),
              ),
            ],
          ),
        );
        break;
      case 3: // Report JSON
        if (provider.reportJson == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("No report JSON data yet.")),
          );
          return;
        }
        title = "Report JSON";
        content = SingleChildScrollView(
          child: SelectableText(provider.reportJson!.toJson().toString()),
        );
        break;
      case 4: // PDF Gen
      case 5: // Review & Sign (Step 5 shows the final signed PDF)
        if (provider.pdfReport == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("No PDF generated yet.")),
          );
          return;
        }
        title = stepIndex == 5 ? "Signed & Approved Report" : "PDF Report";
        content = SizedBox(
          height: 500, // Fixed height for dialog
          width: double.maxFinite,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child:
                      kIsWeb &&
                          provider.pdfReport!.pdfBytes == null &&
                          provider.pdfReport!.downloadUrl != null
                      ? WebPdfViewer(url: provider.pdfReport!.downloadUrl!)
                      : PdfPreview(
                          build: (format) async {
                            if (provider.pdfReport!.pdfBytes != null) {
                              return provider.pdfReport!.pdfBytes!;
                            }
                            final url = provider.pdfReport!.downloadUrl;
                            if (url != null && url.startsWith('http')) {
                              try {
                                final response = await http.get(Uri.parse(url));
                                if (response.statusCode == 200) {
                                  return response.bodyBytes;
                                }
                                debugPrint(
                                  'PDF loaded failed with status: ${response.statusCode}',
                                );
                              } catch (e) {
                                debugPrint('Error loading PDF from URL: $e');
                              }
                            }
                            if (kIsWeb) {
                              return Uint8List(0);
                            }
                            return File(
                              provider.pdfReport!.filePath,
                            ).readAsBytes();
                          },
                          useActions:
                              false, // Hide built-in actions to force custom flow
                          allowPrinting: false,
                          allowSharing: false,
                          canChangeOrientation: false,
                          canChangePageFormat: false,
                          loadingWidget: const Center(
                            child: CircularProgressIndicator(),
                          ),
                          onError: (context, error) => Center(
                            child: Text(
                              "Preview unavailable ($error).\nPlease use the 'Open PDF' button below.",
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.red),
                            ),
                          ),
                        ),
                ),
              ),
              if (provider.pdfReport!.downloadUrl != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextButton.icon(
                    onPressed: () async {
                      final uri = Uri.parse(provider.pdfReport!.downloadUrl!);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      } else {
                        debugPrint("Could not launch $uri");
                      }
                    },
                    icon: const Icon(Icons.open_in_new),
                    label: const Text("Open PDF in Browser"),
                  ),
                ),
            ],
          ),
        );
        break;
      default:
        return;
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: SizedBox(width: double.maxFinite, child: content),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Close"),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent(BuildContext context, ReportProvider provider) {
    // 0: Upload
    if (provider.currentStepIndex == 0) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Start New Report",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            "Upload a meeting recording to begin analysis.",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 32),
          const UploadButton(),
          const SizedBox(height: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const StorageFilePicker(),
                  );
                },
                icon: const Icon(Icons.cloud_download_outlined),
                label: const Text("Storage File"),
              ),
              const SizedBox(width: 16),
              TextButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const SessionPicker(),
                  );
                },
                icon: const Icon(Icons.history),
                label: const Text("Resume Session"),
              ),
            ],
          ),
        ],
      );
    }

    // 1-4: Processing Steps
    if (provider.currentStepIndex > 0 &&
        provider.currentStepIndex < 5 &&
        provider.isLoading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 24),
          Text(
            _getStatusMessage(provider.currentStepIndex),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ],
      );
    }

    // 4: PDF Ready for Signing (or just viewing outcome if already generated)
    if (provider.currentStepIndex == 4 && provider.pdfReport != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Analysis Complete",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          _buildResultRow(
            "Conversation Type",
            provider.analysis?.type ?? "Unknown",
          ),
          _buildResultRow(
            "Confidence",
            "${((provider.analysis?.confidence ?? 0) * 100).toStringAsFixed(1)}%",
          ),
          const SizedBox(height: 24),
          const Text(
            "Report Preview:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
              ),
              child:
                  kIsWeb &&
                      provider.pdfReport!.pdfBytes == null &&
                      provider.pdfReport!.downloadUrl != null
                  ? WebPdfViewer(url: provider.pdfReport!.downloadUrl!)
                  : PdfPreview(
                      build: (format) async {
                        if (provider.pdfReport!.pdfBytes != null) {
                          return provider.pdfReport!.pdfBytes!;
                        }
                        // Identify if it's a remote URL to fetch
                        final path = provider.pdfReport!.filePath;
                        final url = provider.pdfReport!.downloadUrl;
                        if (url != null && url.startsWith('http')) {
                          try {
                            final response = await http.get(Uri.parse(url));
                            if (response.statusCode == 200) {
                              return response.bodyBytes;
                            }
                            debugPrint(
                              'PDF loaded failed with status: ${response.statusCode}',
                            );
                          } catch (e) {
                            debugPrint('Error loading PDF from URL: $e');
                          }
                        }
                        if (kIsWeb) {
                          return Uint8List(0);
                        }
                        return File(path).readAsBytes();
                      },
                      useActions:
                          false, // Hide built-in actions to force custom flow
                      allowPrinting: false,
                      allowSharing: false,
                      canChangeOrientation: false,
                      canChangePageFormat: false,
                      loadingWidget: const Center(
                        child: CircularProgressIndicator(),
                      ),
                      onError: (context, error) => Center(
                        child: Text(
                          "Preview unavailable ($error).\nPlease use the 'Open PDF' button below.",
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
            ),
          ),
          if (provider.pdfReport!.downloadUrl != null)
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Center(
                child: TextButton.icon(
                  onPressed: () async {
                    final uri = Uri.parse(provider.pdfReport!.downloadUrl!);
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    } else {
                      debugPrint("Could not launch $uri");
                    }
                  },
                  icon: const Icon(Icons.open_in_new),
                  label: const Text("Open PDF in Browser"),
                ),
              ),
            ),
        ],
      );
    }

    // 5/6: Signed & Approved
    if (provider.currentStepIndex >= 5 && provider.pdfReport != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.verified, color: Colors.green, size: 64),
            const SizedBox(height: 24),
            const Text(
              "Report Signed & Approved!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              "Saved to: ${provider.pdfReport!.filePath}",
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                _showStepData(context, provider, 4); // Re-use PDF preview logic
              },
              child: const Text("View Signed Report"),
            ),
          ],
        ),
      );
    }

    // Default fallback
    return const Center(child: Text("Waiting for action..."));
  }

  String _getStatusMessage(int step) {
    switch (step) {
      case 1:
        return "Transcribing Audio...";
      case 2:
        return "Analyzing Conversation...";
      case 3:
        return "Generating Report Structure...";
      case 4:
        return "Creating PDF...";
      default:
        return "Processing...";
    }
  }

  Widget _buildResultRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  Widget _buildDialogRow(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
