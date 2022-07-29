import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf_render/pdf_render_widgets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'api/api_page.dart';

// class pdf extends StatefulWidget {
//   const pdf({Key? key}) : super(key: key);
//
//   @override
//   State<pdf> createState() => _pdfState();
// }
//
// class _pdfState extends State<pdf> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [],
//       ),
//         body: SfPdfViewer.network(
//             'https://www.tutorialspoint.com/flutter/flutter_tutorial.pdf'));
//   }
// }

class pdf extends StatefulWidget {
  const pdf({Key? key}) : super(key: key);

  @override
  State<pdf> createState() => _pdfState();
}

class _pdfState extends State<pdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey,

      appBar: AppBar(
        title: Text("Student LoginDetail"),
      ),
      body: Container(
        child: Card(
          child: FutureBuilder(
            future: getadata1(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Shimmer.fromColors(
                    baseColor: HexColor('#E0E0E0'),
                    highlightColor: HexColor('#F5F5F5'),
                    child: ListView.builder(
                      itemBuilder: (_, __) => Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 48.0,
                              height: 48.0,
                              color: Colors.white,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    height: 8.0,
                                    color: Colors.white,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.0),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 8.0,
                                    color: Colors.white,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.0),
                                  ),
                                  Container(
                                    width: 40.0,
                                    height: 8.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      itemCount: 10,
                    ));
              } else {
                return Container(
                  height: 350,
                  width: 500,
                  color: Colors.blueGrey,
                  child: SfPdfViewer.network(
                      "https://www.tutorialspoint.com/dart_programming/dart_programming_tutorial.pdf"),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}