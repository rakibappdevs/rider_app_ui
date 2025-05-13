import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibanking/routes/routes.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/profile_controller.dart';
part 'profile_tablet_screen.dart';
part 'profile_mobile_screen.dart';
part '../widget/user_image_widget.dart';
part '../widget/name_time.dart';
part '../widget/day_box_widget.dart';
part '../widget/card_type_box.dart';
part '../widget/custom_container_box.dart';


class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ProfileMobileScreen(),
      tablet: ProfileTabletScreen(),
    );
  }
}

