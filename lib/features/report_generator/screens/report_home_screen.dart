import 'package:flutter/material.dart';
import 'dart:io';
import 'package:provider/provider.dart';
import 'package:reportautomation/features/report_generator/providers/report_provider.dart';
import 'package:reportautomation/features/report_generator/widgets/step_indicator.dart';
import 'package:reportautomation/features/report_generator/widgets/upload_button.dart';
import 'package:reportautomation/features/report_generator/widgets/generate_button.dart';
import 'package:reportautomation/features/report_generator/widgets/storage_file_picker.dart';

import 'package:printing/printing.dart'; // For previewing standard PDFs easily

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

                // Bottom Action Bar (Generate Button or Sign Button)
                if (provider.currentStepIndex == 0)
                  const GenerateButton(), // Only show generate on step 0

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
          TextButton.icon(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const StorageFilePicker(),
              );
            },
            icon: const Icon(Icons.cloud_download_outlined),
            label: const Text("Select from Storage"),
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
              child: PdfPreview(
                build: (format) =>
                    File(provider.pdfReport!.filePath).readAsBytes(),
                useActions: false, // Hide built-in actions to force custom flow
                allowPrinting: false,
                allowSharing: false,
                canChangeOrientation: false,
                canChangePageFormat: false,
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
                // Reset flow (in a real app, maybe navigate away or reset provider)
              },
              child: const Text("Done"),
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
}
