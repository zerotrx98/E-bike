import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../ExCuspomer.dart';
import '../newCustomer.dart';

class HomeScreen extends StatelessWidget {
  final CollectionReference store =
  FirebaseFirestore.instance.collection('services');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.local_print_shop_sharp),
            tooltip: 'billing',
            onPressed: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (_)=> Billing1()));
              //
            },

          ),
          IconButton(
            icon: const Icon(Icons.local_grocery_store_outlined),
            tooltip: 'E-store',
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (_)=> Store1()));
              //
            },

          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=> NewCustomer()));
          //
        },
        backgroundColor: Colors.green[900],
        foregroundColor: Colors.black,
        child: Icon(Icons.add ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,

      body: StreamBuilder(
        stream: store.snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: snapshot.data.docs
                    .map<Widget>((doc) {
                  final dataStore = doc.data();
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> ExCustomer()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [

                          Container(
                           width: 600,
                           height: 60,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(8),
                               color: Colors.white,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.grey,
                                   blurRadius: 10,
                                   spreadRadius: 3,
                                 )
                               ]
                           ),
                           child: Row(
                             children: [
                               Container(
                                 padding: const EdgeInsets.only(left: 10.0,right: 81,bottom: 10,top: 15),
                                 child:   Text(
                                   dataStore['name'],
                                   style: TextStyle(fontSize: 20),
                                 ),
                               ),
                               Padding(
                                 padding:const EdgeInsets.only(left: 250.0,right: 0,bottom: 0,top: 0),
                                 child: Row(
                                   children: [
                                     IconButton(
                                       icon: const Icon(Icons.edit),
                                       color: Colors.green[900],
                                       onPressed: () {},
                                     ),
                                     IconButton(
                                       icon: const Icon(Icons.delete),
                                       color: Colors.green[900],
                                       onPressed: () {},
                                     ),
                                   ],
                                 ),
                               )
                             ],
                           ),
                         ),
                       ]
                      ),
                    ),
                  );
                }
                )
                    .toList(),
              ),


            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
            );
          }
        },
      ),
    );
  }
}
