import 'package:flutter/material.dart';

class Interface extends StatelessWidget {
  const Interface({super.key});

  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FractionallySizedBox(
          widthFactor: .9,
            child: Card(
              borderOnForeground: true,
              color:const Color.fromARGB(255, 242, 244, 247),
              shadowColor: Colors.black,
              child: Container(
                height: 80,
                child:const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          overflow: TextOverflow.fade
                        ),
                      ),
                      Icon(Icons.attach_money_sharp),
                    ],
                  ),
                ),
              ),
            ),
        ),


          FractionallySizedBox(
            widthFactor: 1,
            child: Card(
              shadowColor: const Color.fromARGB(255, 0, 0, 0),
              color: Color.fromARGB(255, 0, 0, 0),
              child: FractionallySizedBox(
                widthFactor: 1,
                alignment: const Alignment(-1, 0),
                child: Container(
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Column(
                    children: [
                      const TextField(
                        
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 209, 233, 226),
                          isDense: true,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Color.fromARGB(255, 166, 16, 185)),
                          hintText: "Enter Amount in Ksh",
                          suffixIcon: Icon(
                            Icons.wallet_rounded,
                            size: 26,
                          ),
                          suffixIconColor: Color.fromARGB(255, 41, 7, 231),
                        ),
                        style: TextStyle(height: 1, color: Colors.blue),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 11, 51, 230),
                              ),
                              foregroundColor:
                                  MaterialStatePropertyAll(
                                    Color.fromARGB(255, 255, 241, 241)),
                              minimumSize: MaterialStatePropertyAll(
                                Size(50, 40),
                              ),
                              iconSize: MaterialStatePropertyAll(20),
                            ),
                            child: const Row(
                              children: [
                                Text("Convert  "),
                                Icon(Icons.currency_exchange_outlined),
                                
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
