import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Screens/ExCuspomer.dart';
import '../Screens/newCustomer.dart';

class home extends StatefulWidget {
  // String Username;
  // String Password;
  //
  // homepage({Key? key, required String this.Username, required String this.Password}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();

  final CollectionReference store =
  FirebaseFirestore.instance.collection('store');

  Future<void> _create([DocumentSnapshot? documentSnapshot]) async {

    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
                  controller: phoneNoController,
                  decoration: const InputDecoration(
                    labelText: 'Price',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          );

        });
  }

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
        builder: (context,AsyncSnapshot snapshot) {
          if(snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context,index){
                final DocumentSnapshot storeSnap = snapshot.data.docs[index];
                return Text(storeSnap['name']);
              },
            );
          }
          return Container(
            child: Column(
              children: [
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> ExCustomer()));
                    },
                    child: Container(
                      width: 400,
                      height: 60,
                      color: Colors.green[900],
                      padding: const EdgeInsets.only(left: 10.0,right: 100,bottom: 10,top: 15),
                      child: Text(
                        'fairoos',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  // child: Column(
                  //   children: [
                  //     Row(
                  //       children: [
                  //         Container(
                  //
                  //           padding: const EdgeInsets.only(left: 10.0,right: 100,bottom: 10,top: 10),
                  //           child: const Text("Fairoos", style: TextStyle(fontSize: 18,
                  //               fontWeight: FontWeight.w600,color: Colors.black54
                  //           )),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                ),
              ],
            ),
          );
        },
      ),

    );
  }}