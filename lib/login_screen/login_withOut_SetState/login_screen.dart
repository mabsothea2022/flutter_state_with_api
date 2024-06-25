import 'package:flutter/material.dart';

class LoginWithOutsetState extends StatelessWidget {
  // const LoginScrees({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(
            (FocusNode()),
          );
        },
        child: _buildBody(),
      ),
    );
  }

  /*
   * For body in screen
  */
  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTitle(),
          _buildEmailTextField(),
          _buildPasswordTextField(),
          _buildLoginButton(),
        ],
      ),
    );
  }

  /*
   * For text in login
  */
  Widget _buildTitle() {
    return Text(
      "Login - With out State",
      style: TextStyle(
        color: Colors.red,
        fontSize: 30,
      ),
    );
  }

  /*
   * For textfield input 
  */
  Widget _buildEmailTextField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      decoration: InputDecoration(
        icon: Icon(Icons.email),
        hintText: "Enter Email",
      ),
    );
  }

  /*
  * For textfield  password
  */
  Widget _buildPasswordTextField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(Icons.key),
          hintText: "Enter password",
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.visibility),
          )),
      textInputAction: TextInputAction.send,
    );
  }

  /* 
   * For button login
  */
  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Login"),
    );
  }
}
