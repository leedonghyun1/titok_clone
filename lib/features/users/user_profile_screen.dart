// 사진 중에 Stack을 이용해서 사진 위에 Positioned 한 아이콘과 텍스트를 추가.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:titok_clone/constants/gaps.dart';
import 'package:titok_clone/constants/sizes.dart';
import 'package:titok_clone/features/settings/settings_screen.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  void _onGearPressed() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SettingsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: const Text('DH'),
              actions: [
                IconButton(
                  onPressed: _onGearPressed,
                  icon: const FaIcon(
                    FontAwesomeIcons.gear,
                    size: Sizes.size20,
                  ),
                )
              ],
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    foregroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/11994918?v=4"),
                    child: Text("DH"),
                  ),
                  Gaps.v20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "@DH",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: Sizes.size20,
                        ),
                      ),
                      Gaps.h5,
                      FaIcon(
                        FontAwesomeIcons.solidCircleCheck,
                        color: Colors.blue.shade200,
                        size: Sizes.size18,
                      ),
                    ],
                  ),
                  Gaps.v24,
                  SizedBox(
                    height: Sizes.size52,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              "97",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Sizes.size18,
                              ),
                            ),
                            Gaps.v5,
                            Text(
                              "Following",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          width: Sizes.size32,
                          thickness: Sizes.size1,
                          color: Colors.grey.shade400,
                          indent: Sizes.size10,
                          endIndent: Sizes.size10,
                        ),
                        Column(
                          children: [
                            const Text(
                              "10M",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Sizes.size18,
                              ),
                            ),
                            Gaps.v5,
                            Text(
                              "Followers",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          width: Sizes.size32,
                          thickness: Sizes.size1,
                          color: Colors.grey.shade400,
                          indent: Sizes.size10,
                          endIndent: Sizes.size10,
                        ),
                        Column(
                          children: [
                            const Text(
                              "193.4M",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Sizes.size18,
                              ),
                            ),
                            Gaps.v5,
                            Text(
                              "Likes",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gaps.v14,
                  FractionallySizedBox(
                    widthFactor: 0.33,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: Sizes.size12,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(
                          Sizes.size5,
                        ),
                      ),
                      child: const Text(
                        'Follow',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Gaps.v14,
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Sizes.size32,
                    ),
                    child: Text(
                      "All highlights and where to watch live matches on FIFA + I wonder how it would look",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Gaps.v14,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.link,
                        size: Sizes.size14,
                      ),
                      Gaps.h4,
                      Text(
                        "https://www.naver.com",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Gaps.v5,
                    ],
                  ),
                  Gaps.v20,
                  Container(
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          color: Colors.grey.shade200,
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: TabBar(
                      indicatorColor: Colors.grey.shade500,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelPadding: const EdgeInsets.only(
                        bottom: Sizes.size14,
                      ),
                      labelColor: Colors.black,
                      tabs: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Sizes.size20,
                          ),
                          child: Icon(
                            Icons.grid_4x4_rounded,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Sizes.size20,
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.heart,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            GridView.builder(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              itemCount: 20,
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: Sizes.size2,
                mainAxisSpacing: Sizes.size2,
                childAspectRatio: 9 / 16,
              ),
              itemBuilder: (context, index) => Column(
                children: [
                  AspectRatio(
                    aspectRatio: 9 / 16,
                    child: FadeInImage.assetNetwork(
                      fit: BoxFit.cover,
                      placeholder: "assets/images/placeholder.jpg",
                      image:
                          "https://cdn.pixabay.com/photo/2018/03/27/21/43/startup-3267505_640.jpg",
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Text("Page Two"),
            ),
          ],
        ),
      ),
    );
  }
}
