class ContactModel {
  String? name;
  String? number;
  String? id;

  ContactModel({this.name, this.number, this.id});

  ContactModel.fromJson(Map<String, dynamic> json) {
     id= json['id'];
    name = json['Name'];
    number = json['Number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
      data['id'] = this.id;   
    data['Name'] = this.name;
    data['Number'] = this.number;
    return data;
  }
}
