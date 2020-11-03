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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[new Image.asset("assets/images/${currentDrug["image"]}",height: 300),
                              Text("\n"),
                              Text(currentDrug['name'],style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                              Text("RM"+currentDrug['price'].toString()+"/item", style: const TextStyle(fontSize: 17, color: Colors.grey),),
                              Text("\n"),
                              Align(
                                alignment: Alignment(-0.875, 0),
                                child: Text("Description:",style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                                child: Text(currentDrug['description'],style: const TextStyle(fontSize: 17, color: Colors.grey),textAlign: TextAlign.justify,),
                              ),
                              Align(
                                alignment: Alignment(-0.875, 0),
                                child: Text("Precautions:",style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                                child: Text(currentDrug['precautions'],style: const TextStyle(fontSize: 17, color: Colors.grey),textAlign: TextAlign.justify,),
                              ),                              
                              ],
            )
        ),
        ),
    );
  }
}
