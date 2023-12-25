import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxx/controller/home_page_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("COUNTER")),
        backgroundColor: Colors.orange,
      ),
      body:GetX<HomePageController>(
        init: HomePageController(),
        builder: (controller) =>Align(
          child: Container(
            height: 150,
            width: 300,
            alignment: Alignment.center,
            decoration:const BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.orange,
              

              
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  controller.increment();
          
                }, icon:const Icon(Icons.add) ),
                const SizedBox(width: 5,),
                 Text("${controller.counter.value}"),
                const SizedBox(width: 5,),
                IconButton(onPressed: (){              controller.decrement();
          
          
                }, icon:const Icon(Icons.remove) ),
          
              ]
          
              ),
            ],
                ),
          ),
        ),
       )

    );
  }
}