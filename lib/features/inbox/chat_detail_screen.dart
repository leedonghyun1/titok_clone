import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:titok_clone/constants/gaps.dart';
import 'package:titok_clone/constants/sizes.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({super.key});

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ListTile(
          contentPadding: EdgeInsets.zero,
          horizontalTitleGap: Sizes.size8,
          leading: CircleAvatar(
            radius: Sizes.size24,
            foregroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/11994918?v=4"),
            child: Text("DH"),
          ),
          title: Text(
            "DH",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            "Active Now",
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FaIcon(
                FontAwesomeIcons.flag,
                color: Colors.black,
                size: Sizes.size20,
              ),
              Gaps.h32,
              FaIcon(
                FontAwesomeIcons.ellipsis,
                color: Colors.black,
                size: Sizes.size20,
              ),
            ],
          ),
        ),
      ),
      body: Stack(children: [
        ListView.separated(
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.size14,
            horizontal: Sizes.size14,
          ),
          itemBuilder: (context, index) {
            // true is me!
            final isMine = index % 2 == 0;
            return Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment:
                  isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(
                    Sizes.size14,
                  ),
                  decoration: BoxDecoration(
                    color:
                        isMine ? Colors.blue : Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(Sizes.size20),
                      topRight: const Radius.circular(Sizes.size20),
                      bottomLeft: Radius.circular(
                        isMine ? Sizes.size20 : Sizes.size5,
                      ),
                      bottomRight: Radius.circular(
                        !isMine ? Sizes.size20 : Sizes.size5,
                      ),
                    ),
                  ),
                  child: const Text(
                    "This is a messages!!!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Sizes.size16,
                    ),
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => Gaps.v10,
          itemCount: 10,
        )
      ]),
    );
  }
}
