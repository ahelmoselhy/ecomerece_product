import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';

class TestWidgets extends StatelessWidget {
  const TestWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }

  ListView testListView() {
    return ListView.builder(
        shrinkWrap: true,
        // for make list wrap its contents
        physics: const NeverScrollableScrollPhysics(),
        // stop scroll for list when there is nested ListView

        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              isThreeLine: true,
              onTap: () {},
              leading: Text(""),
              title: Text(""),
              subtitle: Text(""),
              trailing: Text(""),
            ),
          );
        });
  }

  ListView testSeparatedListView() {
    return ListView.separated(
      shrinkWrap: true,
      // for make list wrap its contents
      physics: const NeverScrollableScrollPhysics(),
      // stop scroll for list when there is nested ListView

      itemCount: 10,
      itemBuilder: (context, index) {
        return const Text("Ahmed");
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }

  GridView testGridView() {
    return GridView.builder(
        reverse: true,
        // start form bottom of screen
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        shrinkWrap: true,
        // for make list wrap its contents
        physics: const NeverScrollableScrollPhysics(),
        // stop scroll for list when there is nested ListView

        itemCount: 10,
        itemBuilder: (context, index) {
          return const Text("Ahmed");
        });
  }

/*******************************************************************************/
  Spacer testSpacer() {
    // take space between and around items
    return const Spacer(
      flex: 1,
    );
  }

/*******************************************************************************/
  MaterialButton testMaterialButton() {
    // take space between and around items
    return MaterialButton(
      onPressed: () {},
      child: const Text("CLick"),
    );
  }

  IconButton testIconButton() {
    // take space between and around items
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.star),
    );
  }

/*******************************************************************************/
  Stack testStack() {
    // take space between and around items
    return Stack(
      clipBehavior: Clip.none,
      // هنا عشان ال widget تبقى ظاهره لو حصلها clip خارج حدود ال widget ال شايلاها
      children: const [
        Positioned(
          top: 0,
          child: Text("aa"),
        ),
      ],
    );
  }

/*******************************************************************************/

  TextField testTextInput() {
    // take space between and around items
    TextEditingController testInput = TextEditingController();
    return TextField(
      decoration: InputDecoration(
        // prefix: ,
        // suffix: ,
        // prefixIcon: ,
        // prefixText: ,
        // icon: ,
        // border: OutlineInputBorder(),
        // border: UnderlineInputBorder()(),
        // enabled: true,
        // disabledBorder: UnderlineInputBorder()(),
        // enabledBorder: UnderlineInputBorder()(),
        // focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColor.red),borderRadius: BorderRadius.circular(20)),
        hintText: "Aaa",
        labelText: "qq",
      ),
      // maxLines: 4,
      // minLines: 1,
      // maxLength: ,
      // keyboardType: TextInputType.number,
      // controller: testInput,
      // onChanged: (value){
      //
      // },
    );
  }

/*******************************************************************************/

  TextFormField testTextFormInput() {
    // take space between and around items
    GlobalKey<FormState> formState = GlobalKey<FormState>();
    if (formState.currentState!.validate()) {
      formState.currentState!.save();
    }
    String? email;
    return TextFormField(
      readOnly: true,
      textAlign: TextAlign.start,
      obscureText: true,
      autovalidateMode: AutovalidateMode.always,
      onSaved: (value) {
        email = value;
      },
      validator: (value) {},
    );
  }

/*******************************************************************************/

  BottomNavigationBar testBottomNavigationBar() {
    // take space between and around items
    int selectedIndex = 0;
    const List<Widget> list = [ Text("Home"), Text("Categories"), Text("Settings")];
    return BottomNavigationBar(
      backgroundColor: AppColor.backgroundColor,
      // selectedItemColor: ,
      // unselectedItemColor: ,
      onTap: (tappedIndex) {
        selectedIndex = tappedIndex;
      },
      currentIndex: selectedIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Categories"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Settings"),
      ],
    );
  }
}
