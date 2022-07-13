import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';


class rootMaterial extends ConsumerStatefulWidget {
  const rootMaterial({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _rootMaterialState();
}

class _rootMaterialState extends ConsumerState<rootMaterial> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              titleLarge: TextStyle(fontFamily: 'BreeSerif', fontSize: 40))),
      home: Builder(builder: (context) {
        return Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.black, Colors.purpleAccent, Colors.black87])),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.transparent,
                      )),
                  Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35)),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: SingleChildScrollView(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: <Widget>[
                                      Text("Home",
                                          style: Theme.of(context).textTheme.titleLarge),
                                          Container(decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(35)),),                    
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(color: Colors.blue)),
                            ],
                          ),
                        ),
                      )),
                ],
              )),
        );
      }),
    );
  }
}
