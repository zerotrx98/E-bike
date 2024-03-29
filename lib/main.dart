import 'package:e_bike/Screens/demo/customer/ubdate.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/ExCuspomer.dart';
import 'Screens/HomeScreen/firsthome.dart';
import 'Screens/HomeScreen/service/service.formdart.dart';
import 'Screens/HomeScreen/service/servies.dart';
import 'Screens/demo/homescreen.dart';
import 'Screens/demo/service/ServiceUpdate.dart';
import 'Screens/demo/service/serviceDetail.dart';
import 'Screens/newCustomer.dart';
import 'firebase_options.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => firstScreen(),
        '/updateCustomer': (context) => UpdateUser(docId: 'dataStore.id',),
        '/exCustomer' : (context) => ExCustomer(),
        '/AddressData': (context) => AddressData(),
        '/serviceDetails':(context) =>VehicleDetails(),
        '/UpdateService':(context)=>UpdateService('dataStore.id'),
        },
    );
  }
}

