import 'export.dart';

class PDFCreator extends DocumentCreator {
  @override
  Document createDocument() => PDFDocument();
}
