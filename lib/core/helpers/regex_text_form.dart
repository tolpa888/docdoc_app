class AppRegex {
 static bool  isValidEmail (String email){
    return  RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);

  }


  static bool  hasDigit (String password){
   return
     RegExp(r'[0-9]').hasMatch(password);

  }

 static bool  hasLowerCase (String password){
   return
     RegExp(r'[a-z]').hasMatch(password);

 }
 static bool  hasSpecialCharacter (String password){
   return
     RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password);

 }
 static bool  hasUpperCase (String password){
   return
     RegExp(r'[A-Z]').hasMatch(password);

 }
 static bool  hasMinimumLength (String password){
   return
     RegExp(r'^(?=.{8,})').hasMatch(password);

 }



}