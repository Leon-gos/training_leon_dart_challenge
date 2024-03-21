import 'package:flutter/material.dart';

class ImageTitleAppbarScreen extends StatelessWidget {
  const ImageTitleAppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300.0,
            stretch: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.download),
                padding: EdgeInsets.zero,
              )
            ],
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                return FlexibleSpaceBar(
                  title: const Text("Sliver appbar"),
                  background: Image.network(
                    "https://images.unsplash.com/photo-1542601098-3adb3baeb1ec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5bb9a9747954cdd6eabe54e3688a407e&auto=format&fit=crop&w=500&q=60",
                    fit: BoxFit.cover,
                  ),
                  stretchModes: const [
                    StretchMode.zoomBackground
                  ],
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
