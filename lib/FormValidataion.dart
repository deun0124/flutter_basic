import 'package:flutter/material.dart';

class MyFormValidation extends StatefulWidget {
  const MyFormValidation({Key? key}) : super(key: key);

  @override
  _MyFormValidationState createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late FocusNode nameFocusNode;

  final nameController = TextEditingController();

  @override
  void initState() {
    nameFocusNode = FocusNode();
  }

  @override
  void dispose() {
    nameFocusNode.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Form 안에 들어 있을 때 validator기능을 사용 할 수 있음
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return '공백은 허용되지 않습니다.';
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('처리')));
                        }
                      },
                      child: Text('완료')),
                ),
                TextField(
                  //커서 지정
                  autofocus: true,
                  //값을 얻어오기
                  controller: nameController,
                  onChanged: (text) {
                    print(text);
                  },
                  focusNode: nameFocusNode,
                  decoration: InputDecoration(
                      hintText: "이름을 입력해 주세요.",
                      border: InputBorder.none,
                      labelText: '이름'),
                ),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(nameFocusNode);
                  },
                  child: Text('포커스'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print(nameController.text);
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(nameController.text),
                          );
                        });
                  },
                  child: Text('TextField 값 확인'),
                )
              ],
            )),
      ),
    );
  }
}
