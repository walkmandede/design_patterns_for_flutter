import 'document.dart';

abstract class DocumentCreator {
  Document createDocument();

  void editDocument(String filename) {
    print('\n${"─" * 50}');
    Document doc = createDocument();
    print('Document Type: ${doc.getFormat()}');
    print('${"─" * 50}');
    doc.open();
    print('\nEditing content...');
    print('Making changes to: $filename');
    doc.save(filename);
    doc.close();
    print('${"─" * 50}\n');
  }
}
