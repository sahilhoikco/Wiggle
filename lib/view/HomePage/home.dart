import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wiggle/utils/common/commonappbar.dart';
import 'package:wiggle/utils/consts/colors.dart';
import 'package:wiggle/view/HomePage/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'Wiggle',
      ),
      floatingActionButton: InkWell(
        onTap: () {},
        child: Material(
          shape: const CircleBorder(),
          elevation: 10,
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: primaryColor, shape: BoxShape.circle),
            child: const Icon(
              CupertinoIcons.add,
              size: 30,
              color: black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SearchField(),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: GridView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.8,
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    return const AnimationCard();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
