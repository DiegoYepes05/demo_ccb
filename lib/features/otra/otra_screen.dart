import 'package:demo_ccb/config/config.dart';
import 'package:demo_ccb/features/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OtraScreen extends StatelessWidget {
  const OtraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                )),
            backgroundColor: Colors.black,
            expandedHeight: size.height * 0.5,
            foregroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  SizedBox.expand(
                      child: Image.asset(
                    'assets/images/no-image.jpeg',
                    fit: BoxFit.cover,
                  )),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                    CustomSliver(),
                  ],
                ),
              );
            }, childCount: 1),
          )
        ],
      ),
    );
  }
}

class CustomSliver extends StatelessWidget {
  const CustomSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text(
            'Consulta si eres afilaido o afiliada',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 10),
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
        ],
      ),
    );
  }
}
