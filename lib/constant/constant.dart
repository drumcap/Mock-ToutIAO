

class Constant{
  /**선택한 채널 json*/
  static final String SELECTED_CHANNEL_JSON = "selectedChannelJson";
  /**선택되지 않은 채널 json*/
  static final String UNSELECTED_CHANNEL_JSON = "unselectChannelJson";

  /**채널에 해당하는 매개 변수 요청*/
  static final String CHANNEL_CODE = "channelCode";
  static final String IS_VIDEO_LIST = "isVideoList";

  static final String ARTICLE_GENRE_VIDEO = "video";
  static final String  ARTICLE_GENRE_AD = "ad";

  static final String TAG_MOVIE = "video_movie";

  static final String URL_VIDEO = "/video/urls/v/1/toutiao/mp4/%s?r=%s";

  /**주석 목록 당 페이지 수 얻기*/
  static final int COMMENT_PAGE_SIZE = 20;

  static final String DATA_SELECTED = "dataSelected";
  static final String DATA_UNSELECTED = "dataUnselected";


  /*
  * 기본 채널 가져 오기
  * */

  static Map<String,String> getChannel(){
    Map<String,String> channel = Map();
    channel['\"추천\"'] = '\"\"';
    channel["\"비디오\""] = '\"video\"';
    channel["\"인기\""] = '\"news_hot\"';
    channel["\"사회\""] = '\"news_society\"';
    channel["\"엔터\""] = '\"news_entertainment\"';
    channel["\"기술\""] = '\"news_tech\"';
    channel["\"자동차\""] = '\"news_car\"';
    channel["\"스포츠\""] = '\"news_sports\"';
    channel["\"금융\""] = '\"news_finance\"';
    channel["\"군대\""] = '\"news_military\"';
    channel["\"국제\""] = '\"news_world\"';
    channel["\"패션\""] = '\"news_fashion\"';
    channel["\"게임\""] = '\"news_game\"';
    channel["\"여행\""] = '\"news_travel\"';
    channel["\"역사\""] = '\"news_history\"';
    channel["\"탐색\""] = '\"news_discovery\"';
    channel["\"음식\""] = '\"news_food\"';
    channel["\"육아\""] = '\"news_baby\"';
    channel["\"건강\""] = '\"news_regimen\"';
    channel["\"이야기\""] = '\"news_story\"';
    channel["\"에세이\""] = '\"news_essay\"';

    return channel;
  }

  /*
  * 비디오 채널 가져 오기
  * */

  static Map<String,String> getVideoChannel(){
    Map<String,String> channel = Map();
    channel["\"추천\""] = '\"video\"';
    channel["\"음악\""] = '\"subv_voice\"';
    channel["\"웃긴\""] = '\"subv_funny\"';
    channel["\"사회\""] = '\"subv_society\"';
    channel["\"유머\""] = '\"subv_comedy\"';
    channel["\"인생\""] = '\"subv_life\"';
    channel["\"영화\""] = '\"subv_movie\"';
    channel["\"엔터\""] = '\"subv_entertainment\"';
    channel["\"귀염\""] = '\"subv_cute\"';
    channel["\"게임\""] = '\"subv_game\"';
    channel["\"원본\""] = '\"subv_boutique\"';
    channel["\"열린눈\""] = '\"subv_broaden_view\"';


    return channel;
  }
}













