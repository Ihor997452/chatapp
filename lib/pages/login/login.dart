import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'package:myapp/pages/login/login_view.dart';
import 'package:myapp/pages/roomList/room_list.dart';
import 'package:myapp/pages/test.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  LoginController createState() => LoginController();
}

class LoginController extends State<Login> {
  final String _homeServerUri = "matrix.org";
  final TextEditingController usernameTextField = TextEditingController();
  final TextEditingController passwordTextField = TextEditingController();
  bool loading = false;
  bool showPassword = false;
  bool isEmpty = true;

  validate() {
    setState(() {
      isEmpty =
          usernameTextField.text.isEmpty || passwordTextField.text.isEmpty;
    });
  }

  toggleShowPassword() {
    setState(() {
      showPassword = !loading && !showPassword;
    });
  }

  login() async {
    setState(() {
      loading = true;
    });

    try {
      final username = usernameTextField.text;
      AuthenticationIdentifier identifier;
      if (username.isEmail) {
        identifier = AuthenticationThirdPartyIdentifier(
          medium: 'email',
          address: username,
        );
      } else if (username.isPhoneNumber) {
        identifier = AuthenticationThirdPartyIdentifier(
          medium: 'msisdn',
          address: username,
        );
      } else {
        identifier = AuthenticationUserIdentifier(user: username);
      }

      final client = Provider.of<Client>(context, listen: false);
      await client.checkHomeserver(Uri.https(_homeServerUri, ''));
      await client.login(
        LoginType.mLoginPassword,
        identifier: identifier,
        password: passwordTextField.text,
      );
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => RoomList()),
        (route) => false,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoginView(this);
  }
}

extension on String {
  static final RegExp _phoneRegex = RegExp(r'^[+]*[(]?\d{1,4}[)]?[-\s./\d]*$');
  static final RegExp _emailRegex = RegExp(r'(.+)@(.+)\.(.+)');

  bool get isEmail => _emailRegex.hasMatch(this);

  bool get isPhoneNumber => _phoneRegex.hasMatch(this);
}
