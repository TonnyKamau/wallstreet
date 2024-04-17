import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wallstreet/colours/colours.dart';
import 'package:intl/intl.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  final DateTime now = DateTime.now();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('MM/yy').format(now);
    return Scaffold(
      backgroundColor: brownedLight,
      appBar: AppBar(
        leading: Material(
          color: Colors.transparent,
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
            color: icons,
            splashColor: Colors.transparent,
            highlightColor: Colors
                .transparent, // Additionally set highlight color to transparent
            hoverColor:
                Colors.transparent, // Set hover color to transparent if needed
          ),
        ),
        title: const Center(
          child: Text(
            'Add New Card',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: icons,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () {
                // card scan functionality
                Get.toNamed('scan_card');
              },
              icon: SvgPicture.asset(
                'assets/scan.svg',
                width: 30,
                height: 30,
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors
                  .transparent, // Additionally set highlight color to transparent
              hoverColor: Colors
                  .transparent, // Set hover color to transparent if needed
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: browned,
                  borderRadius: BorderRadius.circular(40),
                ),
                width: double.infinity,
                height: MediaQuery.of(context).size.height *
                    0.3, // Responsive height
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Untitled',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: icons,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/waves.svg',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Tonny Kamau',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: icons,
                          ),
                        ),
                        Text(
                          formattedDate.toString(),
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: icons,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '**** **** **** 1234',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: icons,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/visa-3.svg',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _FormInput(formKey: _formKey),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _FormInput extends StatefulWidget {
  const _FormInput({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<_FormInput> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardHolderController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

  bool isMastercardOrVisa(String cardNumber) {
    // Remove spaces and dashes from the card number
    String sanitizedCardNumber = cardNumber.replaceAll(RegExp(r'\s+|-'), '');

    // Check if the card number starts with the digits corresponding to Mastercard or Visa
    return RegExp(r'^5[1-5]|^4').hasMatch(sanitizedCardNumber);
  }

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: icons, // Adjust the color as needed
                  width: 1.0, // Adjust the width as needed
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _cardNumberController,
                      cursorColor: icons,
                      cursorWidth: 1.0,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Card number',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: icons,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter card number';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                  IconButton(
                    icon: SvgPicture.asset('assets/clear-circle.svg',
                        width: 20, height: 20),
                    onPressed: () {
                      _cardNumberController.clear();
                    },
                  ),
                  isMastercardOrVisa(_cardNumberController.text)
                      ? SvgPicture.asset('assets/visa-3.svg',
                          width: 30, height: 30)
                      : SvgPicture.asset('assets/mastercard-3.svg',
                          width: 30, height: 30),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: icons, // Adjust the color as needed
                  width: 1.0, // Adjust the width as needed
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextFormField(
                controller: _cardHolderController,
                cursorColor: icons,
                cursorWidth: 1.0,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Card holder name',
                  labelStyle: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: icons,
                  ),
                  // Add suffix icon for the clear button
                  suffixIcon: IconButton(
                    icon: SvgPicture.asset('assets/clear-circle.svg',
                        width: 20, height: 20),
                    onPressed: () {
                      _cardHolderController.clear();
                    },
                  ),
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter card holder';
                  }
                  return null;
                },
              ),
            ),
          ),

          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: icons, // Adjust the color as needed
                        width: 1.0, // Adjust the width as needed
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextFormField(
                      controller: _expiryDateController,
                      cursorColor: icons,
                      cursorWidth: 1.0,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Expires on',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: icons,
                        ),
                        hintText: 'MM/YY',
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: icons,
                        ),
                      ),
                      keyboardType: TextInputType.datetime,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter expiry date';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: icons, // Adjust the color as needed
                        width: 1.0, // Adjust the width as needed
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextFormField(
                      controller: _cvvController,
                      cursorColor: icons,
                      cursorWidth: 1.0,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: '3-Digit CVV',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: icons,
                        ),
                        hintText: '123',
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: icons,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter CVV';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Save card for future checkbox
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  activeColor: icons,
                  checkColor: brownedLight,
                ),
                const Text(
                  'Save card for future transactions',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: icons,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: icons, // Change this color as needed
                ),
                children: [
                  TextSpan(
                    text:
                        'By clicking the button below, you confirm that you have read and accept ',
                  ),
                  TextSpan(
                    text: 'Terms & Conditions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: labels, // Change this color as needed
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                if (widget.formKey.currentState!.validate()) {
                  // Process the data
                  // Save the card details
                  // Redirect to the card details page
                  Get.toNamed('card_details');
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: icons, // Change this color as needed
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: const Text(
                'Save',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: brownedLight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
