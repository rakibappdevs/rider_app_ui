part of '../screen/login_screen.dart';

class InputFieldWidget extends GetView<LoginController> {
  const InputFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.verticalSize * 0.5),
          decoration: BoxDecoration(
            color: CustomColor.whiteColor,
            borderRadius: BorderRadius.circular(Dimensions.radius * 1.1),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              PrimaryInputWidget(
                controller: TextEditingController(),
                hintText: 'XXXXXXXXXXXXXXXX',
                skipEnterText: true,
                showBorderSide: false,
              ),
              Divider(
                color: Colors.grey.withAlpha(88),
              ),
              PrimaryInputWidget(
                isPasswordField: true,
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
                controller: TextEditingController(),
                hintText: Strings.password,
                skipEnterText: true,
                showBorderSide: false,
              ),

            ],
          ));
    
  
  }
}
