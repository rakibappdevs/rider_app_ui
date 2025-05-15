part of '../screen/profile_screen.dart';

class UserImageWidget extends GetView<ProfileController> {
  const UserImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Positioned(
        left: MediaQuery.of(context).size.width * 0.35,
        top: 35,
        child: Column(
          children: [
            CircleAvatar(
              radius: Dimensions.radius * 5,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl:
                  'https://img.myloview.com/stickers/happy-handsome-male-business-leader-businessman-professional-in-glasses-looking-at-camera-with-toothy-smile-office-employee-manager-small-business-owner-head-shot-portrait-700-279798845.jpg',
                  fit: BoxFit.cover,
                  width: Dimensions.radius * 10,
                  height: Dimensions.radius * 10,
                  placeholder: (context, url) =>
                      CircularProgressIndicator(color: CustomColor.primary,),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
          ],
        ),);
  
  }
}
