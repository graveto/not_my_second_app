import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen,{super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/halo.png',
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Follow the Chief!',
            style: GoogleFonts.syneMono(
              color: const Color.fromARGB(255, 209, 137, 85),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: switchScreen,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 209, 137, 85),
              side: const BorderSide(
                color: Color.fromARGB(255, 209, 137, 85),
              ),
            ),
            icon: const Icon(Icons.arrow_right_alt, color: Color.fromARGB(255, 209, 137, 85),),
            label: Text(
              'Start Training',
              style: GoogleFonts.syneMono(
                color: const Color.fromARGB(255, 209, 137, 85),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
