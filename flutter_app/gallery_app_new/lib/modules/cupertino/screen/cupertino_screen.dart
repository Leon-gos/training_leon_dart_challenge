import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoScreen extends StatelessWidget {
  const CupertinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: _buildTabBar(),
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
                          child: Text("Pull to refresh"),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "CupertinoActivityIndicator",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: CupertinoActivityIndicator(),
          ),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Button",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Center(
            child: CupertinoButton(
              child: const Text(
                "Button",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
          ),
          Center(
            child: CupertinoButton(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Slider",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: double.infinity,
            child: CupertinoSlider(
              value: 10,
              min: 0,
              max: 100,
              onChanged: (double value) {},
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: CupertinoSlider(
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                CupertinoSwitch(
                  value: true,
                  onChanged: (bool value) {},
                ),
                CupertinoSwitch(
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

  CupertinoTabBar _buildTabBar() {
    return CupertinoTabBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.star_fill),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.clock_solid),
          label: 'Recents',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person_alt_circle_fill),
          label: 'Recents',
        ),
      ],
    );
  }
}
