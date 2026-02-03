import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reportautomation/core/services/storage_service.dart';
import 'package:reportautomation/features/report_generator/providers/report_provider.dart';

class StorageFilePicker extends StatefulWidget {
  const StorageFilePicker({super.key});

  @override
  State<StorageFilePicker> createState() => _StorageFilePickerState();
}

class _StorageFilePickerState extends State<StorageFilePicker> {
  final _storageService = StorageService();
  bool _isLoading = true;
  List<Map<String, String>> _files = [];
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadFiles();
  }

  Future<void> _loadFiles() async {
    try {
      final files = await _storageService.listAudioFiles();
      setState(() {
        _files = files;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Select From Storage"),
      content: SizedBox(
        width: double.maxFinite,
        height: 400,
        child: _buildContent(),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancel"),
        ),
      ],
    );
  }

  Widget _buildContent() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, color: Colors.red, size: 48),
            const SizedBox(height: 16),
            Text(_error!, textAlign: TextAlign.center),
            TextButton(
              onPressed: () {
                setState(() {
                  _isLoading = true;
                  _error = null;
                });
                _loadFiles();
              },
              child: const Text("Retry"),
            ),
          ],
        ),
      );
    }

    if (_files.isEmpty) {
      return const Center(child: Text("No audio files found."));
    }

    return ListView.separated(
      itemCount: _files.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final file = _files[index];
        return ListTile(
          leading: const Icon(Icons.audio_file, color: Colors.blue),
          title: Text(file['name'] ?? 'Unknown'),
          onTap: () {
            Provider.of<ReportProvider>(
              context,
              listen: false,
            ).selectRemoteAudio(file['url']!, file['name']!);
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
