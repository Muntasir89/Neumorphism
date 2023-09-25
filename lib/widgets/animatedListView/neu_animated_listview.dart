import 'package:flutter/material.dart';

class NeuAnimatedListView extends StatefulWidget {
  const NeuAnimatedListView({super.key});

  @override
  State<NeuAnimatedListView> createState() => _NeuAnimatedListViewState();
}

class _NeuAnimatedListViewState extends State<NeuAnimatedListView> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(0, duration: const Duration(seconds: 1));
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(index, (_, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: const Card(
          margin: EdgeInsets.all(10),
          color: Colors.red,
          child: ListTile(
            title: Text(
              "Deleted",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      );
    }, duration: const Duration(milliseconds: 300));
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("AnimatedList Item"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          IconButton(
              onPressed: _addItem,
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              )),
          Expanded(
              child: AnimatedList(
                  key: _key,
                  initialItemCount: 0,
                  padding: const EdgeInsets.all(10),
                  itemBuilder: (context, index, animation) {
                    return SizeTransition(
                      sizeFactor: animation,
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade500,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 5.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 5.0,
                              spreadRadius: 1.0),
                        ]),
                        child: Container(
                          color: Colors.grey.shade300,
                          child: ListTile(
                            leading: Icon(Icons
                                .notifications_active_outlined), // otherwise notification_off_outline
                            title: Text(
                              _items[index],
                              style: const TextStyle(fontSize: 20),
                            ),
                            subtitle: Text("every day fazar salat"),
                            // trailing: ,
                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                _removeItem(index);
                              },
                            ),
                          ),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}

/*
BoxShadow(
                              color: Colors.grey.shade500,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 5.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 5.0,
                              spreadRadius: 1.0),
                        ]),
*/