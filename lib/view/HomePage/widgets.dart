import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:wiggle/utils/consts/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
      child: Container(
        height: 45,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: primaryColor, width: 0.8),
          color: black,
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  cursorColor: primaryColor,
                  style: const TextStyle(color: white), // Text color
                  decoration: const InputDecoration(
                    hintText: 'Search', // Placeholder text
                    hintStyle:
                        TextStyle(color: Colors.grey), // Placeholder text color
                    border: InputBorder.none, // Remove default border
                  ),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.search,
                color: primaryColor, // Search icon color
              ),
              onPressed: () {
                // Add your search functionality here
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AnimationCard extends StatefulWidget {
  const AnimationCard({super.key});

  @override
  State<AnimationCard> createState() => _AnimationCardState();
}

class _AnimationCardState extends State<AnimationCard>
    with TickerProviderStateMixin {
  late final GifController gifController;

  @override
  void initState() {
    gifController = GifController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: primaryColor),
      child: Gif(
        fps: 10,
        controller: gifController,
        // duration: const Duration(seconds: 20),
        autostart: Autostart.loop,
        placeholder: (context) =>
            const Center(child: CircularProgressIndicator()),
        image: const NetworkImage(
            'https://user-images.githubusercontent.com/14011726/94132137-7d4fc100-fe7c-11ea-8512-69f90cb65e48.gif'),
      ),
    );
  }
}
