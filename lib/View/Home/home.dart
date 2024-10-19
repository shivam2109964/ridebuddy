import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridebuddy/View-Model/BottomNavigation/botton_nav_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        leading: const SizedBox(),
        centerTitle: true,
        title: Text.rich(
          style: GoogleFonts.philosopher(
            fontWeight: FontWeight.w700,
          ),
          const TextSpan(
            children: [
              TextSpan(text: "Ride"),
              TextSpan(
                text: "Buddy",
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
      body: BlocBuilder<BottonNavBloc, int>(
        builder: (context, currentIndex) {
          switch (currentIndex) {
            case 0:
              return const Center(
                child: Text("Home"),
              );
            case 1:
              return const Center(
                child: Text("Map"),
              );
            case 2:
              return const Center(
                child: Text("Profile"),
              );
          }
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<BottonNavBloc, int>(
        builder: (context, index) {
          return BottomNavigationBar(
            backgroundColor: Colors.orange.shade100,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.black,
            currentIndex: index,
            onTap: (index) {
              BlocProvider.of<BottonNavBloc>(context).add(
                BottonNavEvent.values[index],
              );
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.map_rounded,
                  color: Colors.black,
                ),
                label: "Map",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                label: "Profile",
              ),
            ],
          );
        },
      ),
    );
  }
}
