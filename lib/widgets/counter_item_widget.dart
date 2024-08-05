import 'package:flutter/material.dart';
import 'package:list_of_counters/models/counter_item_model.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key, required this.counteritem});
  final CounterItem counteritem;

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: widget.counteritem.color,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    widget.counteritem.count++;
                  });
                },
                icon: const Icon(
                  Icons.add_sharp,
                  size: 30,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: widget.counteritem.color,
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  if (widget.counteritem.count > 0) {
                    widget.counteritem.count--;
                  }
                });
              },
              icon: const Icon(
                Icons.remove_sharp,
                size: 30,
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: widget.counteritem.color,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  widget.counteritem.text,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: widget.counteritem.color,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '${widget.counteritem.count}',
                style: const TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width * 0.25,
            child: Image(
              image: AssetImage(widget.counteritem.image),
            ),
          ),
        ],
      ),
    );
  }
}
