import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/project_detail.dart';
import 'package:portfolio_app/widgets/header.dart';
import '../example/projects.dart';

import '../widgets/project_card.dart';

class ListViewTest extends StatelessWidget {
  const ListViewTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Row(
            children: [
              Column(
                children: [
                  Text('Welcome There'),
                  Text('Marcel´s Portfolio'),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  return ProjectCard(project: projects[index]);
                },
              ),
            ),
          ),
          SizedBox(height: 20),
        ]),
      ),
    );
  }
}
