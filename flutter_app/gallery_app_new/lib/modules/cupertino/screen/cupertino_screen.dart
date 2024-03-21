// import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CupertinoScreen extends StatelessWidget {
  const CupertinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text(
                "Widget",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(),
            SizedBox(
              width: double.infinity,
              height: 100,
              child: RefreshIndicator(
                onRefresh: () async {},
                child: ListView(
                  children: const [
                    Center(child: cupertino.Text("Pull to refresh")),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
