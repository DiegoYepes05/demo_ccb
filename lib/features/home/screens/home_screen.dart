import 'package:flutter/material.dart';
import 'package:demo_ccb/config/config.dart';
import 'package:demo_ccb/features/shared/shared.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: 40,
              color: Colors.black,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(
                Icons.face_6,
                size: 35,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextUser(),
            const SizedBox(
              height: 30,
            ),
            const CustomSwiper(),
            const CustomCategories(
              icon: Icons.border_all_rounded,
              text: 'Mis destacados',
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: lisv.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = lisv[index];
                  return CustomLisv(
                    icon: item.icon,
                    text: item.text,
                  );
                },
              ),
            ),
            const CustomCategories(
              icon: Icons.favorite,
              text: 'Te recomendamos',
            ),
            const CustomSwiper(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottonNavigationBar(),
    );
  }
}
