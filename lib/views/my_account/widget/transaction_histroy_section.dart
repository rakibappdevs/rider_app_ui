part of '../screen/my_account_screen.dart';

class TransactionHistorySection extends GetView<MyAccountController> {
  const TransactionHistorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return HistoryCardWidget(index);
      },
    );
  }
}
