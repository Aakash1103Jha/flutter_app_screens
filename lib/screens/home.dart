import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void showModal(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (builderCtx) {
          return Container(
            padding: const EdgeInsets.all(10),
            height: double.infinity,
            child: const Text("Modal Open"),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
            ),
            onPressed: () => showModal(context),
          )
        ],
        title: const Text("Home"),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        child: const Icon(Icons.add),
        onPressed: () => showModal(context),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        height: double.infinity,
        width: double.infinity,
        child: const Text("Homepage"),
      ),
    );
  }
}
