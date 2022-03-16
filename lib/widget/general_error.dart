import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

generalErrorHandlerOf(BuildContext context) => (Object error) async {
      showDialog(
        context: context,
        builder: (actx) => _GeneralErrorDialog(error: error),
      );
    };

class _GeneralErrorDialog extends StatelessWidget {
  final Object error;

  const _GeneralErrorDialog({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String message;
    if (error is SocketException) {
      return FutureBuilder(
          future: Connectivity().checkConnectivity(),
          builder: (_, ss) {
            if (ss.connectionState == ConnectionState.waiting) {
              // ごく短い時間になるはずなので表示内容を考慮しない
              return Container();
            }
            if (ss.hasError) {
              return _buildDialog(context,
                  title: "通信エラー", message: "お手数ですが、再度お試しください");
            }
            return _buildDialog(context,
                title: "エラー", message: "インターネットに接続していません");
          });
    } else if (error is MessageGettable) {
      message = (error as MessageGettable).message.toString();
    } else {
      message = error.toString();
    }
    return _buildDialog(context, message: message);
  }

  Widget _buildDialog(BuildContext context,
      {String title = "エラー", String? message}) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: message != null ? Text(message) : null,
      actions: [
        CupertinoDialogAction(
          child: const Text("OK"),
          onPressed: () => Navigator.of(context).pop(),
        )
      ],
    );
  }
}

abstract class MessageGettable {
  dynamic message;
}
