import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ridebuddy/view/home/screen/home.dart';
import 'package:ridebuddy/view_model/bottom_nav/bottom_nav_bloc.dart';

class Home extends StatelessWidget {
  static const String routeName = "/Home-page";
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavBloc, int>(
        builder: (context, index) {
          if (index == 0) {
            return const HomeScreen();
          } else if (index == 1) {
            return const Center(
              child: Text("Network page"),
            );
          } else if (index == 2) {
            return const Center(
              child: Text("Map page"),
            );
          } else if (index == 3) {
            return const Center(
              child: Text("Profile page"),
            );
          }
          return const Center(
            child: Text("Home page"),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavBloc, int>(
        builder: (context, index) {
          return NavigationBar(
            selectedIndex: index,
            onDestinationSelected: (index) {
              BlocProvider.of<BottomNavBloc>(context).add(
                BottomNavEvent.values[index],
              );
            },
            backgroundColor: Colors.transparent,
            indicatorColor: Colors.orangeAccent,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            destinations: const [
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.orange,
                  ),
                  label: "Home"),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.groups,
                    color: Colors.white,
                  ),
                  icon: Icon(
                    Icons.groups_outlined,
                    color: Colors.orange,
                  ),
                  label: "Network"),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.map,
                    color: Colors.white,
                  ),
                  icon: Icon(
                    Icons.map_outlined,
                    color: Colors.orange,
                  ),
                  label: "Map"),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  icon: Icon(
                    Icons.person_outline,
                    color: Colors.orange,
                  ),
                  label: "Profile"),
            ],
          );
        },
      ),
    );
  }
}
