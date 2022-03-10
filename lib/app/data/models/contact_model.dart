class ContactModel {
  final String? id;
   String? comment;
  final String userUid ;
  final String? createdAt;
   String? updatedAt ;
   String fullName;
   String? email;
   String phone ;
   String? imageUrle ;

  ContactModel({
    this.id = "",
    this.userUid = "",
    this.comment="",
    this.createdAt = "",
    this.updatedAt ="",
    this.email="",
    this.phone="",
    this.fullName="",
    this.imageUrle=''
  });

  factory ContactModel.fromMap(map) {
    return ContactModel(
      id: map['id'],
      fullName: map['fullName'],
      email: map['email'],
      phone: map['phone'],
      imageUrle: map['imageUrle'],
      comment: map['comment'],
      userUid: map['userUid'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }

  void update(String pEmail, String pPhone,String pFullName,String pComment,String pUpdatedAt) {
    email = pEmail;
    phone = pPhone;
    fullName = pFullName;
    comment = pComment;
    updatedAt = pUpdatedAt;
  }


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'comment': comment,
      'phone' : phone,
      'fullName' : fullName,
      'userUid' : userUid,
      'email' : email,
      'imageUrle' : imageUrle,
      'createdAt': createdAt,
      'updatedAt' : updatedAt,
    };
  }

  @override
  String toString() {
    // TODO: implement toString
    return userUid+" "+createdAt!+" " +updatedAt! + " " + fullName + " " + comment!+" "+phone+" "+email!;
  }
}