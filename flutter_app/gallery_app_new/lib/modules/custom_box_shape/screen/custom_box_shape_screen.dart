import 'package:flutter/material.dart';
import 'package:gallery_app_new/modules/custom_box_shape/widget/coupon_custom_clipper.dart';
import 'package:gallery_app_new/modules/custom_box_shape/widget/coupon_custom_painter.dart';
import 'package:gallery_app_new/widgets/my_app_bar_widget.dart';

class CustomBoxShapeScreen extends StatelessWidget {
  const CustomBoxShapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarWidget(title: "Custom box shape"),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 16,
                color: Colors.black12,
                offset: Offset(0, 0),
              )
            ],
          ),
          child: CustomPaint(
            foregroundPainter: CouponCustomPainter(),
            child: ClipPath(
              clipper: CouponCustomClipper(),
              child: _buildCouponContent(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCouponContent() {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Colors.green[50],
              ),
              child: const Center(
                child: Text(
                  "10K",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "GIOITHIEU",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 4, bottom: 6),
                        child: const Text("Giảm giá 12k cho đơn hàng"),
                      ),
                      const Text("Kết thúc: 31/12/2021"),
                    ],
                  ),
                  const Spacer(),
                  Radio(
                    value: true,
                    groupValue: "groupValue",
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
