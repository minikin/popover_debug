import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ManageDocuments());
  }
}

class ManageDocuments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          floating: true,
          expandedHeight: 60,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            'Manage Documents',
            style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.add,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              onPressed: () => showPopover(
                context: context,
                bodyBuilder: (context) => Column(
                  children: [
                    Text('Text One'),
                    Text('Text Two'),
                    Text('Text Three'),
                  ],
                ),
                direction: PopoverDirection.bottom,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
