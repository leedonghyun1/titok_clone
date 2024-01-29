import 'package:flutter/material.dart';
import 'package:titok_clone/constants/sizes.dart';

final tabs = [
  "Top",
  "Users",
  "Videos",
  "Soudns",
  "LIVE",
  "Shopping",
  "Brands",
];

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Discover',
          ),
          bottom: TabBar(
            splashFactory: NoSplash.splashFactory,
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size16,
            ),
            isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey.shade500,
            indicatorColor: Colors.black54,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: Sizes.size16,
            ),
            tabs: [
              for (var tab in tabs)
                Tab(
                  text: tab,
                ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridView.builder(
              itemCount: 20,
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.size5,
                vertical: Sizes.size20,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: Sizes.size10,
                mainAxisSpacing: Sizes.size10,
                childAspectRatio: 9 / 16,
              ),
              itemBuilder: (context, index) => AspectRatio(
                aspectRatio: 9 / 16,
                child: FadeInImage.assetNetwork(
                  fit: BoxFit.fitHeight,
                  placeholder: "assets/images/placeholder.jpg",
                  image:
                      "https://cdn.pixabay.com/photo/2018/03/27/21/43/startup-3267505_640.jpg",
                ),
              ),
            ),
            for (var tab in tabs.skip(
              1,
            ))
              Center(
                child: Text(
                  tab,
                  style: const TextStyle(
                    fontSize: Sizes.size24,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
