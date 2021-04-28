import 'package:flutter/material.dart';

class ExerciseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyText2!,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      color: const Color(0xffeeee00),
                      // Yellow
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        color: const Color(0xffee0000),
                        // Red
                        height: 120.0,
                        alignment: Alignment.center,
                        child: const Text('Flexible Content'),
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.red,
                        ),
                        Container(
                          width: 90,
                          height: 90,
                          color: Colors.green,
                        ),
                        Positioned(
                          top: 0.0,
                          child: Icon(Icons.message, size: 128.0, color: Colors.greenAccent[400]), //Icon
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          color: Colors.blue,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
