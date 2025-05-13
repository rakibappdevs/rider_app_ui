part of '../screen/profile_screen.dart';

class CardTypeBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool showSwitch;
  final bool? value;
  final ValueChanged<bool>? onChanged;

  const CardTypeBox({
    Key? key,
    required this.icon,
    required this.title,
    this.showSwitch = false,
    this.value,
    this.onChanged,
  })  : assert(
          showSwitch == false || (value != null && onChanged != null),
          'If showSwitch is true, value and onChanged must be provided.',
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius),
        color: CustomColor.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.verticalSize * 0.15,
      ),
      child: ListTile(
        leading: Icon(icon),
        title: TextWidget(title),
        trailing: showSwitch
            ? Switch(
                activeColor: CustomColor.whiteColor,
                activeTrackColor: CustomColor.primary,
                value: value!,
                onChanged: onChanged!,
              )
            : null,
      ),
    );
  }
}
