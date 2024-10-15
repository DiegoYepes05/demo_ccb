import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NoticiasScreen extends StatelessWidget {
  const NoticiasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        title: const Text(
          'Noticias del dia',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            )),
        backgroundColor: Colors.grey.shade800,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CustomNoticias(),
            CustomNoticias(),
            CustomNoticias(),
          ],
        ),
      ),
    );
  }
}

class CustomNoticias extends StatelessWidget {
  const CustomNoticias({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text('1.', style: TextStyle(color: Colors.red)),
              SizedBox(width: 5),
              Text('CNBC', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Dolor in minim tempor incididunt magna id velit dolor non nulla quis pariatur.',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
        ),
        const SizedBox(height: 20),
        ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(50)),
          child: Image.asset(
            width: double.infinity,
            height: 280,
            'assets/images/no-image.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Magna proident aliquip magna magna labore anim in cupidatat pariatur cillum cillum. Laborum veniam adipisicing mollit incididunt velit cupidatat. In excepteur est dolor sunt sint nulla minim consequat labore commodo reprehenderit amet commodo ex. Cupidatat amet id excepteur nostrud consequat. Officia consectetur incididunt ipsum nulla aliquip est officia. Excepteur eu qui sit exercitation aliqua deserunt ad excepteur veniam ut minim deserunt. Id sint ipsum in in id officia et dolor sit in consequat.',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(15)),
              child: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              child: const Icon(
                Icons.comment,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Divider(),
        const SizedBox(height: 25),
      ],
    );
  }
}
