// import 'package:cloud_firestore/cloud_firestore.dart';
// import'package:flutter/material.dart';
//
// import 'HomeScreen/service/service.formdart.dart';
//
// class ExCustomer extends StatelessWidget {
//   final CollectionReference store =
//   FirebaseFirestore.instance.collection('services');
//
//   TextEditingController nameController = TextEditingController();
//   TextEditingController phoneNoController = TextEditingController();
//   TextEditingController vehicleModelController = TextEditingController();
//   TextEditingController placeController = TextEditingController();
//   TextEditingController registrationNoController = TextEditingController();
//   TextEditingController chasesNoController = TextEditingController();
//   TextEditingController motorNoController = TextEditingController();
//   TextEditingController controllerNoController = TextEditingController();
//   //service01
//   TextEditingController date01Controller = TextEditingController();
//   TextEditingController complaint0101Controller = TextEditingController();
//   TextEditingController complaint0102Controller = TextEditingController();
//   TextEditingController complaint0103Controller = TextEditingController();
//   TextEditingController complaint0104Controller = TextEditingController();
//   TextEditingController complaint0105Controller = TextEditingController();
//   TextEditingController sparePart0101Controller = TextEditingController();
//   TextEditingController sparePart0102Controller = TextEditingController();
//   TextEditingController sparePart0103Controller = TextEditingController();
//   TextEditingController sparePart0104Controller = TextEditingController();
//   TextEditingController sparePart0105Controller = TextEditingController();
//   TextEditingController handingPerson01Controller = TextEditingController();
//   TextEditingController deliveryDate01Controller= TextEditingController();
//   TextEditingController km01Controller = TextEditingController();
//   TextEditingController time01Controller = TextEditingController();
//   TextEditingController billAmount01Controller = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//
//     final args = ModalRoute.of(context)!.settings.arguments as Map;
//     nameController.text = args['name'] ?? '';
//     phoneNoController.text = args['phoneNo'] ?? '';
//     vehicleModelController.text = args['vehicle'] ?? '';
//     placeController.text = args['place'] ?? '';
//     registrationNoController.text = args['registrationNo'] ?? '';
//     chasesNoController.text = args['chasesNo'] ?? '';
//     motorNoController.text = args['motorNo'] ?? '';
//     controllerNoController.text = args['ControllerNo'] ?? '';
//     //service01
//     date01Controller.text = args['date01'] ?? '';
//     handingPerson01Controller.text = args['handlingPerson01'] ?? '';
//     deliveryDate01Controller.text = args['deliveryDate01'] ?? '';
//     time01Controller.text = args['time01'] ?? '';
//     km01Controller.text = args['km01'] ?? '';
//     complaint0101Controller.text = args['complaint0101'] ?? '';
//     complaint0102Controller.text = args['complaint0102'] ?? '';
//     complaint0103Controller.text = args['complaint0103'] ?? '';
//     complaint0104Controller.text = args['complaint0104'] ?? '';
//     complaint0105Controller.text = args['complaint0105'] ?? '';
//     sparePart0101Controller.text = args['sparePart0101'] ?? '';
//     sparePart0102Controller.text = args['sparePart0102'] ?? '';
//     sparePart0103Controller.text  = args['sparePart0103'] ?? '';
//     sparePart0104Controller.text = args['sparePart0104'] ?? '';
//     sparePart0105Controller.text = args['sparePart0105'] ?? '';
//     billAmount01Controller.text = args['billAmount01'] ?? '';
//     final docId = args['id'];
//
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       appBar: AppBar(
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.search_off),
//             tooltip: 'search',
//             onPressed: () {
//               //   Navigator.push(context, MaterialPageRoute(builder: (_)=> Billing1()));
//               //
//             },
//           ),
//         ],
//         title: const Text('Services  ',
//           style: TextStyle( color:Colors.white,
//               fontSize: 20,
//               fontWeight: FontWeight.w600
//           ),),
//         backgroundColor: Colors.green[900],
//         elevation: 0,
//       ),
//
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (_) => AddressData(),
//               ),
//             );
//           },
//           backgroundColor: Colors.green[900],
//           foregroundColor: Colors.black,
//           child: Icon(Icons.add ),
//
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
//         body:Column(
//           children: [
//             Column(
//               children: [
//                 Card(
//                   child: Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey,
//                             blurRadius: 10,
//                             spreadRadius: 3,
//                           )
//                         ]
//                     ),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             children: [
//                               Container(
//                                 child: Row(
//                                   children: <Widget>[
//                                     Text("Name:" ,style: TextStyle(fontSize: 20,
//                                         fontWeight: FontWeight.w600,color: Colors.black
//                                     )),
//                                     Padding(
//                                       padding:const EdgeInsets.only(left: 95.0,right: 0,bottom: 0,top: 0),
//                                       child: Text(
//                                           args['name'],
//                                           style: TextStyle(fontSize: 18,
//                                               fontWeight: FontWeight.w600,color: Colors.black54
//                                           )
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Container(
//                                 child: Row(
//                                   children: <Widget>[
//                                     Text("PhoneNo:" ,style: TextStyle(fontSize: 20,
//                                         fontWeight: FontWeight.w600,color: Colors.black
//                                     )),
//                                     Padding(
//                                       padding:const EdgeInsets.only(left: 65.0,right: 0,bottom: 0,top: 0),
//                                       child: Text(
//                                           args['phoneNo'],
//                                           style: TextStyle(fontSize: 18,
//                                               fontWeight: FontWeight.w600,color: Colors.black54
//                                           )
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Container(
//                                 child: Row(
//                                   children: <Widget>[
//                                     Text("Vehicle:" ,style: TextStyle(fontSize: 20,
//                                         fontWeight: FontWeight.w600,color: Colors.black
//                                     )),
//                                     Padding(
//                                       padding:const EdgeInsets.only(left: 85.0,right: 0,bottom: 0,top: 0),
//                                       child: Text(
//                                           args['vehicle'],
//                                           style: TextStyle(fontSize: 18,
//                                               fontWeight: FontWeight.w600,color: Colors.black54
//                                           )
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Container(
//                                 child: Row(
//                                   children: <Widget>[
//                                     Text("Place:" ,style: TextStyle(fontSize: 20,
//                                         fontWeight: FontWeight.w600,color: Colors.black
//                                     )),
//                                     Padding(
//                                       padding:const EdgeInsets.only(left: 104.0,right: 0,bottom: 0,top: 0),
//                                       child: Text(
//                                           args['place'],
//                                           style: TextStyle(fontSize: 18,
//                                               fontWeight: FontWeight.w600,color: Colors.black54
//                                           )
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Container(
//                                 child: Row(
//                                   children: <Widget>[
//                                     Text("RegistrationNo:" ,style: TextStyle(fontSize: 20,
//                                         fontWeight: FontWeight.w600,color: Colors.black
//                                     )),
//                                     Padding(
//                                       padding:const EdgeInsets.only(left: 20.0,right: 0,bottom: 0,top: 0),
//                                       child: Text(
//                                           args['registrationNo'],
//                                           style: TextStyle(fontSize: 18,
//                                               fontWeight: FontWeight.w600,color: Colors.black54
//                                           )
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Container(
//                                 child: Row(
//                                   children: <Widget>[
//                                     Text("MotorNo:" ,style: TextStyle(fontSize: 20,
//                                         fontWeight: FontWeight.w600,color: Colors.black
//                                     )),
//                                     Padding(
//                                       padding:const EdgeInsets.only(left: 80.0,right: 0,bottom: 0,top: 0),
//                                       child: Text(
//                                           args['motorNo'],
//                                           style: TextStyle(fontSize: 18,
//                                               fontWeight: FontWeight.w600,color: Colors.black54
//                                           )
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Container(
//                                 child: Row(
//                                   children: <Widget>[
//                                     Text("ControllerNo:" ,style: TextStyle(fontSize: 20,
//                                         fontWeight: FontWeight.w600,color: Colors.black
//                                     )),
//                                     Padding(
//                                       padding:const EdgeInsets.only(left: 45.0,right: 0,bottom: 0,top: 0),
//                                       child: Text(
//                                           args['ControllerNo'],
//                                           style: TextStyle(fontSize: 18,
//                                               fontWeight: FontWeight.w600,color: Colors.black54
//                                           )
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Container(
//                                 child: Row(
//                                   children: <Widget>[
//                                     Text("ChasesNo:" ,style: TextStyle(fontSize: 20,
//                                         fontWeight: FontWeight.w600,color: Colors.black
//                                     )),
//                                     Padding(
//                                       padding:const EdgeInsets.only(left: 70.0,right: 0,bottom: 0,top: 0),
//                                       child: Text(
//                                           args['chasesNo'],
//                                           style: TextStyle(fontSize: 18,
//                                               fontWeight: FontWeight.w600,color: Colors.black54
//                                           )
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//
//               ],
//             ),
//             // Padding(
//             //   padding: const EdgeInsets.all(8.0),
//             //   child: Column(
//             //     children: [
//             //       Stack(
//             //         children: [
//             //           Container(
//             //             height: 60,
//             //             decoration: BoxDecoration(
//             //               borderRadius: BorderRadius.circular(8),
//             //               color: Colors.white,
//             //               boxShadow: [
//             //                 BoxShadow(
//             //                   color: Colors.grey,
//             //                   blurRadius: 10,
//             //                   spreadRadius: 3,
//             //                 ),
//             //               ],
//             //             ),
//             //             child: Row(
//             //               children: [
//             //                 Container(
//             //                   padding: const EdgeInsets.only(
//             //                     left: 10.0,
//             //                     right: 10,
//             //                     bottom: 10,
//             //                     top: 10,
//             //                   ),
//             //                   child: Text(
//             //                     args['date01'],
//             //                     style: TextStyle(fontSize: 20),
//             //                   ),
//             //                 ),
//             //               ],
//             //             ),
//             //           ),
//             //           Positioned(
//             //             top: 4,
//             //             right: 0,
//             //             bottom: 0,
//             //             child: PopupMenuButton(
//             //               itemBuilder: (context) {
//             //                 return [
//             //                   PopupMenuItem<int>(
//             //                     value: 0,
//             //                     child: Text("Edit"),
//             //                   ),
//             //                 ];
//             //               },
//             //               onSelected: (value) {
//             //                 if (value == 0) {
//             //                   Navigator.pushNamed(
//             //                     context,
//             //                     '/AddressData',
//             //                     arguments: {
//             //                       'date01': args['date01'],
//             //                       'handlingPerson01': args['date01'],
//             //                       'deliveryDate01': args['deliveryDate01'],
//             //                       'time01': args['time01'],
//             //                       'km01':args['km01'],
//             //                       'complaint0101':args['complaint0101'],
//             //                       'complaint0102':args['complaint0102'],
//             //                       'complaint0103':args['complaint0103'],
//             //                       'complaint0104':args['complaint0104'],
//             //                       'complaint0105':args['complaint0105'],
//             //                       'sparePart0101':args['sparePart0101'],
//             //                       'sparePart0102':args['sparePart0102'],
//             //                       'sparePart0103':args['sparePart0103'],
//             //                       'sparePart0104':args['sparePart0104'],
//             //                       'sparePart0105':args['sparePart0105'],
//             //                       'billAmount01':args['billAmount01'],
//             //                     },
//             //                   );
//             //                 }
//             //               },
//             //             ),
//             //           ),
//             //         ],
//             //       ),
//             //     ],
//             //   ),
//             // ),
//
//           ],
//         )
//
//       );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import'package:flutter/material.dart';

import 'HomeScreen/service/service.formdart.dart';

class ExCustomer extends StatelessWidget {
  final CollectionReference store =
  FirebaseFirestore.instance.collection('services');

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController vehicleModelController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController registrationNoController = TextEditingController();
  TextEditingController chasesNoController = TextEditingController();
  TextEditingController motorNoController = TextEditingController();
  TextEditingController controllerNoController = TextEditingController();
  //service01
  TextEditingController date01Controller = TextEditingController();
  TextEditingController complaint0101Controller = TextEditingController();
  TextEditingController complaint0102Controller = TextEditingController();
  TextEditingController complaint0103Controller = TextEditingController();
  TextEditingController complaint0104Controller = TextEditingController();
  TextEditingController complaint0105Controller = TextEditingController();
  TextEditingController sparePart0101Controller = TextEditingController();
  TextEditingController sparePart0102Controller = TextEditingController();
  TextEditingController sparePart0103Controller = TextEditingController();
  TextEditingController sparePart0104Controller = TextEditingController();
  TextEditingController sparePart0105Controller = TextEditingController();
  TextEditingController handingPerson01Controller = TextEditingController();
  TextEditingController deliveryDate01Controller= TextEditingController();
  TextEditingController km01Controller = TextEditingController();
  TextEditingController time01Controller = TextEditingController();
  TextEditingController billAmount01Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Map;
    nameController.text = args['name'] ?? '';
    phoneNoController.text = args['phoneNo'] ?? '';
    vehicleModelController.text = args['vehicle'] ?? '';
    placeController.text = args['place'] ?? '';
    registrationNoController.text = args['registrationNo'] ?? '';
    chasesNoController.text = args['chasesNo'] ?? '';
    motorNoController.text = args['motorNo'] ?? '';
    controllerNoController.text = args['ControllerNo'] ?? '';
    //service01
    date01Controller.text = args['date01'] ?? '';
    handingPerson01Controller.text = args['handlingPerson01'] ?? '';
    deliveryDate01Controller.text = args['deliveryDate01'] ?? '';
    time01Controller.text = args['time01'] ?? '';
    km01Controller.text = args['km01'] ?? '';
    complaint0101Controller.text = args['complaint0101'] ?? '';
    complaint0102Controller.text = args['complaint0102'] ?? '';
    complaint0103Controller.text = args['complaint0103'] ?? '';
    complaint0104Controller.text = args['complaint0104'] ?? '';
    complaint0105Controller.text = args['complaint0105'] ?? '';
    sparePart0101Controller.text = args['sparePart0101'] ?? '';
    sparePart0102Controller.text = args['sparePart0102'] ?? '';
    sparePart0103Controller.text  = args['sparePart0103'] ?? '';
    sparePart0104Controller.text = args['sparePart0104'] ?? '';
    sparePart0105Controller.text = args['sparePart0105'] ?? '';
    billAmount01Controller.text = args['billAmount01'] ?? '';
    final docId = args['id'];

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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => AddressData(),
              ),
            );
          },
          backgroundColor: Colors.green[900],
          foregroundColor: Colors.black,
          child: Icon(Icons.add ),

        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
        body:Column(
          children: [
            Column(
              children: [
                Card(
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
                                          args['name'],
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
                                          args['phoneNo'],
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
                                          args['vehicle'],
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
                                          args['place'],
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
                                          args['registrationNo'],
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
                                          args['motorNo'],
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
                                          args['ControllerNo'],
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
                                          args['chasesNo'],
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
                ),

              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Column(
            //     children: [
            //       Stack(
            //         children: [
            //           Container(
            //             height: 60,
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(8),
            //               color: Colors.white,
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Colors.grey,
            //                   blurRadius: 10,
            //                   spreadRadius: 3,
            //                 ),
            //               ],
            //             ),
            //             child: Row(
            //               children: [
            //                 Container(
            //                   padding: const EdgeInsets.only(
            //                     left: 10.0,
            //                     right: 10,
            //                     bottom: 10,
            //                     top: 10,
            //                   ),
            //                   child: Text(
            //                     args['date01'],
            //                     style: TextStyle(fontSize: 20),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Positioned(
            //             top: 4,
            //             right: 0,
            //             bottom: 0,
            //             child: PopupMenuButton(
            //               itemBuilder: (context) {
            //                 return [
            //                   PopupMenuItem<int>(
            //                     value: 0,
            //                     child: Text("Edit"),
            //                   ),
            //                 ];
            //               },
            //               onSelected: (value) {
            //                 if (value == 0) {
            //                   Navigator.pushNamed(
            //                     context,
            //                     '/AddressData',
            //                     arguments: {
            //                       'date01': args['date01'],
            //                       'handlingPerson01': args['date01'],
            //                       'deliveryDate01': args['deliveryDate01'],
            //                       'time01': args['time01'],
            //                       'km01':args['km01'],
            //                       'complaint0101':args['complaint0101'],
            //                       'complaint0102':args['complaint0102'],
            //                       'complaint0103':args['complaint0103'],
            //                       'complaint0104':args['complaint0104'],
            //                       'complaint0105':args['complaint0105'],
            //                       'sparePart0101':args['sparePart0101'],
            //                       'sparePart0102':args['sparePart0102'],
            //                       'sparePart0103':args['sparePart0103'],
            //                       'sparePart0104':args['sparePart0104'],
            //                       'sparePart0105':args['sparePart0105'],
            //                       'billAmount01':args['billAmount01'],
            //                     },
            //                   );
            //                 }
            //               },
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),

          ],
        )

      );
  }
}
// import 'dart:convert';
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import'package:flutter/material.dart';
//
// import 'HomeScreen/service/service.formdart.dart';
//
// class ExCustomer extends StatelessWidget {
//
//   final CollectionReference store =
//   FirebaseFirestore.instance.collection('services');
//
//   TextEditingController nameController = TextEditingController();
//   TextEditingController phoneNoController = TextEditingController();
//   TextEditingController vehicleModelController = TextEditingController();
//   TextEditingController placeController = TextEditingController();
//   TextEditingController registrationNoController = TextEditingController();
//   TextEditingController chasesNoController = TextEditingController();
//   TextEditingController motorNoController = TextEditingController();
//   TextEditingController controllerNoController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     // Get the arguments passed from the previous screen
//     final Map<String, dynamic> args =
//     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
//
//     // Parse the 'servicesJson' back to a map using jsonDecode
//     final List<dynamic> services =
//     jsonDecode(args['servicesJson']) as List<dynamic>;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Customer Details'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Text('Name: ${args['name']}'),
//             Text('Phone No: ${args['phoneNo']}'),
//             Text('Vehicle: ${args['vehicle']}'),
//             Text('Place: ${args['place']}'),
//             Text('Registration No: ${args['registrationNo']}'),
//             Text('Motor No: ${args['motorNo']}'),
//             Text('Controller No: ${args['ControllerNo']}'),
//             Text('Chases No: ${args['chasesNo']}'),
//             // Use the 'services' map here
//             for (var service in services)
//               InkWell( onTap: () {
//                 Navigator.pushNamed(
//                   context,
//                   '/serviceDetails', // Replace with the name of the destination screen
//                   arguments: {
//                     'id': args['id'], // Pass the customer ID
//                     'serviceData': service, // Pass the selected service data
//                   },
//                 );
//               },
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Date: ${service['date']}'),
//
//                   ],
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
