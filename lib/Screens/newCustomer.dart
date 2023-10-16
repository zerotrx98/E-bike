// import 'package:cloud_firestore/cloud_firestore.dart';
// import'package:flutter/material.dart';
//
// class NewCustomer extends StatefulWidget {
//   const NewCustomer({Key? key}) : super(key: key);
//
//   @override
//   State<NewCustomer> createState() => _NewCustomerState();
// }
//
// class _NewCustomerState extends State<NewCustomer> {
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
//   //service02
//   // TextEditingController date02Controller = TextEditingController();
//   // TextEditingController complaint0201Controller = TextEditingController();
//   // TextEditingController complaint0202Controller = TextEditingController();
//   // TextEditingController complaint0203Controller = TextEditingController();
//   // TextEditingController complaint0204Controller = TextEditingController();
//   // TextEditingController complaint0205Controller = TextEditingController();
//   // TextEditingController sparepart0201Controller = TextEditingController();
//   // TextEditingController sparepart0202Controller = TextEditingController();
//   // TextEditingController sparepart0203Controller = TextEditingController();
//   // TextEditingController sparepart0204Controller = TextEditingController();
//   // TextEditingController sparepart0205Controller = TextEditingController();
//   // TextEditingController handlingperson02Controller = TextEditingController();
//   // TextEditingController deliveryDate02Controller= TextEditingController();
//   // TextEditingController km02Controller = TextEditingController();
//   // TextEditingController time02Controller = TextEditingController();
//   // TextEditingController billamount02Controller = TextEditingController();
//   // //serivice03
//   // TextEditingController date03Controller = TextEditingController();
//   // TextEditingController complaint0301Controller = TextEditingController();
//   // TextEditingController complaint0302Controller = TextEditingController();
//   // TextEditingController complaint0303Controller = TextEditingController();
//   // TextEditingController complaint0304Controller = TextEditingController();
//   // TextEditingController complaint0305Controller = TextEditingController();
//   // TextEditingController sparepart0301Controller = TextEditingController();
//   // TextEditingController sparepart0302Controller = TextEditingController();
//   // TextEditingController sparepart0303Controller = TextEditingController();
//   // TextEditingController sparepart0304Controller = TextEditingController();
//   // TextEditingController sparepart0305Controller = TextEditingController();
//   // TextEditingController handlingperson03Controller = TextEditingController();
//   // TextEditingController deliveryDate03Controller= TextEditingController();
//   // TextEditingController km03Controller = TextEditingController();
//   // TextEditingController time03Controller = TextEditingController();
//   // TextEditingController billamount03Controller = TextEditingController();
//   void addsericves() async {
//
//     try {
//       final data = {
//         'name': nameController.text,
//         'phoneNo': phoneNoController.text,
//         'vehicle': vehicleModelController.text,
//         'place': placeController.text,
//         'registrationNo': registrationNoController.text,
//         'motorNo': motorNoController.text,
//         'controllerNo': controllerNoController.text,
//         'chasesNo': chasesNoController.text,
//         'services': [
//           {
//             'date': date01Controller.text,
//             'handlingPerson': handingPerson01Controller.text,
//             'deliveryDate': deliveryDate01Controller.text,
//             'time': time01Controller.text,
//             'km': km01Controller.text,
//             'complaint01': complaint0101Controller.text,
//             'complaint02': complaint0102Controller.text,
//             'complaint03': complaint0103Controller.text,
//             'complaint04': complaint0104Controller.text,
//             'complaint05': complaint0105Controller.text,
//             'sparePart01': sparePart0101Controller.text,
//             'sparePart02': sparePart0102Controller.text,
//             'sparePart03': sparePart0103Controller.text,
//             'sparePart04': sparePart0104Controller.text,
//             'sparePart05': sparePart0105Controller.text,
//             'billAmount': billAmount01Controller.text,
//           },
//           // Uncomment and add other service entries here (service02, service03, etc.)
//           // {
//           //   'date': date02Controller.text,
//           //   'handlingPerson': handlingperson02Controller.text,
//           //   'deliveryDate': deliveryDate02Controller.text,
//           //   'time': time02Controller.text,
//           //   'km': km02Controller.text,
//           //   'complaint01': complaint0201Controller.text,
//           //   'complaint02': complaint0202Controller.text,
//           //   'complaint03': complaint0203Controller.text,
//           //   'complaint04': complaint0204Controller.text,
//           //   'complaint05': complaint0205Controller.text,
//           //   'sparePart01': sparepart0201Controller.text,
//           //   'sparePart02': sparepart0202Controller.text,
//           //   'sparePart03': sparepart0203Controller.text,
//           //   'sparePart04': sparepart0204Controller.text,
//           //   'sparePart05': sparepart0205Controller.text,
//           //   'billAmount': billamount02Controller.text,
//           // },
//           // {
//           //   'date': date03Controller.text,
//           //   'handlingPerson': handlingperson03Controller.text,
//           //   'deliveryDate': deliveryDate03Controller.text,
//           //   'time': time03Controller.text,
//           //   'km': km03Controller.text,
//           //   'complaint01': complaint0301Controller.text,
//           //   'complaint02': complaint0302Controller.text,
//           //   'complaint03': complaint0303Controller.text,
//           //   'complaint04': complaint0304Controller.text,
//           //   'complaint05': complaint0305Controller.text,
//           //   'sparePart01': sparepart0301Controller.text,
//           //   'sparePart02': sparepart0302Controller.text,
//           //   'sparePart03': sparepart0303Controller.text,
//           //   'sparePart04': sparepart0304Controller.text,
//           //   'sparePart05': sparepart0305Controller.text,
//           //   'billAmount': billamount03Controller.text,
//           // },
//         ],
//       };
//
//       await store.add(data);
//       print('Data with services added successfully!');
//     } catch (e) {
//       print('Error adding data with services: $e');
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//         return Scaffold(
//       resizeToAvoidBottomInset: true,
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back_ios,
//             // color: Colors.white,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: const Text('New Services',
//           style: TextStyle( color:Colors.white,
//               fontSize: 20,
//               fontWeight: FontWeight.w600
//           ),),
//         backgroundColor: Colors.green[900],
//         elevation: 0,
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//               child:SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: Container(
//                     child: Column(
//                       children: [
//                         Card(
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                     padding: const EdgeInsets.only(left: 0.0,right: 190,bottom: 0,top: 10),
//                                     child: const Text("Customer Details", style: TextStyle(fontSize: 18,
//                                         fontWeight: FontWeight.w600,color: Colors.black54
//                                     )),
//                                   ),
//                                 ],
//                               ),
//
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: nameController,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         // borderRadius: const BorderRadius.all(Radius.circular(
//                                         //     20.0)),
//                                         // borderSide: BorderSide()
//                                       ),
//                                       labelText: 'Name',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     keyboardType: TextInputType.number,
//                                     controller: phoneNoController,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         // borderRadius: const BorderRadius.all(Radius.circular(
//                                         //     20.0)),
//                                         // borderSide: BorderSide()
//                                       ),
//                                       labelText: 'PhoneNumber',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         // borderRadius: const BorderRadius.all(Radius.circular(
//                                         //     20.0)),
//                                         // borderSide: BorderSide()
//                                       ),
//                                       labelText: 'VehicleModel',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: placeController,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         // borderRadius: const BorderRadius.all(Radius.circular(
//                                         //     20.0)),
//                                         // borderSide: BorderSide()
//                                       ),
//                                       labelText: 'Place',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     keyboardType: TextInputType.number,
//                                     controller: registrationNoController,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         // borderRadius: const BorderRadius.all(Radius.circular(
//                                         //     20.0)),
//                                         // borderSide: BorderSide()
//                                       ),
//                                       labelText: 'RegistrationNo',
//                                     ),
//                                   )),
//                               // Container(
//                               //     margin: const EdgeInsets.all(15),
//                               //     child: TextField(
//                               //       keyboardType: TextInputType.number,
//                               //       controller: chasesNoController,
//                               //       decoration: InputDecoration(
//                               //         border: OutlineInputBorder(
//                               //           //     borderRadius: const BorderRadius.all(Radius.circular(
//                               //           //         20.0)),
//                               //           //     borderSide: BorderSide()
//                               //         ),
//                               //         labelText: 'ChasesNo',
//                               //       ),
//                               //     )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     keyboardType: TextInputType.number,
//                                     controller: motorNoController,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'MotorNo',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     keyboardType: TextInputType.number,
//                                     controller: controllerNoController,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'controllerNo',
//                                     ),
//                                   )
//                               ),
//
//
//                             ],
//                           ),
//                         ),
//                         Card(
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                     padding: const EdgeInsets.only(left: 10.0,right: 190,bottom: 0,top: 10),
//                                     child: const Text("handling Details", style: TextStyle(fontSize: 18,
//                                         fontWeight: FontWeight.w600,color: Colors.black54
//                                     )),
//                                   ),
//                                 ],
//                               ),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: date01Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'Date01',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: handingPerson01Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'handlingPerson01',
//                                     ),
//                                   )),
//
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     keyboardType: TextInputType.number,
//                                     controller: deliveryDate01Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'DeliveryDate01',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     keyboardType: TextInputType.number,
//                                     controller: time01Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'Time01',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: km01Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         // borderRadius: const BorderRadius.all(Radius.circular(
//                                         //     20.0)),
//                                         // borderSide: BorderSide()
//                                       ),
//                                       labelText: 'Km01',
//                                     ),
//                                   )),
//
//                             ],
//                           ),
//                         ),
//
//                         Card(
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                     padding: const EdgeInsets.only(left: 10.0,right: 200,bottom: 10,top: 10),
//                                     child: const Text("Complaints", style: TextStyle(fontSize: 18,
//                                         fontWeight: FontWeight.w600,color:Colors.black54)),
//                                   ),
//                                 ],
//                               ),
//
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: complaint0101Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         // borderRadius: const BorderRadius.all(Radius.circular(
//                                         //     20.0)),
//                                         // borderSide: BorderSide()
//                                       ),
//                                       labelText: 'complaint0101',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: complaint0102Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'complaint0102',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: complaint0103Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'complaint0103',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: complaint0104Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'complaint0104',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: complaint0105Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'complaint0105',
//                                     ),
//                                   )),
//                             ],
//                           ),
//                         ),
//
//                         Card(
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                     padding: const EdgeInsets.only(left: 10.0,right: 200,bottom: 10,top: 10),
//                                     child: const Text("Spareparts", style: TextStyle(fontSize: 18,
//                                         fontWeight: FontWeight.w600,color:Colors.black54)),
//                                   ),
//                                 ],
//                               ),
//
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: sparePart0101Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'sparePart0101',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: sparePart0102Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'sparePart0102',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: sparePart0103Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'sparePart0103',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: sparePart0104Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'sparePart0104',
//                                     ),
//                                   )),
//                               Container(
//                                   margin: const EdgeInsets.all(15),
//                                   child: TextField(
//                                     controller: sparePart0105Controller,
//                                     decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         //     borderRadius: const BorderRadius.all(Radius.circular(
//                                         //         20.0)),
//                                         //     borderSide: BorderSide()
//                                       ),
//                                       labelText: 'sparePart0105',
//                                     ),
//                                   )),
//
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.fromLTRB(400, 10, 8, 10),
//                           child: Card(
//                             child: Column(
//                               children: [
//                                 Container(
//                                     margin: const EdgeInsets.all(15),
//                                     child: TextField(
//                                       keyboardType: TextInputType.number,
//                                       controller: billAmount01Controller,
//                                       decoration: InputDecoration(
//                                         border: OutlineInputBorder(
//                                           //     borderRadius: const BorderRadius.all(Radius.circular(
//                                           //         20.0)),
//                                           //     borderSide: BorderSide()
//                                         ),
//                                         labelText: 'BillAmount01',
//                                       ),
//                                     )),
//                               ],
//                             ),
//                           ),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//           ),
//
//         ],
//       ),
//       bottomNavigationBar:  Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 50, ),
//         child: ElevatedButton(
//
//           onPressed: () {
//             addsericves();
//             Navigator.of(context).pop();
//               },
//           child: Text(
//             "Save",
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.all<Color>(Colors.green[900]!),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewCustomer extends StatefulWidget {
  const NewCustomer({Key? key}) : super(key: key);

  @override
  State<NewCustomer> createState() => _NewCustomerState();
}

