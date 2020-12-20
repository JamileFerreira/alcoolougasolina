import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'input.widget.dart';
import 'loading.button.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.gasCtrl,
    @required this.alcCtrl,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            ctrl: gasCtrl,
            label: "Gasoline",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            ctrl: alcCtrl,
            label: "Alcohol",
          ),
        ),
        SizedBox(
          height: 25,
        ),
        LoadingButton(
          busy: busy,
          func: submitFunc,
          invert: false,
          text: "CALCULATE",
        )
      ],
    );
  }
}
