import 'package:cmca/widgets/formatting.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class DetailsTable extends StatelessWidget {
  final List<Map<String, dynamic>> details = [
    {'label': 'Quantity', 'value': '000'},
    {'label': 'Cost', 'value': '\$000'},
    {'label': 'Quality', 'value': 'High'},
    {'label': 'Man Power', 'value': '5 workers'},
    {'label': 'Duration', 'value': '2 weeks'},
    {'label': 'Life span', 'value': '5 years'},
    {'label': 'Samples Images', 'value': 'View Images'},
    {'label': 'Standard Procedure', 'value': 'ISO Certified'},
    {'label': 'Service providers contact', 'value': '123-456-7890'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DataTable(
        columns: [
          DataColumn(label: headingText('Details')),
          DataColumn(label: headingText('Values')),
        ],
        rows: details
            .map((detail) => DataRow(cells: [
                  DataCell(Text(detail['label'])),
                  DataCell(Text(detail['value'].toString())),
                ]))
            .toList(),
      ),
    );
  }
}
