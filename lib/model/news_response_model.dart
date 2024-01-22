class NewsResponse {
  String? status;
  int? totalResults;
  List<Article>? articleList;
  String? nextPage;

  NewsResponse({this.status, this.totalResults, this.articleList, this.nextPage});

  NewsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['results'] != null) {
      articleList = <Article>[];
      json['results'].forEach((v) {
        articleList!.add(new Article.fromJson(v));
      });
    }
    nextPage = json['nextPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['totalResults'] = this.totalResults;
    if (this.articleList != null) {
      data['results'] = this.articleList!.map((v) => v.toJson()).toList();
    }
    data['nextPage'] = this.nextPage;
    return data;
  }
}

class Article {
  String? articleId;
  String? title;
  String? link;
  String? videoUrl;
  String? description;
  String? content;
  String? pubDate;
  String? imageUrl;
  String? sourceId;
  String? sourceUrl;
  int? sourcePriority;
  List<String>? country;
  List<String>? category;
  String? language;
  String? aiTag;
  String? sentiment;
  String? sentimentStats;

  Article(
      {this.articleId,
        this.title,
        this.link,
        this.videoUrl,
        this.description,
        this.content,
        this.pubDate,
        this.imageUrl,
        this.sourceId,
        this.sourceUrl,
        this.sourcePriority,
        this.country,
        this.category,
        this.language,
        this.aiTag,
        this.sentiment,
        this.sentimentStats});

  Article.fromJson(Map<String, dynamic> json) {
    articleId = json['article_id'];
    title = json['title'];
    link = json['link'];
    videoUrl = json['video_url'];
    description = json['description'];
    content = json['content'];
    pubDate = json['pubDate'];
    imageUrl = json['image_url'];
    sourceId = json['source_id'];
    sourceUrl = json['source_url'];
    sourcePriority = json['source_priority'];
    country = json['country'].cast<String>();
    category = json['category'].cast<String>();
    language = json['language'];
    aiTag = json['ai_tag'];
    sentiment = json['sentiment'];
    sentimentStats = json['sentiment_stats'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['article_id'] = this.articleId;
    data['title'] = this.title;
    data['link'] = this.link;

    data['video_url'] = this.videoUrl;
    data['description'] = this.description;
    data['content'] = this.content;
    data['pubDate'] = this.pubDate;
    data['image_url'] = this.imageUrl;
    data['source_id'] = this.sourceId;
    data['source_url'] = this.sourceUrl;
    data['source_priority'] = this.sourcePriority;
    data['country'] = this.country;
    data['category'] = this.category;
    data['language'] = this.language;
    data['ai_tag'] = this.aiTag;
    data['sentiment'] = this.sentiment;
    data['sentiment_stats'] = this.sentimentStats;
    return data;
  }
}
