import 'package:flutter/material.dart';

class DrugDetail extends StatelessWidget {
  dynamic currentDrug;

  DrugDetail(dynamic drug) {
    currentDrug = drug;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(currentDrug['name'])),
    );
  }
}
