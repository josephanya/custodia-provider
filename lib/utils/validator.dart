class Validator {
  static bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(p);
    return regExp.hasMatch(em);
  }

  static bool isPassword(String em) {
    return em.length >= 6 ? true : false;
  }

  static Function(String) validateEmail(v) => (value) {
        if (value.isNotEmpty && isEmail(value)) {
          v = value;
        } else if (value.isEmpty) {
          return "This field can't be left empty";
        } else {
          return "Email is Invalid";
        }
        return null;
      };

  static Function(String) validateName(v) => (value) {
        if (value.isNotEmpty && value.length > 4) {
          v = value;
        } else if (value.isEmpty) {
          return "This field can't be left empty";
        } else {
          return "Name is Invalid";
        }
        return null;
      };

  static Function(String) validatePhone(v) => (value) {
        if (value.isNotEmpty && value.length >= 11) {
          v = value;
        } else if (value.isEmpty) {
          return "This field can't be left empty";
        } else {
          return "Phone is Invalid";
        }
        return null;
      };

  static Function(String) validatePassword(v) => (value) {
        if (value.isNotEmpty && isPassword(value)) {
          v = value;
        } else if (value.isEmpty) {
          return "This field can't be left empty";
        } else {
          return "Pasword is Invalid";
        }
        return null;
      };
}
