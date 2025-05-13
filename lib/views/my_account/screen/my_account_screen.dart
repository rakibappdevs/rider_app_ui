import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/my_account_controller.dart';
import '../widget/expand_widget.dart';
part 'my_account_tablet_screen.dart';
part 'my_account_mobile_screen.dart';
part '../widget/amount_card.dart';
part '../widget/two_card_amount.dart';
part '../widget/transaction_histroy_section.dart';
part '../widget/history_card_widget.dart';


class MyAccountScreen extends GetView<MyAccountController> {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MyAccountMobileScreen(),
      tablet: MyAccountTabletScreen(),
    );
  }
}

