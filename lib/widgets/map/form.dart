import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'modal/control/form.dart';
import 'modal/modalButton.dart';
import 'modal/textform.dart';

class FormDialog extends StatelessWidget {
  final LatLng lt;

  FormDialog({required this.lt});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GetBuilder<FormController>(
      builder: (_) => Form(
        key: _.key,
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
              crossAxisAlignment: CrossAxisAlignment.center,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextFieldCustom(
                    hintText: "Cliente",
                    icon: Icons.supervised_user_circle_outlined,
                    typeText: TextInputType.name,
                    maxle: 60,
                    id: 'cliente',
                    editc: _.cliente,
                  ),
                ),
                SizedBox(width: size.width / 50),
                Expanded(
                  child: TextFieldCustom(
                    hintText: "Ruc",
                    icon: Icons.note_outlined,
                    typeText: TextInputType.number,
                    maxle: 11,
                    id: 'ruc',
                    editc: _.ruc,
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
                id: 'direc',
                editc: _.direc,
              ),
            ),
            SizedBox(height: size.height / 70),
            Flexible(
              child: TextFieldCustom(
                hintText: "Observacion",
                icon: Icons.note_add_outlined,
                typeText: TextInputType.multiline,
                maxle: 200,
                id: 'obs',
                editc: _.obs,
              ),
            ),
            SizedBox(height: size.height / 30),
            Container(
              width: size.width / 2.5,
              height: size.height / 17,
              child: ModalButonc(lt: lt),
            ),
            SizedBox(height: size.height / 30),
          ],
        ),
      ),
    );
  }
}
