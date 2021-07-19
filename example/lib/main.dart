import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:valorantapi/models/agent/agent.dart';
import 'package:valorantapi/valorantapi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ValorantAPI service = ValorantAPI();

  Widget agentWidget(Agent agent) {
    return ListTile(
      title: Text(agent.displayName),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(agent.displayIcon),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Valorant Sdk example app'),
        ),
        body: FutureBuilder(
          future: service.getAllAgents(),
          builder: (context, AsyncSnapshot<List<Agent>> snapshot) {
            return ListView.separated(
                itemBuilder: (context, index) {
                  return agentWidget(snapshot.data![index]);
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 2,
                  );
                },
                itemCount: snapshot.data!.length);
          },
        ),
      ),
    );
  }
}
