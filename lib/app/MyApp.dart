import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_four/data/modules/onBoardingScreen.dart';
import 'package:project_four/network/local/ServicesBloc.dart';
import 'package:project_four/network/local/ServicesStates.dart';
import 'package:project_four/presentation/colorManger.dart';

class MyApp extends StatefulWidget {

  MyApp._internal();
  static final instance= MyApp._internal();
  factory MyApp()=>instance;
  bool isLast=false;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(providers: [
      BlocProvider(create: (BuildContext context)=>ServicesCubit()),
    ],
        child:BlocConsumer<ServicesCubit,ServicesStates>(
          listener:(context,states){} ,
          builder: (context,states){
            return MaterialApp(
              debugShowCheckedModeBanner:false,

              home: onBoardingScreen(),
            );
          },
        )
    );
  }
}