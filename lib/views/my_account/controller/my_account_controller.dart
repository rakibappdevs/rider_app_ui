import 'package:get/get.dart';

class MyAccountController extends GetxController {
  var historyList = [].obs;

  final List<RxBool> isExpanded = List.generate(1000, (_) => false.obs);

  void toggleCardExpansion(int index) {
    for (int i = 0; i < isExpanded.length; i++) {
      if (i != index) {
        isExpanded[i].value = false;
      }
    }
    isExpanded[index].toggle();
  }

}
