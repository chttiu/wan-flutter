import 'package:wan_flutter/common/models/app/wan_response.dart';
import 'package:wan_flutter/common/utils/http_util.dart';

import '../models/app/article_list.dart';

class QuestionApi {
  static getQuestionList(currentPage) async {
    var response = await WanHttpUtil().get('/wenda/list/$currentPage/json');

    var article = ObjectResponse<ArticleListData>.fromJson(
        response.data, (json) => ArticleListData.fromJson(json));

    return article.data;
  }
}
