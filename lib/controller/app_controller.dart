import 'package:get/get.dart';

class AppController extends GetxController{
  RxInt n = 0.obs;

  void increament()
  {
    n = n++;
  }
  void decreamnet()
  {
    n = n--;
  }
}