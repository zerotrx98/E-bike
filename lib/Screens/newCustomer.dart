import 'package:cloud_firestore/cloud_firestore.dart';
import'package:flutter/material.dart';
import 'HomeScreen/HomeScreen.dart';

class NewCustomer extends StatelessWidget {
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

  void addsericves(){
    final data = {
      'name': 'nameController.text',
      'phoneNo':'phoneNoController.text',
      'vehicle':'vehicleModelController.text',
      'place':'placeController.text',
      'registrationNo':'registrationNoController.text',
      'motorNo':'motorNoController.text',
      'ControllerNo':'controllerNoController.text',
      'chasesNo':'chasesNoController.text'
    };
    store.add(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            // color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('New Services',
          style: TextStyle( color:Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600
          ),),
        backgroundColor: Colors.green[900],
        elevation: 0,
      ),
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
                                    controller: chasesNoController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        //     borderRadius: const BorderRadius.all(Radius.circular(
                                        //         20.0)),
                                        //     borderSide: BorderSide()
                                      ),
                                      labelText: 'ChasesNo',
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
                                  )),


                            ],
                          ),
                        ),
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

          onPressed: () {
            addsericves();
              },
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
}
