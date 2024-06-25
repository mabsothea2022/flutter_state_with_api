import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      "Login Screen - with setState",
      style: TextStyle(
        color: Colors.pink,
        fontSize: 25,
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

  bool _hidePassword = true;
  /*
  * For textfield  password
  */
  Widget _buildPasswordTextField() {
    return TextField(
      obscureText: _hidePassword,
      decoration: InputDecoration(
          icon: Icon(Icons.key),
          hintText: "Enter password",
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _hidePassword = !_hidePassword;
              });
            },
            icon: Icon(_hidePassword ? Icons.visibility : Icons.visibility_off),
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


// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   // const LoginScrees({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: InkWell(
//         onTap: () {
//           FocusScope.of(context).requestFocus(
//             (FocusNode()),
//           );
//         },
//         child: _buildBody(),
//       ),
//     );
//   }

//   /*
//    * For body in screen
//   */
//   Widget _buildBody() {
//     return Container(
//       padding: EdgeInsets.all(20),
//       alignment: Alignment.center,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           _buildTitle(),
//           _buildEmailTextField(),
//           _buildPasswordTextField(),
//           _buildLoginButton(),
//         ],
//       ),
//     );
//   }

//   /*
//    * For text in login
//   */
//   Widget _buildTitle() {
//     return Text("Login Screen");
//   }

//   /*
//    * For textfield input 
//   */
//   Widget _buildEmailTextField() {
//     return TextField(
//       keyboardType: TextInputType.emailAddress,
//       autocorrect: false,
//       decoration: InputDecoration(
//         icon: Icon(Icons.email),
//         hintText: "Enter Email",
//       ),
//     );
//   }

//   /*
//   * For textfield  password
//   */
//   Widget _buildPasswordTextField() {
//     return TextField(
//       obscureText: true,
//       decoration: InputDecoration(
//           icon: Icon(Icons.key),
//           hintText: "Enter password",
//           suffixIcon: IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.visibility),
//           )),
//       textInputAction: TextInputAction.send,
//     );
//   }

//   /* 
//    * For button login
//   */
//   Widget _buildLoginButton() {
//     return ElevatedButton(
//       onPressed: () {},
//       child: Text("Login"),
//     );
//   }
// }


