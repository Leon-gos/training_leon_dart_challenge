import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart';

class CupertinoScreen extends StatelessWidget {
  const CupertinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return cupertino.CupertinoTabScaffold(
      tabBar: cupertino.CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(cupertino.CupertinoIcons.star_fill),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(cupertino.CupertinoIcons.clock_solid),
            label: 'Recents',
          ),
          BottomNavigationBarItem(
            icon: Icon(cupertino.CupertinoIcons.person_alt_circle_fill),
            label: 'Recents',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
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
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {},
                    child: ListView(
                      children: [
                        const Center(
                          child: cupertino.Text("Pull to refresh"),
                        ),
                        _buildIndicator(),
                        _buildButton(),
                        _buildSlider(),
                        _buildSwitch(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildIndicator() {
    return Container(
      margin: const EdgeInsets.all(16),
      child: const Column(
        crossAxisAlignment: cupertino.CrossAxisAlignment.start,
        children: [
          Text(
            "CupertinoActivityIndicator",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: cupertino.CupertinoActivityIndicator(),
          ),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: cupertino.CrossAxisAlignment.start,
        children: [
          const Text(
            "Button",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Center(
            child: cupertino.CupertinoButton(
              child: const Text(
                "Button",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
          ),
          Center(
            child: cupertino.CupertinoButton(
              color: Colors.amber,
              child: const Text("Button"),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSlider() {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: cupertino.CrossAxisAlignment.start,
        children: [
          const Text(
            "Slider",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: double.infinity,
            child: cupertino.CupertinoSlider(
              value: 10,
              min: 0,
              max: 100,
              onChanged: (double value) {},
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: cupertino.CupertinoSlider(
              value: 50,
              min: 0,
              max: 100,
              onChanged: (double value) {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSwitch() {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: cupertino.CrossAxisAlignment.start,
        children: [
          const Text(
            "Switch",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Row(
              children: [
                cupertino.CupertinoSwitch(
                  value: true,
                  onChanged: (bool value) {},
                ),
                cupertino.CupertinoSwitch(
                  value: false,
                  onChanged: (bool value) {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
