import 'package:flutter/material.dart';
import 'load_fail_widget.dart';


typedef ReloadData = Function();

class PageWidget extends StatefulWidget{
  Widget child;
  PageStateController controller;
  ReloadData reloadData;
  int index = 2;

  PageWidget({
    this.child,controller,this.reloadData,this.index = 2,
}) : controller =  controller != null ? controller : PageStateController();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageWidgetState();
  }
}

class PageWidgetState extends State<PageWidget> {

  int index;
  VoidCallback listener;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = widget.index;
    listener = (){
      switch(widget.controller._state){
        case PageState.Loading:
          index = 2;
          break;
        case PageState.LoadSuccess:
          index = 0;
          break;
        case PageState.LoadFail:
          index = 1;
          break;
        default:
          index = 2;
          break;
      }
    };

    //페이지 상태가 변경될 때 listener, call listener를 추가. 자세한 내용은 notifier를 참조할것.
    //changeState가 있을 때마다 리스너 메소드가 여기에서 호출.
    widget.controller.loadingNotifier.addListener(listener);
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IndexedStack(
      index: index,
      children: <Widget>[
        widget.child,
        LoadFailWidget(
          onTap: (){
            widget.controller.changeState(PageState.LoadFail);
            widget.reloadData();
          },
        ),
        Center(
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.controller.loadingNotifier.removeListener(listener);
  }

}





enum PageState{
  Loading,LoadSuccess,LoadFail
}

class PageStateController{
  //속성 모니터링은 InheritedWidget, Redux를 사용하여 구현할 수도 있음
  ValueNotifier<PageState> loadingNotifier = ValueNotifier(PageState.Loading);
  PageState _state = PageState.Loading;

  void changeState(PageState state){
    this._state = state;
    loadingNotifier.value = state;
  }
}