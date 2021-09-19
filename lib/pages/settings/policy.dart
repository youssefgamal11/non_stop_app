import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:non_stop/shared/constants.dart';

class Policy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: styleOfAppBar(
            "سياسه الاستخدام", Icons.arrow_back_ios, context, "/settinghome"),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "هذا النص مثال لنص يمكن ان يستبدل فى نفس المساحه لقد تم توليد هذا النص من مولد النص العربي هذا النص مثال لنص يمكن ان يستبدل فى نفس المساحه",
              style: TextStyle(),
              maxLines: 3,
            ),
            Text(
              "هذا النص مثال لنص يمكن ان يستبدل فى نفس المساحه لقد تم توليد هذا النص من مولد النص العربي هذا النص مثال لنص يمكن ان يستبدل فى نفس المساحه",
              style: TextStyle(),
              maxLines: 3,
            ),
            Text(
              "هذا النص مثال لنص يمكن ان يستبدل فى نفس المساحه لقد تم توليد هذا النص من مولد النص العربي هذا النص مثال لنص يمكن ان يستبدل فى نفس المساحه",
              style: TextStyle(),
              maxLines: 3,
            )
          ],
        ));
  }
}
