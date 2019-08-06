

class TipEntity{
  /// display_info : 오늘의 헤드 라인 추천 엔진에 15 개의 업데이트가 있습니다.
  /// open_url :
  /// web_url :
  /// app_name : 今日头条
  /// package_name :
  /// display_template : 오늘의 헤드 라인 추천 엔진에 %s 개의 업데이트가 있습니다.
  /// type : app
  /// display_duration : 2
  /// download_url :

  String display_info;
  String open_url;
  String web_url;
  String app_name;
  String package_name;
  String display_template;
  String type;
  int display_duration;
  String download_url;

  TipEntity({
    this.display_info, this.open_url, this.web_url, this.app_name,
    this.package_name, this.display_template, this.type,
    this.display_duration, this.download_url
});

  static TipEntity fromJson(Map<String,dynamic> json){
    var tip = TipEntity(
      display_info: json['display_info'],
      open_url: json['open_url'],
      web_url: json['web_url'],
      app_name: json['app_name'],
      package_name: json['package_name'],
      display_template: json['display_template'],
      display_duration: json['display_duration'],
      type:json['type'],
      download_url: json['download_url']
    );
  }

  Map<String,dynamic> toJson() =>{
  'display_info':display_info,
  'open_url':open_url,
  'web_url':web_url,
  'app_name':app_name,
  'package_name':package_name,
  'display_template':display_template,
  'display_duration':display_duration,
  'type':type,
  'download_url':download_url
  };


}

















