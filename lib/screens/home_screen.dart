import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/app_controller.dart';
import 'package:getx/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              padding: const EdgeInsets.symmetric(vertical: 25),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const Text(
                    "Counter Value",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  Obx(() => Text(
                    "${appController.n.value}",
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: appController.decreamnet,
                  icon: const Icon(Icons.remove_circle, size: 32, color: Colors.red),
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: appController.increament,
                  icon: const Icon(Icons.add_circle, size: 32, color: Colors.green),
                ),
              ],
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Get.snackbar(
                    "Hello 👋",
                    "How are you?",
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
                child: const Text("Show Snackbar"),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.orange,
                  side: const BorderSide(color: Colors.orange),
                ),
                onPressed: () {
                  Get.defaultDialog(
                    title: "Confirm",
                    middleText: "Are you sure?",
                    textConfirm: "Yes",
                    textCancel: "No",
                    onConfirm: () {
                      Get.back();
                    },
                  );
                },
                child: const Text("Show Dialog"),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Get.to(const SecondScreen());
                },
                child: const Text("Go to Next Screen"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}