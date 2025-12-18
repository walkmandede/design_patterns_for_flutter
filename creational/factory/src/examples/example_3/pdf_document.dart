import 'document.dart';

class PDFDocument implements Document {
  @override
  void open() {
    print('Opening PDF document...');
    print('Loading PDF renderer...');
    print('Parsing PDF structure...');
  }

  @override
  void save(String filename) {
    print('Saving as PDF: $filename.pdf');
    print('Compressing images...');
    print('Generating PDF structure...');
    print('Writing to disk...');
  }

  @override
  void close() {
    print('Closing PDF document');
    print('Releasing memory...');
  }

  @override
  String getFormat() => 'PDF';
}
