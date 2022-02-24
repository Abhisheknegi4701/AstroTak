import 'package:astrotak/Bloc/familybloc.dart';
import 'package:astrotak/Bloc/navigationcubit.dart';
import 'package:astrotak/Bloc/profilebloc.dart';
import 'package:astrotak/Bloc/astrobloc.dart';
import 'package:astrotak/datarepo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Screens/bottomnavigationbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  datarepo datarepository = datarepo();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RepositoryProvider.value(
          value: datarepository,
          child: MultiBlocProvider(providers: [
            BlocProvider(create: (_) => NavigationCubit()),
            BlocProvider(
              create: (_) => Astrobloc(data: datarepository),
            ),
            BlocProvider(
              create: (_) => ProfileBloc(datarepository),
            ),
            BlocProvider(
              create: (_) => FamilyBloc(datarepository),
            ),
          ], child: RootScreen())),
    );
  }
}
