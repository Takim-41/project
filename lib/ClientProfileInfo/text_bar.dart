import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class text_bar extends StatelessWidget {
  final String title;
  final String text;
  const text_bar({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 343,
          height: 64,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF5F5F5),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                          color: const Color(0xFF9E9E9E),
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    Text(
                      text,
                      style: GoogleFonts.poppins(
                          color: const Color(0xFF212121),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
