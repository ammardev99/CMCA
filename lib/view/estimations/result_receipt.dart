import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import '../../config/config_io.dart';
import '../../widgets/widgets_io.dart';

class ResultReceiptScreen extends StatefulWidget {
  final Widget listData;
  const ResultReceiptScreen({super.key, required this.listData});

  @override
  State<ResultReceiptScreen> createState() => _ResultReceiptScreenState();
}

class _ResultReceiptScreenState extends State<ResultReceiptScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey previewContainer = GlobalKey();
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 1200),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset(0, -1), // positive Y = slide from below
      end: Offset(0, 0), // final position
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> captureAndShare() async {
    try {
      RenderRepaintBoundary boundary =
          previewContainer.currentContext!.findRenderObject()
              as RenderRepaintBoundary;

      var image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData = await image.toByteData(format: ImageByteFormat.png);
      Uint8List pngBytes = byteData!.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final file =
          await File('${tempDir.path}/poultry_estimation_receipt.png').create();
      await file.writeAsBytes(pngBytes);

      // ignore: deprecated_member_use
      await Share.shareXFiles(
        [XFile(file.path)],
        text:
            'Here is your Poultry Estimation receipt,\nDownload Free our app on PlayStore \nFollow us @Poul3y',
      );
    } catch (e) {
      Get.snackbar("Error", "Failed to capture and share image.");
    }
  }

  @override
  Widget build(BuildContext context) {
    final String formattedDate = DateFormat(
      'EEEE dd MMM, yyyy h:mma',
    ).format(DateTime.now());

    return SafeArea(
      child: Scaffold(
        // extendBody: true,
        backgroundColor: AppColors.primary,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                lottieAnimation('assets/animations/masonry.json', 100, true),
                Image.asset(
                  MyImages.invoiceHeader,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
                ClipRect(
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: RepaintBoundary(
                      key: previewContainer,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            color: AppColors.white,
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                appAd(),
                                const Divider(thickness: 1, height: 20),
                                headingText('Estimation'),
                                gapBox(3),
                                infoText(formattedDate),
                                widget.listData,
                                const Divider(thickness: 1, height: 20),
                                headingText('Thank You!'),
                                gapBox(3),
                                infoText('Powered by Saqib Faraz'),
                              ],
                            ),
                          ),
                          Image.asset(
                            MyImages.invoiceClip,
                            fit: BoxFit.fill,
                            width: double.infinity,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                gapBox(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                      onPressed: () => Get.back(),
                      child: infoText("Back", AppColors.white),
                    ),
                    OutlinedButton(
                      onPressed: () => captureAndShare(),
                      child: infoText("Share", AppColors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
