import 'package:app1/widgets/map/modalButton.dart';
import 'package:app1/widgets/map/textform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertCustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AlertDialog(
      contentPadding: EdgeInsets.all(15),
      insetPadding: EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      elevation: 0,
      buttonPadding: EdgeInsets.all(0),
      actionsPadding: EdgeInsets.zero,
      content: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: size.width / 60),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          width: size.width,
          // height: size.height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Agregar Nuevo Cliente",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 22),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "El Cliente ya Existe ?",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  Container(
                    child: Checkbox(
                      value: false,
                      onChanged: (x) {
                        print(x);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height / 60),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextFieldCustom(
                      hintText: "Cliente",
                      icon: Icons.supervised_user_circle_outlined,
                      typeText: TextInputType.name,
                      maxle: 60,
                    ),
                  ),
                  SizedBox(width: size.width / 50),
                  Expanded(
                    child: TextFieldCustom(
                      hintText: "Ruc",
                      icon: Icons.note_outlined,
                      typeText: TextInputType.number,
                      maxle: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height / 30),
              Container(
                child: TextFieldCustom(
                  hintText: "Direccion",
                  icon: Icons.store_mall_directory_outlined,
                  typeText: TextInputType.streetAddress,
                  maxle: 80,
                ),
              ),
              SizedBox(height: size.height / 70),
              Flexible(
                child: TextFieldCustom(
                  hintText: "Observacion",
                  icon: Icons.note_add_outlined,
                  typeText: TextInputType.multiline,
                  maxle: 200,
                ),
              ),
              SizedBox(height: size.height / 30),
              Container(
                width: size.width / 2.5,
                height: size.height / 17,
                child: ModalButonc(),
              ),
              SizedBox(height: size.height / 30),
            ],
          ),
        ),
      ),
    );
  }
}
