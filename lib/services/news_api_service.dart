import 'dart:convert';
import 'package:http/http.dart' show Response;
import 'package:news_api/model/news_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
class NewsApiService{

  Future<NewsResponse> getNews()async{
    Uri uri = Uri.parse('https://newsdata.io/api/1/news?apikey=pub_3675474f6621fe1286dae2c5f3c3f344cd8d6&q=weather');
   Response response = await http.get(uri);
   if(response.statusCode==200){
     String jsonStr = response.body;
     Map <String, dynamic>  json =jsonDecode(jsonStr);
     NewsResponse newsResponse = NewsResponse.fromJson(json);
       return newsResponse;
   }
   throw 'Something went Wrong';
  }

}