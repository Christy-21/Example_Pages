class UserModel {
String? uid;
String? email;
String? firstName;
String? phonenumber;

UserModel({this.uid,this.email,this.firstName,this.phonenumber});

//data from server
factory UserModel.fromMap(map)
{
  return UserModel(
  uid: map['uid'],
  email: map['email'],
  firstName: map['firstName'],
  phonenumber: map['phonenumber'],
  );
}


//sending data to our server
Map<String,dynamic> toMap()
{
  return{
    'uid':uid,
    'email':email,
    'firstName':firstName,
    'phonenumber':phonenumber,
  };
}

}