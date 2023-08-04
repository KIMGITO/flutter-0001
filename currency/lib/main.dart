

import 'package:flutter/material.dart';

void main(){
  runApp(const Currency());
}

class Currency extends StatefulWidget{
  const Currency({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Currency();
  }
}

class _Currency extends State <Currency>{
  String amount = "0";
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title:const Text("Currency Converter"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FractionallySizedBox(
                  widthFactor: .8,
                  child: Column(
                    children: [
                      Card(
                      color:const Color.fromARGB(255, 255, 255, 255),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child:  Center(
                          child: Text("$amount     USD",
                          style:const  TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          )
                          ),
                        ),
                      ),
                    ),
                     Padding(
                      padding:const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: TextField(
                        controller: textEditingController,
                        onSubmitted: (String value){
                          setState(() {
                            amount = (double.parse(value)/143).toStringAsFixed(4);
                          });
                        },
                        style: const TextStyle(
                          color: Color.fromARGB(255, 53, 13, 197)
                          
                        ),
                        decoration:const InputDecoration(
                          
                          contentPadding: EdgeInsets.fromLTRB(15, 15, 8, 10),
                          isDense: true,
                          hintText: "Enter Amount in kesh",
                          
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 98, 106, 107),
                          ),
                          suffixText: "Ksh",
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)
                            )
                          ),
                        ),
                        
                      ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              
                              setState(() {
                                amount =
                                  (double.parse(textEditingController.text) /
                                          143)
                                      .toStringAsFixed(4);
                              });
                              
                            },
                            child: Row(
                              children: [
                                Container(
                                  padding:const EdgeInsets.fromLTRB(4, 0, 9, 0),
                                  child:const Text("Convert"),
                                ),
                                const Icon(Icons.currency_exchange)
                              ],
                            ),
                            )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

      ),
    ));
  }

  
}