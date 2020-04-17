import 'package:challenge003/home/modes.dart';
import 'package:flutter/material.dart';

class PanelDown extends StatelessWidget {
  final Function(CameraMode) onCameraModeTap;

  PanelDown({
    this.onCameraModeTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Wrap(
          children: <Widget>[
            ...CameraMode.values.map((e) {
              return GestureDetector(
                onTap: () {
                  onCameraModeTap(e);
                },
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          width: 80,
                          height: 80,
                          padding: EdgeInsets.all(16.0),
                          child: e.icon,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        Container(
                          height: 16.0,
                        ),
                        Text(e.name.toUpperCase()),
                      ],
                    ),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
