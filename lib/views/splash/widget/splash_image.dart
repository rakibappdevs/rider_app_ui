import 'package:flutter/material.dart';

class SplashImage extends StatelessWidget {
  const SplashImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('');
    // return Obx(
    //   () => CachedNetworkImage(
    //     imageUrl: BasicServices.splashImage.value,
    //     placeholder: (context, url) => const Text(''),
    //     errorWidget: (context, url, error) => const Text(''),
    //     fit: BoxFit.cover,
    //   ),
    // );
  }
}
