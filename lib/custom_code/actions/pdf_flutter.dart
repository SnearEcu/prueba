// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:flutter_html_to_pdf/flutter_html_to_pdf.dart';
import 'package:path_provider/path_provider.dart';

Future<String> pdfFlutter() async {
  // Add your function code here!
  String ubicacion;
  Directory generatedPdfFilePath = await getApplicationDocumentsDirectory();
  ubicacion = generatedPdfFilePath.path;
  var htmlContent = """
<!DOCTYPE html>
<html>
<head>
  <style>
  table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
  }
  th, td, p {
    padding: 5px;
    text-align: left;
  }
  </style>
</head>
  <body>
    <h2>PDF Generated with flutter_html_to_pdf plugin</h2>
    <table style="width:100%">
      <caption>Sample HTML Table</caption>
      <tr>
        <th>Month</th>
        <th>Savings</th>
      </tr>
      <tr>
        <td>January</td>
        <td>100</td>
      </tr>
      <tr>
        <td>February</td>
        <td>50</td>
      </tr>
    </table>
    <p>Image loaded from web</p>
    <img src="https://i.imgur.com/wxaJsXF.png" alt="web-img">
  </body>
</html>
""";
  String targetFileName = "PruebaPdf";
  final generatedPdfFile = await FlutterHtmlToPdf.convertFromHtmlContent(
      htmlContent, ubicacion, targetFileName);
  String ubicacionPdf = generatedPdfFile.path;
  return ubicacionPdf;
}
