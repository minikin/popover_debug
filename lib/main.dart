import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ManageDocuments(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ManageDocuments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const centerKey = ValueKey<String>('bottom-sliver-list');
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          floating: true,
          expandedHeight: 60,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            'Manage Documents',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ),
              onPressed: () => showCupertinoModalPopup<void>(
                context: context,
                builder: (context) => CupertinoActionSheet(
                  title: const Text('Title'),
                  message: const Text('Message'),
                  actions: [
                    CupertinoActionSheetAction(
                      child: const Text('Action One'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoActionSheetAction(
                      child: const Text('Action Two'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),

              // onPressed: () => showPopover(
              //   context: context,
              //   bodyBuilder: (context) => SafeArea(
              //     child: Container(
              //       color: Colors.red,
              //       child: Column(
              //         children: [
              //           Text('Text One'),
              //           Text('Text Two'),
              //           Text('Text Three'),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ),
          ],
        ),
      ],
    );
  }
}