class _NewCustomerState extends State<NewCustomer> {
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
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child:SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 0.0,right: 190,bottom: 0,top: 10),
                                    child: const Text("Customer Details", style: TextStyle(fontSize: 18,
                                        fontWeight: FontWeight.w600,color: Colors.black54
                                    )),
                                  ),
                                ],
                              ),

                              Container(
                                  margin: const EdgeInsets.all(15),
                                  child: TextField(
                                    controller: nameController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        // borderRadius: const BorderRadius.all(Radius.circular(
                                        //     20.0)),
                                        // borderSide: BorderSide()
                                      ),
                                      labelText: 'Name',
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.all(15),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: phoneNoController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        // borderRadius: const BorderRadius.all(Radius.circular(
                                        //     20.0)),
                                        // borderSide: BorderSide()
                                      ),
                                      labelText: 'PhoneNumber',
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.all(15),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        // borderRadius: const BorderRadius.all(Radius.circular(
                                        //     20.0)),
                                        // borderSide: BorderSide()
                                      ),
                                      labelText: 'VehicleModel',
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.all(15),
                                  child: TextField(
                                    controller: placeController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        // borderRadius: const BorderRadius.all(Radius.circular(
                                        //     20.0)),
                                        // borderSide: BorderSide()
                                      ),
                                      labelText: 'Place',
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.all(15),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: registrationNoController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        // borderRadius: const BorderRadius.all(Radius.circular(
                                        //     20.0)),
                                        // borderSide: BorderSide()
                                      ),
                                      labelText: 'RegistrationNo',
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.all(15),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: motorNoController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        //     borderRadius: const BorderRadius.all(Radius.circular(
                                        //         20.0)),
                                        //     borderSide: BorderSide()
                                      ),
                                      labelText: 'MotorNo',
                                    ),
                                  )),
                              Container(
                                  margin: const EdgeInsets.all(15),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: controllerNoController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        //     borderRadius: const BorderRadius.all(Radius.circular(
                                        //         20.0)),
                                        //     borderSide: BorderSide()
                                      ),
                                      labelText: 'controllerNo',
                                    ),
                                  )
                              ),

                              Container(
                                  margin: const EdgeInsets.all(15),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: chasesNoController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        //     borderRadius: const BorderRadius.all(Radius.circular(
                                        //         20.0)),
                                        //     borderSide: BorderSide()
                                      ),
                                      labelText: 'chasesNo',
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        // Card(
                        //   child: Column(
                        //     children: [
                        //       Row(
                        //         children: [
                        //           Container(
                        //             padding: const EdgeInsets.only(left: 10.0,right: 190,bottom: 0,top: 10),
                        //             child: const Text("handling Details", style: TextStyle(fontSize: 18,
                        //                 fontWeight: FontWeight.w600,color: Colors.black54
                        //             )),
                        //           ),
                        //         ],
                        //       ),
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             controller: date01Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 //     borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //         20.0)),
                        //                 //     borderSide: BorderSide()
                        //               ),
                        //               labelText: 'Date01',
                        //             ),
                        //           )),
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             controller: handingPerson01Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 //     borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //         20.0)),
                        //                 //     borderSide: BorderSide()
                        //               ),
                        //               labelText: 'handlingPerson01',
                        //             ),
                        //           )),
                        //
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             keyboardType: TextInputType.number,
                        //             controller: deliveryDate01Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 //     borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //         20.0)),
                        //                 //     borderSide: BorderSide()
                        //               ),
                        //               labelText: 'DeliveryDate01',
                        //             ),
                        //           )),
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             keyboardType: TextInputType.number,
                        //             controller: time01Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 //     borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //         20.0)),
                        //                 //     borderSide: BorderSide()
                        //               ),
                        //               labelText: 'Time01',
                        //             ),
                        //           )),
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             controller: km01Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 // borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //     20.0)),
                        //                 // borderSide: BorderSide()
                        //               ),
                        //               labelText: 'Km01',
                        //             ),
                        //           )),
                        //
                        //     ],
                        //   ),
                        // ),
                        //
                        // Card(
                        //   child: Column(
                        //     children: [
                        //       Row(
                        //         children: [
                        //           Container(
                        //             padding: const EdgeInsets.only(left: 10.0,right: 200,bottom: 10,top: 10),
                        //             child: const Text("Complaints", style: TextStyle(fontSize: 18,
                        //                 fontWeight: FontWeight.w600,color:Colors.black54)),
                        //           ),
                        //         ],
                        //       ),
                        //
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             controller: complaint0101Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 // borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //     20.0)),
                        //                 // borderSide: BorderSide()
                        //               ),
                        //               labelText: 'complaint0101',
                        //             ),
                        //           )),
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             controller: complaint0102Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 //     borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //         20.0)),
                        //                 //     borderSide: BorderSide()
                        //               ),
                        //               labelText: 'complaint0102',
                        //             ),
                        //           )),
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             controller: complaint0103Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 //     borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //         20.0)),
                        //                 //     borderSide: BorderSide()
                        //               ),
                        //               labelText: 'complaint0103',
                        //             ),
                        //           )),
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             controller: complaint0104Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 //     borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //         20.0)),
                        //                 //     borderSide: BorderSide()
                        //               ),
                        //               labelText: 'complaint0104',
                        //             ),
                        //           )),
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             controller: complaint0105Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 //     borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //         20.0)),
                        //                 //     borderSide: BorderSide()
                        //               ),
                        //               labelText: 'complaint0105',
                        //             ),
                        //           )),
                        //     ],
                        //   ),
                        // ),
                        //
                        // Card(
                        //   child: Column(
                        //     children: [
                        //       Row(
                        //         children: [
                        //           Container(
                        //             padding: const EdgeInsets.only(left: 10.0,right: 200,bottom: 10,top: 10),
                        //             child: const Text("Spareparts", style: TextStyle(fontSize: 18,
                        //                 fontWeight: FontWeight.w600,color:Colors.black54)),
                        //           ),
                        //         ],
                        //       ),
                        //
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             controller: sparePart0101Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 //     borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //         20.0)),
                        //                 //     borderSide: BorderSide()
                        //               ),
                        //               labelText: 'sparePart0101',
                        //             ),
                        //           )),
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             controller: sparePart0102Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 //     borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //         20.0)),
                        //                 //     borderSide: BorderSide()
                        //               ),
                        //               labelText: 'sparePart0102',
                        //             ),
                        //           )),
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             controller: sparePart0103Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 //     borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //         20.0)),
                        //                 //     borderSide: BorderSide()
                        //               ),
                        //               labelText: 'sparePart0103',
                        //             ),
                        //           )),
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             controller: sparePart0104Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 //     borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //         20.0)),
                        //                 //     borderSide: BorderSide()
                        //               ),
                        //               labelText: 'sparePart0104',
                        //             ),
                        //           )),
                        //       Container(
                        //           margin: const EdgeInsets.all(15),
                        //           child: TextField(
                        //             controller: sparePart0105Controller,
                        //             decoration: InputDecoration(
                        //               border: OutlineInputBorder(
                        //                 //     borderRadius: const BorderRadius.all(Radius.circular(
                        //                 //         20.0)),
                        //                 //     borderSide: BorderSide()
                        //               ),
                        //               labelText: 'sparePart0105',
                        //             ),
                        //           )),
                        //
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(400, 10, 8, 10),
                        //   child: Card(
                        //     child: Column(
                        //       children: [
                        //         Container(
                        //             margin: const EdgeInsets.all(15),
                        //             child: TextField(
                        //               keyboardType: TextInputType.number,
                        //               controller: billAmount01Controller,
                        //               decoration: InputDecoration(
                        //                 border: OutlineInputBorder(
                        //                   //     borderRadius: const BorderRadius.all(Radius.circular(
                        //                   //         20.0)),
                        //                   //     borderSide: BorderSide()
                        //                 ),
                        //                 labelText: 'BillAmount01',
                        //               ),
                        //             )),
                        //       ],
                        //     ),
                        //   ),
                        // ),

                      ],
                    ),
                  ),
                ),
              )
          ),

        ],
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, ),
        child: ElevatedButton(

          onPressed: addData,
          child: Text(
            "Save",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green[900]!),
          ),
        ),
      ),
    );
  }
  final firestoreInstance = FirebaseFirestore.instance;
  void addData () {
    firestoreInstance.collection("services").add({
      'name': nameController.text,
        'phoneNo': phoneNoController.text,
        'vehicle': vehicleModelController.text,
        'place': placeController.text,
        'registrationNo': registrationNoController.text,
        'motorNo': motorNoController.text,
        'controllerNo': controllerNoController.text,
        'chasesNo': chasesNoController.text,
    }).then((value) {
      print("data added successfully");
      print(value.id);
    });
  }
  void addSubCollections(){
    firestoreInstance.collection("Bikes").add({
      // 'name': nameController.text,
      // 'phoneNo': phoneNoController.text,
      // 'vehicle': vehicleModelController.text,
      // 'place': placeController.text,
      // 'registrationNo': registrationNoController.text,
      // 'motorNo': motorNoController.text,
      // 'controllerNo': controllerNoController.text,
      // 'chasesNo': chasesNoController.text,
    }).then((value){
      firestoreInstance.collection("Bikes")
          .doc(value.id)
          .collection("ServiceDetails")
          .add({
        'date': date01Controller.text,
        'handlingPerson': handingPerson01Controller.text,
        'deliveryDate': deliveryDate01Controller.text,
        'time': time01Controller.text,
        'km': km01Controller.text,
        'complaint01': complaint0101Controller.text,
        'complaint02': complaint0102Controller.text,
        'complaint03': complaint0103Controller.text,
        'complaint04': complaint0104Controller.text,
        'complaint05': complaint0105Controller.text,
        'sparePart01': sparePart0101Controller.text,
        'sparePart02': sparePart0102Controller.text,
        'sparePart03': sparePart0103Controller.text,
        'sparePart04': sparePart0104Controller.text,
        'sparePart05': sparePart0105Controller.text,
        'billAmount': billAmount01Controller.text,
      });
    });
  }
  void retrieveOnce(){
    firestoreInstance.collection("Bikes").get().then((value) => {
      value.docs.forEach((result) {
        print(result.data());
    })
    });
  }
  void retrievesubcollection(){
    firestoreInstance.collection("Bikes").get().then((value){
      value.docs.forEach((result) {
        firestoreInstance.collection("Bikes")
        .doc(result.id)
        .collection("ServiceDetails")
        .get()
        .then((subcol){
          subcol.docs.forEach((element) {
            print(element.data());
          });
        });
      });
    });
  }
}
