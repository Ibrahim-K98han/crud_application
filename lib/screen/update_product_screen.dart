import 'dart:convert';

import 'package:crud_application/models/product.dart';
import 'package:crud_application/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});

  @override
  State<UpdateProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<UpdateProductScreen> {
  final TextEditingController _productNameTEController =
      TextEditingController();
  final TextEditingController _unitPriceTEController = TextEditingController();
  final TextEditingController _totalTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _inProgress = false;
  String id = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _buildNewProductForm(),
      ),
    );
  }

  Widget _buildNewProductForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _productNameTEController,
            decoration: const InputDecoration(labelText: 'Product Name'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a valid value';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _unitPriceTEController,
            decoration: const InputDecoration(labelText: 'Unit Price'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a valid value';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _totalTEController,
            decoration: const InputDecoration(labelText: 'Total Price'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a valid value';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _imageTEController,
            decoration: const InputDecoration(labelText: 'Product Image'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a valid value';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _codeTEController,
            decoration: const InputDecoration(labelText: 'Product Code'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a valid value';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _quantityTEController,
            decoration: const InputDecoration(labelText: 'Quantity'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a valid value';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          _inProgress
              ? const Center(child: CircularProgressIndicator())
              : ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size.fromWidth(double.maxFinite)),
                  onPressed: (){},
                  child: const Text('Update Product'),
                )
        ],
      ),
    );
  }


  void _clearTextFields() {
    _productNameTEController.clear();
    _unitPriceTEController.clear();
    _totalTEController.clear();
    _imageTEController.clear();
    _codeTEController.clear();
    _quantityTEController.clear();
  }

  @override
  void dispose() {
    _productNameTEController.dispose();
    _unitPriceTEController.dispose();
    _totalTEController.dispose();
    _imageTEController.dispose();
    _codeTEController.dispose();
    _quantityTEController.dispose();
    super.dispose();
  }
}
