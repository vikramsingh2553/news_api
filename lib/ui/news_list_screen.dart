import 'package:flutter/material.dart';
import 'package:news_api/model/news_response_model.dart';
import 'package:news_api/services/news_api_service.dart';
import 'package:news_api/ui/news_detail_screen.dart';


class NewsListScreen extends StatefulWidget {
  const NewsListScreen({Key? key}) : super(key: key);

  @override
  State<NewsListScreen> createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {
  List<Article>? articleList;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    NewsApiService newsApiService = NewsApiService();
    NewsResponse newsResponse = await newsApiService.getNews();
    setState(() {
      articleList = newsResponse.articleList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: articleList?.length?? 0,
            itemBuilder: (context, index){
            Article article= articleList![index];

          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsDetailScreen(article: article),
                ),
              );
            },
            title: Text(article.title??''),
            trailing:  article.imageUrl== null?SizedBox():Image.network(article.imageUrl??'',height: 20,fit: BoxFit.cover,),
          );
        }
        ),
      ),
    );
  }
}
