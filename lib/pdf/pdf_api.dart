// import 'dart:io';

// import 'package:http/http.dart'as http;

// class PDFApi {
//   static Future<File> loadNetwork(String url)async{
//     final response = await http.get(Uri.parse(url));
//     final bytes = response.bodyBytes;

//     return _storeFile(url,bytes);
//   }

//   static Future<File> _storeFile(String url, List<int> bytes){
//     final filename = url.split('/').last;
//   }
// }