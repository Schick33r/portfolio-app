import 'package:flutter/material.dart';

import '../models/project.dart';

class ProjectDetail extends StatelessWidget {
  final Project project;
  const ProjectDetail({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
            bottom: false,
            child: SizedBox(
              width: screenSize.width,
              height: screenSize.height,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          BackButton(
                            onPressed: () => Navigator.pop(context),
                          ),
                          Text(
                            project.projectName,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              project.projectYear.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.network(project.imageUrl,
                              fit: BoxFit.cover)),
                      const SizedBox(height: 20),
                      const Text(
                        'Technologies',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 10),
                      HorizontalTechView(
                          techList: project.technologiesUsed ?? []),
                      const SizedBox(height: 25),
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        project.projectDescription,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}

class HorizontalTechView extends StatelessWidget {
  final List<String> techList;

  const HorizontalTechView({Key? key, required this.techList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 45,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: techList.length,
            itemBuilder: (context, index) {
              return Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  margin: const EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Text(techList[index],
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500)));
            }));
  }
}
