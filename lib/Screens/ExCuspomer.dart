import 'package:cloud_firestore/cloud_firestore.dart';
import'package:flutter/material.dart';

class ExCustomer extends StatelessWidget {
  final CollectionReference store =
  FirebaseFirestore.instance.collection('services');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search_off),
            tooltip: 'search',
            onPressed: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (_)=> Billing1()));
              //
            },

          ),
        ],
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back_ios,
        //     // color: Colors.white,
        //   ),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        title: const Text('Services  ',
          style: TextStyle( color:Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600
          ),),
        backgroundColor: Colors.green[900],
        elevation: 0,
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (_)=> AddressData()));
            // //
          },
          backgroundColor: Colors.green[900],
          foregroundColor: Colors.black,
          child: Icon(Icons.add ),

        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
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
                    return Card(
                      child: Container(
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
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text("Name:" ,style: TextStyle(fontSize: 20,
                                              fontWeight: FontWeight.w600,color: Colors.black
                                          )),
                                          Padding(
                                            padding:const EdgeInsets.only(left: 95.0,right: 0,bottom: 0,top: 0),
                                            child: Text(
                                                dataStore['name'],
                                                style: TextStyle(fontSize: 18,
                                                    fontWeight: FontWeight.w600,color: Colors.black54
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                      ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("PhoneNo:" ,style: TextStyle(fontSize: 20,
                                            fontWeight: FontWeight.w600,color: Colors.black
                                        )),
                                        Padding(
                                          padding:const EdgeInsets.only(left: 65.0,right: 0,bottom: 0,top: 0),
                                          child: Text(
                                              dataStore['phoneNo'],
                                              style: TextStyle(fontSize: 18,
                                                  fontWeight: FontWeight.w600,color: Colors.black54
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("Vehicle:" ,style: TextStyle(fontSize: 20,
                                            fontWeight: FontWeight.w600,color: Colors.black
                                        )),
                                        Padding(
                                          padding:const EdgeInsets.only(left: 85.0,right: 0,bottom: 0,top: 0),
                                          child: Text(
                                              dataStore['vehicle'],
                                              style: TextStyle(fontSize: 18,
                                                  fontWeight: FontWeight.w600,color: Colors.black54
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("Place:" ,style: TextStyle(fontSize: 20,
                                            fontWeight: FontWeight.w600,color: Colors.black
                                        )),
                                        Padding(
                                          padding:const EdgeInsets.only(left: 104.0,right: 0,bottom: 0,top: 0),
                                          child: Text(
                                              dataStore['place'],
                                              style: TextStyle(fontSize: 18,
                                                  fontWeight: FontWeight.w600,color: Colors.black54
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("RegistrationNo:" ,style: TextStyle(fontSize: 20,
                                            fontWeight: FontWeight.w600,color: Colors.black
                                        )),
                                        Padding(
                                          padding:const EdgeInsets.only(left: 20.0,right: 0,bottom: 0,top: 0),
                                          child: Text(
                                              dataStore['registrationNo'],
                                              style: TextStyle(fontSize: 18,
                                                  fontWeight: FontWeight.w600,color: Colors.black54
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("MotorNo:" ,style: TextStyle(fontSize: 20,
                                            fontWeight: FontWeight.w600,color: Colors.black
                                        )),
                                        Padding(
                                          padding:const EdgeInsets.only(left: 80.0,right: 0,bottom: 0,top: 0),
                                          child: Text(
                                              dataStore['motorNo'],
                                              style: TextStyle(fontSize: 18,
                                                  fontWeight: FontWeight.w600,color: Colors.black54
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("ControllerNo:" ,style: TextStyle(fontSize: 20,
                                            fontWeight: FontWeight.w600,color: Colors.black
                                        )),
                                        Padding(
                                          padding:const EdgeInsets.only(left: 45.0,right: 0,bottom: 0,top: 0),
                                          child: Text(
                                              dataStore['ControllerNo'],
                                              style: TextStyle(fontSize: 18,
                                                  fontWeight: FontWeight.w600,color: Colors.black54
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text("ChasesNo:" ,style: TextStyle(fontSize: 20,
                                            fontWeight: FontWeight.w600,color: Colors.black
                                        )),
                                        Padding(
                                          padding:const EdgeInsets.only(left: 70.0,right: 0,bottom: 0,top: 0),
                                          child: Text(
                                              dataStore['chasesNo'],
                                              style: TextStyle(fontSize: 18,
                                                  fontWeight: FontWeight.w600,color: Colors.black54
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );

                    //   InkWell(
                    //   onTap: () {
                    //     Navigator.push(context, MaterialPageRoute(builder: (_)=> ExCustomer()));
                    //   },
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: Container(
                    //       width: 600,
                    //       height: 60,
                    //       color: Colors.green[900],
                    //       padding: const EdgeInsets.only(left: 10.0,right: 100,bottom: 10,top: 15),
                    //       child:   Text(
                    //         dataStore['name'],
                    //         style: TextStyle(fontSize: 24),
                    //       ),
                    //     ),
                    //   ),
                    // );
                  })
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
        )
      );
  }
}
