import 'dart:io';

void fileHandlingExample() async {
  // File Reading
  try {
    File inputFile = File('input.txt');
    String fileContent = await inputFile.readAsString();
    print("File Content: $fileContent");

    // File Writing
    File outputFile = File('output.txt');
    await outputFile.writeAsString("This is the new content.\nOriginal: $fileContent");
    print("File writing complete.");
  } catch (e) {
    print("Error during file operations: $e");
  }
}


void main()
{
  fileHandlingExample();
}
