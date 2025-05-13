import 'package:get/get.dart';

class OrderRequestController extends GetxController {
  var isAccepted = false.obs;

  void acceptOrder() => isAccepted.value = true;
  void ignoreOrder() => isAccepted.value = false;

}
