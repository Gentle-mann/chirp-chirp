import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/size/size.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(this.data, {super.key});
  final String data;

  @override
  Widget build(BuildContext context) {
    final fSize = SizeComp.fSize;
    return Text(
      data,
      style: GoogleFonts.inter(
        fontSize: fSize * 2.5,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
