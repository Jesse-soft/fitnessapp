import '../View/Home/chatbot/constants/api_constants.dart';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<List<String>> sendMessagefull(
    {required String message, required String modelId}) async {
  try {
    log("modelId $modelId");
    var response = await http.post(
      Uri.parse("$BASE_URL/completions"),
      headers: {
        'Authorization': 'Bearer $API_KEY',
        "Content-Type": "application/json"
      },
      body: jsonEncode(
        {
          "model": modelId,
          "prompt": message,
          "max_tokens": 300,
        },
      ),
    );

    // Map jsonResponse = jsonDecode(response.body);

    Map jsonResponse = json.decode(utf8.decode(response.bodyBytes));
    if (jsonResponse['error'] != null) {
      // print("jsonResponse['error'] ${jsonResponse['error']["message"]}");
      throw HttpException(jsonResponse['error']["message"]);
    }
    List<String> chatList = [];
    if (jsonResponse["choices"].length > 0) {
      // log("jsonResponse[choices]text ${jsonResponse["choices"][0]["text"]}");
      chatList = List.generate(
        jsonResponse["choices"].length,
        (index) => (jsonResponse["choices"][index]["text"]),
      );
    }

    return chatList;
  } catch (error) {
    print("error $error");
    log("error $error");
    rethrow;
  }
}
