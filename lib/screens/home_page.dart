import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/header.dart';
import '../example/projects.dart';
import '../widgets/intro_card.dart';
import '../widgets/project_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Header(),
                      const SizedBox(height: 25),
                      SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: projects.length,
                            itemBuilder: (context, index) {
                              return ProjectCard(project: projects[index]);
                            },
                          )),
                    ],
                  ),
                ),
              ))),
    );
  }
}
