
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viithiisys_app/core/colors.dart';

class UploadSession extends StatelessWidget {
  const UploadSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(22),
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: kgrey,
              child: CircleAvatar(
                radius: 23,
                backgroundColor: kwhite,
                child: const Icon(Icons.person_outline_rounded),
              ),
            ),
            const Gap(24),
            Container(
              height: 41,
              width: MediaQuery.of(context).size.width * .3,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  //color: klightblue,
                  borderRadius: BorderRadius.circular(9)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.file_upload_outlined,
                    size: 18,
                  ),
                  Text(
                    'Add Image',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
        const Gap(20),
      ],
    );
  }
}
