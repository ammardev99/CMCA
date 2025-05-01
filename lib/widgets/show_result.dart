import 'package:cmca/config/utils/formatting.dart';
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



class ResultTable extends StatelessWidget {
  final String quantity;
  final String cost;
  final String quality;
  final String manPower;
  final String duration;
  final String lifeSpan;
  final String samplesImages;
  final String standardProcedure;
  final String serviceProvidersContact;

  const ResultTable({
    super.key,
    required this.quantity,
    required this.cost,
    required this.quality,
    required this.manPower,
    required this.duration,
    required this.lifeSpan,
    required this.samplesImages,
    required this.standardProcedure,
    required this.serviceProvidersContact,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> details = [
      {'label': 'Quantity', 'value': quantity},
      {'label': 'Cost', 'value': cost},
      {'label': 'Quality', 'value': quality},
      {'label': 'Man Power', 'value': manPower},
      {'label': 'Duration', 'value': duration},
      {'label': 'Life span', 'value': lifeSpan},
      {'label': 'Samples Images', 'value': samplesImages},
      {'label': 'Standard Procedure', 'value': standardProcedure},
      {'label': 'Service providers contact', 'value': serviceProvidersContact},
    ];

    return SingleChildScrollView(
      child: DataTable(
        columns: const [
          DataColumn(label: Text('Details', style: TextStyle(fontWeight: FontWeight.bold))),
          DataColumn(label: Text('Values', style: TextStyle(fontWeight: FontWeight.bold))),
        ],
        rows: details
            .map((detail) => DataRow(cells: [
                  DataCell(Text(detail['label'] ?? '')),
                  DataCell(Text(detail['value'] ?? '')),
                ]))
            .toList(),
      ),
    );
  }
}


class ResultTable1 extends StatelessWidget {
  final String? quantity;
  final String? cost;
  final String? quality;
  final String? manPower;
  final String? duration;
  final String? lifeSpan;
  final String? samplesImages;
  final String? standardProcedure;
  final String? serviceProvidersContact;

  const ResultTable1({
    super.key,
    this.quantity,
    this.cost,
    this.quality,
    this.manPower,
    this.duration,
    this.lifeSpan,
    this.samplesImages,
    this.standardProcedure,
    this.serviceProvidersContact,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String?>> details = [
      {'label': 'Quantity', 'value': quantity ?? ''},
      {'label': 'Cost', 'value': cost ?? ''},
      {'label': 'Quality', 'value': quality ?? ''},
      {'label': 'Man Power', 'value': manPower ?? ''},
      {'label': 'Duration', 'value': duration ?? ''},
      {'label': 'Life span', 'value': lifeSpan ?? ''},
      {'label': 'Samples Images', 'value': samplesImages ?? ''},
      {'label': 'Standard Procedure', 'value': standardProcedure ?? ''},
      {'label': 'Service providers contact', 'value': serviceProvidersContact ?? ''},
    ];

    return SingleChildScrollView(
      child: DataTable(
        columns: const [
          DataColumn(
            label: Text(
              'Details',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          DataColumn(
            label: Text(
              'Values',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
        rows: details
            .map((detail) => DataRow(cells: [
                  DataCell(Text(detail['label'] ?? '')),
                  DataCell(Text(detail['value'] ?? '')),
                ]))
            .toList(),
      ),
    );
  }
}
