// ignore: file_names
// ignore: file_names
import 'dart:developer';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../translations/locale_keys.g.dart';

class QrScan extends StatefulWidget {
  const QrScan({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QrScanState();
}

class _QrScanState extends State<QrScan> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: LocaleKeys.scan.tr());

  bool flash = false;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff036B56),
          title: Text(
            LocaleKeys.scan.tr(),
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: _buildQrView(context),
            ),
            if (result != null)
              Text(
                  'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
            else
              const Text(
                '',
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                    padding: const EdgeInsets.only(left: 30),
                    icon: Icon(
                      flash ? Icons.flash_on : Icons.flash_off,
                      color: Colors.green,
                      size: 27,
                    ),
                    onPressed: () {
                      setState(() {
                        flash = !flash;
                      });
                    }),
                IconButton(
                  padding: const EdgeInsets.only(bottom: 30),
                  icon: const Icon(
                    Icons.radio_button_checked,
                    size: 50,
                  ),
                  onPressed: () async {
                    await controller?.pauseCamera();
                  },
                ),
                IconButton(
                  padding: const EdgeInsets.only(right: 30),
                  icon: const Icon(
                    Icons.radio_button_on,
                    size: 27,
                  ),
                  onPressed: () async {
                    await controller?.resumeCamera();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 300.0
        : 300.0;

    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: const Color(0xff036B56),
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
