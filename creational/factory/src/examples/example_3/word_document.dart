import 'document.dart';

class WordDocument implements Document {
  @override
  void open() {
    print('Opening Word document...');
    print('Loading DOCX parser...');
    print('Reading document structure...');
  }

  @override
  void save(String filename) {
    print('Saving as Word: $filename.docx');
    print('Packaging XML files...');
    print('Compressing to DOCX...');
    print('Writing to disk...');
  }

  @override
  void close() {
    print('Closing Word document');
    print('Cleaning up temporary files...');
  }

  @override
  String getFormat() => 'Microsoft Word';
}
