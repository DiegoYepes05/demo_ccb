import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TermScreen extends StatelessWidget {
  const TermScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text('Términos y condiciones',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
              SizedBox(
                height: 10,
              ),
              Text(
                  'Non occaecat voluptate nostrud in non fugiat sint nostrud officia officia laborum anim. Ipsum aute commodo adipisicing amet consectetur. Laborum quis minim nisi mollit aute non exercitation ipsum amet. Laboris fugiat sit voluptate non Lorem esse tempor fugiat proident labore. Ad incididunt enim quis nostrud culpa. Ex dolore eiusmod eu incididunt minim dolor consequat dolor id in esse ad velit aliqua.'),
              Text(
                  'Non occaecat voluptate nostrud in non fugiat sint nostrud officia officia laborum anim. Ipsum aute commodo adipisicing amet consectetur. Laborum quis minim nisi mollit aute non exercitation ipsum amet. Laboris fugiat sit voluptate non Lorem esse tempor fugiat proident labore. Ad incididunt enim quis nostrud culpa. Ex dolore eiusmod eu incididunt minim dolor consequat dolor id in esse ad velit aliqua.'),
              Text(
                  'Non occaecat voluptate nostrud in non fugiat sint nostrud officia officia laborum anim. Ipsum aute commodo adipisicing amet consectetur. Laborum quis minim nisi mollit aute non exercitation ipsum amet. Laboris fugiat sit voluptate non Lorem esse tempor fugiat proident labore. Ad incididunt enim quis nostrud culpa. Ex dolore eiusmod eu incididunt minim dolor consequat dolor id in esse ad velit aliqua.'),
              Text(
                  'Non occaecat voluptate nostrud in non fugiat sint nostrud officia officia laborum anim. Ipsum aute commodo adipisicing amet consectetur. Laborum quis minim nisi mollit aute non exercitation ipsum amet. Laboris fugiat sit voluptate non Lorem esse tempor fugiat proident labore. Ad incididunt enim quis nostrud culpa. Ex dolore eiusmod eu incididunt minim dolor consequat dolor id in esse ad velit aliqua.'),
              Text(
                  'Non occaecat voluptate nostrud in non fugiat sint nostrud officia officia laborum anim. Ipsum aute commodo adipisicing amet consectetur. Laborum quis minim nisi mollit aute non exercitation ipsum amet. Laboris fugiat sit voluptate non Lorem esse tempor fugiat proident labore. Ad incididunt enim quis nostrud culpa. Ex dolore eiusmod eu incididunt minim dolor consequat dolor id in esse ad velit aliqua.'),
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}
