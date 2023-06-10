class paketLaundry_model {
  int? id;
  String? usernamePlgn;
  String? passwordPlgn;
  String? alamat;
  String? noTelp;
  Null? createdAt;
  Null? updatedAt;

  paketLaundry_model(
      {this.id,
      this.usernamePlgn,
      this.passwordPlgn,
      this.alamat,
      this.noTelp,
      this.createdAt,
      this.updatedAt});

  paketLaundry_model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    usernamePlgn = json['username_plgn'];
    passwordPlgn = json['password_plgn'];
    alamat = json['alamat'];
    noTelp = json['no_telp'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = new Map<String, dynamic>();
      data['id'] = this.id;
      data['username_plgn'] = this.usernamePlgn;
      data['password_plgn'] = this.passwordPlgn;
      data['alamat'] = this.alamat;
      data['no_telp'] = this.noTelp;
      data['created_at'] = this.createdAt;
      data['updated_at'] = this.updatedAt;
      return data;
  }
  }