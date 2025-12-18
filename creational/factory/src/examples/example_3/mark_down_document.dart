import 'document.dart';

class MarkdownDocument implements Document {
  @override
  void open() {
    print('Opening Markdown document...');
    print('Reading plain text...');
  }

  @override
  void save(String filename) {
    print('Saving as Markdown: $filename.md');
    print('Writing plain text...');
  }

  @override
  void close() {
    print('Closing Markdown document');
  }

  @override
  String getFormat() => 'Markdown';
}
