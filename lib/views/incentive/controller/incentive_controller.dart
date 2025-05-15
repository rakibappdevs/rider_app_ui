import 'package:get/get.dart';

class IncentiveController extends GetxController {
  final selectedOfferCardIndex = 0.obs;

  final List<Map<String, dynamic>> incentiveOfferList = [
    {
      'earning': 100.00,
      'incentive': 10.00,
    },
    {
      'earning': 200.00,
      'incentive': 50.00,
    },
    {
      'earning': 1000.00,
      'incentive': 200.00,
    },
    {
      'earning': 5000.00,
      'incentive': 1000.00,
    },
  ];
}
