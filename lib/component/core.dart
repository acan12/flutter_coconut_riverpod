import 'package:flutter/material.dart';
import 'package:flutter_coconut_riverpod/features/personal/data/remote/response/personal_response.dart';

class CButton extends StatelessWidget {
  const CButton({
    super.key,
    required this.textButton,
    this.onPressed,
    this.colorBackground = Colors.green,
  });

  final String textButton;
  final Function? onPressed;
  final MaterialColor colorBackground;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(
        horizontal: 16.0,
        vertical: 7.0,
      ),
      child: ElevatedButton(
        onPressed: onPressed != null ? () => onPressed!() : null,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          minimumSize: Size(double.infinity, 50),
          foregroundColor: Colors.white,
          backgroundColor: colorBackground,
          disabledBackgroundColor: Colors.grey,
        ),
        child: Text(textButton),
      ),
    );
  }
}

// CoreListItems(List<PersonalResponse> personal, BuildContext context) => Container(
//   child: ListView.builder(
//     scrollDirection: Axis.vertical,
//     shrinkWrap: true,
//     itemCount: personal.length,
//     itemBuilder: (BuildContext context, int index) {
//       String title = questions[index].question;
//       String desc = questions[index].answer;
//
//       return makeCard(title, desc, context);
//     },
//   ),
// );

