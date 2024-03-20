import 'package:flutter/material.dart';

class ImageTitleAppbarScreen extends StatelessWidget {
  const ImageTitleAppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 300.0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.download),
                padding: EdgeInsets.zero,
              )
            ],
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                var top = constraints.maxHeight;
                return FlexibleSpaceBar(
                  title: const Text("Sliver appbar"),
                  background: Image.network(
                    "https://images.unsplash.com/photo-1542601098-3adb3baeb1ec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5bb9a9747954cdd6eabe54e3688a407e&auto=format&fit=crop&w=500&q=60",
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                title: Center(
                  child: Text('$index',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 50,
                          color: Colors.greenAccent[400]) //TextStyle
                      ), //Text
                ), //Center
              ), //ListTile
              childCount: 51,
            ), //SliverChildBuildDelegate
          )
        ],
      ),
    );
  }
}
