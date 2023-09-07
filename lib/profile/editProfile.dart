  import 'package:flutter/material.dart';
  import 'package:shared_preferences/shared_preferences.dart';
  import 'package:http/http.dart' as http;
  import 'dart:convert';
  import 'package:zuki_laundry/model/update_model.dart';
  import 'package:zuki_laundry/model/user_model.dart';

  class EditProfile extends StatefulWidget {
    const EditProfile({super.key});

    @override
    State<EditProfile> createState() => _EditProfileState();
  }

  class _EditProfileState extends State<EditProfile> {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _numberController = TextEditingController();
    final TextEditingController _addressController = TextEditingController();

    UpdateModel? _userProfile;
    UserModel? user;

    @override
    void initState() {
      super.initState();
      _fetchUserProfile().then((value) {
        setState(() {
          user = value;
        });
        _updateProfile().then((value) {
          setState(() {
            _userProfile = value;
          });
        });
      });
    }

    // Fungsi untuk mengambil data profil dari API
    Future _fetchUserProfile() async {
      // Ganti URL dengan endpoint API yang mengembalikan data profil pengguna
      const url =
          'http://zukilaundry.bardiman.com/api/user'; // Ganti dengan URL API Anda

      final SharedPreferences pref = await SharedPreferences.getInstance();
      final token = pref.getString('token')!;

      try {
        final response = await http.get(
          Uri.parse(url),
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token',
          },
        );
        print('token : $token');
        print('status code : ${response.statusCode}');

        if (response.statusCode == 200) {
          print(url);
          print(response.body);
          // Jika respons sukses, konversi data JSON menjadi objek UpdateModel
          final _userProfile = UpdateModel.fromJson(json.decode(response.body));
          setState(() {
            if (_userProfile != null && _userProfile!.data != null) {
              _nameController.text = _userProfile!.data!.name ?? '';
              _numberController.text = _userProfile!.data!.number ?? '';
              _addressController.text = _userProfile!.data!.address ?? '';
            }
          });
        } else {
          // Tangani kesalahan jika pengambilan data gagal
          print('Failed to fetch user profile from the server.');
        }
      } catch (e) {
        // Tangani exception jika ada masalah dengan koneksi atau API
        print('Error while fetching user profile: $e');
      }
    }

    // Fungsi untuk mengirim data profil yang diperbarui ke API
    Future _updateProfile() async {
      String newName = _nameController.text;
      String newNumber = _numberController.text;
      String newAddress = _addressController.text;

      // Simpan data ke server melalui API
      final url =
          'http://zukilaundry.bardiman.com/api/update-user/${user!.id}'; // Ganti dengan URL API Anda
      final SharedPreferences pref = await SharedPreferences.getInstance();
      final token = pref.getString('token')!;

      try {
        final response = await http.post(
          Uri.parse(url),
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token',
          },
          body: json.encode({
            'name': newName,
            'address': newAddress,
            'number': newNumber,
          }),
        );
        print('token : $token');
        print('status code : ${response.statusCode}');

        if (response.statusCode == 200) {
          print(url);
          print(response.body);
          // Jika pembaruan berhasil, kembali ke halaman sebelumnya
        } else {
          // Tangani kesalahan jika pembaruan gagal
          print('Failed to update profile on the server.');
        }
      } catch (e) {
        // Tangani exception jika ada masalah dengan koneksi atau API
        print('Error while updating profile: $e');
      }
    }

    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 20),
                        child: Material(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(Icons.arrow_back_ios,
                                size: 40, color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 40, left: 95),
                        child: SizedBox(
                          child: Text(
                            "Edit",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 60, left: 20),
                    child: SizedBox(
                      child: Text(
                        "Nama",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 26),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Masukkan nama baru',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 40, left: 20),
                    child: SizedBox(
                      child: Text(
                        "Nomor",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 26),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: _numberController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Masukkan nomor baru',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 40, left: 20),
                    child: SizedBox(
                      child: Text(
                        "Alamat",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 26),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: _addressController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Masukkan alamat baru',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 20),
                    child: TextButton(
                      onPressed: () async {
                        await _updateProfile();
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 140,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 163, 255, 1),
                          borderRadius: BorderRadius.circular(27),
                        ),
                        child: const Center(
                          child: Text(
                            'Ubah',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
