class listPaket_model {
  int? id;
  String? namaPkt;
  Null? createdAt;
  Null? updatedAt;

  listPaket_model({this.id, this.namaPkt, this.createdAt, this.updatedAt});

  listPaket_model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    namaPkt = json['nama_pkt'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama_pkt'] = this.namaPkt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}