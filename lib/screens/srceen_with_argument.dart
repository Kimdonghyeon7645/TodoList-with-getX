import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/screens/srceen_home.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Argument 를 받은 페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // Get.arguments 로, 페이지 이동시 넘겨준 argument 를 사용할 수 있다.
              "${(Get.arguments as User).name} \n ${(Get.arguments as User).age}"
            ),
            OutlinedButton(
              child: Text("홈으로 가기"),
              onPressed: () {
                Get.offNamed("/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
