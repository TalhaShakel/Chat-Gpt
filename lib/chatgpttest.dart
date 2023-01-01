import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  // Future<String> getGPT3Completion(
  //   String prompt,
  //   int maxTokens,
  //   double temperature,
  // ) async {
  //   final data = {
  //     'prompt': prompt,
  //     'max_tokens': maxTokens,
  //     'temperature': temperature,
  //   };

  //   final headers = {
  //     'Authorization':
  //         'Bearer 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',
  //     'Content-Type': 'application/json'
  //   };
  //   final request = http.Request(
  //     'POST',
  //     Uri.parse(
  //         'https://api.openai.com/v1/engines/text-davinci-002/completions'),
  //   );
  //   request.body = json.encode(data);
  //   request.headers.addAll(headers);

  //   final httpResponse = await request.send();

  //   if (httpResponse.statusCode == 200) {
  //     final jsonResponse =
  //         json.decode(await httpResponse.stream.bytesToString());

  //     setState(() {
  //       _response = jsonResponse['choices'][0]['text'];
  //       ;
  //     });
  //     return jsonResponse['choices'][0]['text'];
  //   } else {
  //     print(httpResponse.reasonPhrase);
  //     return '';
  //   }
  // }

  post(prompt) async {
    try {
      EasyLoading.show();
      // var url = Uri.https(
      //     "https://api.openai.com/v1/models/text-davinci-002/completions/");
      var response = await http.post(
        Uri.parse(
            'https://api.openai.com/v1/engines/text-davinci-002/completions'),
        headers: {
          'Authorization':
              'Bearer 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',
          'Content-Type': 'application/json'
        },
        body: jsonEncode({
          "prompt": prompt,
          "max_tokens": 2048,
          "temperature": 0.5,
        }),
      );

      // Parse the response
      var responseJson = jsonDecode(response.body);
      print(responseJson);
      var responseText = responseJson["choices"][0]["text"];

      // Update the UI
      setState(() {
        _response = responseText;
      });
      EasyLoading.dismiss();
    } catch (e) {
      EasyLoading.dismiss();
      print(e);
      Get.snackbar(e.toString(), "");
    }
  }

  String _response = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GPT Chat"),
      ),
      body: Column(
        children: [
          Text(_response),
          TextField(
            onSubmitted: (prompt) async {
              // Make a request to the GPT API
              // getGPT3Completion(prompt, 2048, 0.5);
              await post(prompt);
              print(prompt);
            },
          ),
        ],
      ),
    );
  }
}
