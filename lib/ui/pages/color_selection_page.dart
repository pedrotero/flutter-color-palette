import 'package:f_color_palette_template/ui/my_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Dialog'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color palette app'),
          actions: [
            IconButton(onPressed: showDialog, icon: Icon(Icons.info_outline))
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => print('hello'), child: Icon(Icons.plagiarism)),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ColorPalette(
                    baseColor: '00ff00',
                    baseColor2: 'ff0000',
                    baseColor3: '0000ff',
                    baseColor4: 'EEEEEE',
                    callback: showColor),
                ColorPalette(
                    baseColor: '039421',
                    baseColor2: 'A85F92',
                    baseColor3: 'B8B0B0',
                    baseColor4: '381460',
                    callback: showColor),
                ColorPalette(
                    baseColor: '414141',
                    baseColor2: 'F9F3EE',
                    baseColor3: 'CCF3EE',
                    baseColor4: '97C4B8',
                    callback: showColor),
                ColorPalette(
                    baseColor: '541690',
                    baseColor2: '0D63A5',
                    baseColor3: 'A287F4',
                    baseColor4: 'FFCD38',
                    callback: showColor),
                ColorPalette(
                    baseColor: '764AF1',
                    baseColor2: '2185D5',
                    baseColor3: 'F2F2F2',
                    baseColor4: 'F0EEED',
                    callback: showColor),
                ColorPalette(
                    baseColor: 'B2D430',
                    baseColor2: '1A8B9D',
                    baseColor3: '083358',
                    baseColor4: '007892',
                    callback: showColor),
              ],
            ),
          ),
        ));
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
