import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:shapping/screens/menu.dart';
import 'package:shapping/widgets/left_drawer.dart';

class ProductEntryFormPage extends StatefulWidget {
  const ProductEntryFormPage({super.key});

  @override
  State<ProductEntryFormPage> createState() => _ProductEntryFormPageState();
}

class _ProductEntryFormPageState extends State<ProductEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _productname = "";
  double _price = 0.0;
  int _rating = 0;
  String _description = "";
  // int _amount = 0;
  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Product',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.orange[900],
      ),
      drawer:
          const LeftDrawer(), // Menggunakan drawer yang diimport dari left_drawer.dart
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Product",
                  labelText: "Product",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _productname = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Product tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextFormField(
            //     decoration: InputDecoration(
            //       hintText: "Amount",
            //       labelText: "Amount",
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(5.0),
            //       ),
            //     ),
            //     onChanged: (String? value) {
            //       setState(() {
            //         _amount = int.tryParse(value!) ?? 0;
            //       });
            //     },
            //     validator: (String? value) {
            //       if (value == null || value.isEmpty) {
            //         return "Amount tidak boleh kosong!";
            //       }
            //       if (int.tryParse(value) == null) {
            //         return "Amount harus berupa angka!";
            //       }
            //       return null;
            //     },
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Price",
                  labelText: "Price",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                onChanged: (String? value) {
                  setState(() {
                    _price = double.tryParse(value!) ?? 0.0;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Price can't be empty!";
                  }
                  if (double.tryParse(value) == null) {
                    return "Price must be a valid number!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Rating",
                  labelText: "Rating",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                onChanged: (String? value) {
                  setState(() {
                    _price = double.tryParse(value!) ?? 0.0;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Rating can't be empty!";
                  }
                  if (double.tryParse(value) == null) {
                    return "Rating must be a valid number!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Description",
                  labelText: "Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _description = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Description tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).colorScheme.primary),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      // Kirim ke Django dan tunggu respons
                      final response = await request.postJson(
                        "http://127.0.0.1:8000/create-flutter/",
                        jsonEncode(<String, String>{
                          'product_name': _productname,
                          'price': _price.toString(),
                          'rating': _rating.toString(),
                          'description': _description,
                        }),
                      );
                      if (context.mounted) {
                        if (response['status'] == 'success') {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Product baru berhasil disimpan!"),
                          ));
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content:
                                Text("Terdapat kesalahan, silakan coba lagi."),
                          ));
                        }
                      }
                    }
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
