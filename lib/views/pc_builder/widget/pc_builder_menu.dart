part of '../screen/pc_builder_screen.dart';

class PcBuilderMenu extends StatelessWidget {
  const PcBuilderMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        switch (value) {
          case 'save':
            // TODO: Implement save functionality
            break;
          case 'share':
            // TODO: Implement share functionality
            break;
          case 'clear':
            // TODO: Implement clear functionality
            break;
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'save',
          child: Row(children: [
            Icon(Icons.save),
            SizedBox(width: 8),
            Text('Save Build'),
          ]),
        ),
        const PopupMenuItem<String>(
          value: 'share',
          child: Row(
            children: [
              Icon(Icons.share),
              SizedBox(width: 8),
              Text('Share Build'),
            ],
          ),
        ),
        const PopupMenuItem<String>(
          value: 'clear',
          child: Row(
            children: [
              Icon(Icons.clear_all),
              SizedBox(width: 8),
              Text('Clear All'),
            ],
          ),
        ),
      ],
    );
  }
}
