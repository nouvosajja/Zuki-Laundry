class GetOrderUser {
  bool? success;
  String? message;
  List<Data>? data;

  GetOrderUser({this.success, this.message, this.data});

  GetOrderUser.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? userId;
  String? paketId;
  String? priceId;
  String? statusPesanan;
  String? berat;
  String? totalHarga;
  String? snapToken;
  String? status;
  String? tanggalPesanan;
  String? promo;
  String? createdAt;
  String? updatedAt;
  String? namaPaket;
  String? addressUser;
  String? namePrices;
  String? hargaPrice;
  String? waktuPrice;
  String? createdAtOrders;

  Data(
      {this.id,
      this.userId,
      this.paketId,
      this.priceId,
      this.statusPesanan,
      this.berat,
      this.totalHarga,
      this.snapToken,
      this.status,
      this.tanggalPesanan,
      this.promo,
      this.createdAt,
      this.updatedAt,
      this.namaPaket,
      this.addressUser,
      this.namePrices,
      this.hargaPrice,
      this.waktuPrice,
      this.createdAtOrders});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    paketId = json['paket_id'];
    priceId = json['price_id'];
    statusPesanan = json['status_pesanan'];
    berat = json['berat'];
    totalHarga = json['total_harga'];
    snapToken = json['snap_token'];
    status = json['status'];
    tanggalPesanan = json['tanggal_pesanan'];
    promo = json['promo'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    namaPaket = json['nama_paket'];
    addressUser = json['address_user'];
    namePrices = json['name_prices'];
    hargaPrice = json['harga_price'];
    waktuPrice = json['waktu_price'];
    createdAtOrders = json['createdAt_orders'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['paket_id'] = this.paketId;
    data['price_id'] = this.priceId;
    data['status_pesanan'] = this.statusPesanan;
    data['berat'] = this.berat;
    data['total_harga'] = this.totalHarga;
    data['snap_token'] = this.snapToken;
    data['status'] = this.status;
    data['tanggal_pesanan'] = this.tanggalPesanan;
    data['promo'] = this.promo;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['nama_paket'] = this.namaPaket;
    data['address_user'] = this.addressUser;
    data['name_prices'] = this.namePrices;
    data['harga_price'] = this.hargaPrice;
    data['waktu_price'] = this.waktuPrice;
    data['createdAt_orders'] = this.createdAtOrders;
    return data;
  }
}
