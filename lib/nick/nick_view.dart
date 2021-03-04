import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'nick_viewmodel.dart';

class NickView extends StatefulWidget {
  NickView(BuildContext context);

  State<StatefulWidget> createState() => _NickNameScreen();
}

class _NickNameScreen extends State<NickView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NickViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Stack(
          children: <Widget>[
            Form(
                key: model.formKey,
                child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 120.0, horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          initialValue: "",
                          validator: model.validateNick,
                        ),
                        ElevatedButton(
                            onPressed: model.sentNickForm,
                            child: Text('Go to TODO list'))
                      ],
                    )))
          ],
        ),
      ),
      viewModelBuilder: () => NickViewModel(),
    );
  }
}
