import 'package:e_bike/Screens/demo/customer/user%20repository.dart';
import 'package:e_bike/Screens/demo/customer/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpcontro extends GetxController {
  static SignUpcontro get instance=>Get.find();

  final NameController = TextEditingController();
  final phoneController = TextEditingController();
  final PlaceController = TextEditingController();
  final VehicleModelController = TextEditingController();
  final RegistrationNoController = TextEditingController();
  final chaseNumberController = TextEditingController();
  final motoNumberController = TextEditingController();
  final controllerNumberController = TextEditingController();

  final userRepo = Get.put(UserRepository());

  Future <void> creatuser(UserModel user)async{
    await userRepo.AddUser(user);
  }
}
