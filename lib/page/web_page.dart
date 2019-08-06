
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class WebPage extends StatefulWidget{

  String title;
  String url;

  WebPage({this.url,this.title});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WebPageState();
  }

}

class WebPageState extends State<WebPage> {

  FlutterWebviewPlugin flutterWebviewPlugin = FlutterWebviewPlugin();
  StreamSubscription<WebViewStateChanged> onStateChanged;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    flutterWebviewPlugin.close();
    //Listen은 StreamSubscription을 반환하여 webview 상태를 수신함. 자세한 내용은 StreamSubscription 주석을 참조.
    onStateChanged = flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged state){
      switch(state.type){
        case WebViewState.shouldStart:
        // 로드 준비 완료
          print("로드 준비 완료");
          break;
        case WebViewState.startLoad:
        // 로드 시작
          print("로드 시작");
          break;
        case WebViewState.finishLoad:
        // 로드 완료 됨
          print("로드 완료 됨");
          break;
        case WebViewState.abortLoad:
          break;
      }
    });

    flutterWebviewPlugin.onDestroy.listen((_){
      Navigator.of(context).pop();
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: WebviewScaffold(
        url: widget.url,
        withZoom: false,
        withLocalStorage: true,
        hidden: true,
        withJavascript: true,
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    onStateChanged.cancel();
    flutterWebviewPlugin.close();
    super.dispose();
  }
}















