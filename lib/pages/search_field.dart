import 'package:flutter/material.dart';
import 'package:tracking_cuaca/pages/result.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
    TextEditingController placeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( 
        appBar: AppBar(
          title: const Text("Aplikasi Cuaca Negara", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),

        body: Center(
          child: Container(
            padding: EdgeInsets.only(left:50, right: 50),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
              "images/logo.png",
              height: 80,
              width: 80,
            ),
              SizedBox(
              height: 15,
              width: 20,
            ),
              
              TextField(
                decoration: InputDecoration(
                  hintText: "ex: Indonesia"),
                  controller: placeController,
              ),
              SizedBox(
                height: 50.0,
              ),
              ElevatedButton(
                onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Result(place: placeController.text,);
                    }));
                },

                child: const Text("cari"),
              )
            ],
          ),
          ) 
        ),
      ),
    );
  }
}