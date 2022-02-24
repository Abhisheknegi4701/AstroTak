import 'package:astrotak/Bloc/navigationcubit.dart';
import 'package:astrotak/Screens/askquestion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (ctxxx, state) {
          return BottomNavigationBar(
            currentIndex: state.index,
            showUnselectedLabels: false,
            selectedItemColor: const Color.fromRGBO(252, 148, 44, 1),
            unselectedItemColor: const Color.fromARGB(211, 151, 151, 150),
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/home.png")),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/talk.png")),
                label: 'Talk',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/ask.png")),
                label: 'Ask Question',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/reports.png")),
                label: 'Reports',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/chat.png")),
                label: 'Chat',
              ),
            ],
            onTap: (index) {
              if (index == 0) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.home);
              } else if (index == 1) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.talk);
              } else if (index == 2) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.askquestion);
              } else if (index == 3) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.reports);
              } else if (index == 4) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.chat);
              }
            },
          );
        },
      ),
      body:
          BlocBuilder<NavigationCubit, NavigationState>(builder: (ctx, state) {
        if (state.navbarItem == NavbarItem.home) {
          return const Home();
        } else if (state.navbarItem == NavbarItem.talk) {
          return const Talk();
        } else if (state.navbarItem == NavbarItem.askquestion) {
          return AstroPage(context: context);
        } else if (state.navbarItem == NavbarItem.reports) {
          return const Reports();
        } else if (state.navbarItem == NavbarItem.chat) {
          return const Chat();
        }
        return Container();
      }),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}

class Talk extends StatelessWidget {
  const Talk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text("Talk"),
        ),
      ),
    );
  }
}

class Reports extends StatelessWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text("Reports"),
        ),
      ),
    );
  }
}

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text("Chat"),
        ),
      ),
    );
  }
}
