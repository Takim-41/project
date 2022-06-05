class users {
  final String email;
  final String password;


  users({
    required this.email,
    required this.password,
      });

  Map<String, dynamic> toJson() => {
    'email' : email,
    'password' : password,
  };

}