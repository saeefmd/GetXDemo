import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/home_controller.dart';

class HomePage extends StatelessWidget {

  final HomeController _homeController = Get.put(HomeController());

  final TextEditingController _nameFieldController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GETX DEMO",
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<HomeController>(
            builder: (builder) {
              return Text(
                builder.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              );
            },
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: _nameFieldController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {
              _homeController.updateName(_nameFieldController.text);
              Get.snackbar('Update Name', 'Successful!',
                snackPosition: SnackPosition.BOTTOM,
              );
            },
            child: Text(
              "Update",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
