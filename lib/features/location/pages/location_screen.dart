import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/core/constants/app_images.dart';
import 'package:nectar_ui/core/widgets/custom_text_field.dart';
import 'package:nectar_ui/core/widgets/main_button.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppImages.location, height: 170, width: 224),
              SizedBox(height: 40),
              const Text(
                'Select Your Location',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26),
              ),
              SizedBox(height: 10),
              const Text(
                'This data will be used to serve you better and for security purpose',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 160),
              CustomTextField(
                hint: 'Enter your location',
                prefix: Icon(Icons.location_on_outlined, color: Colors.grey),
              ),
              SizedBox(height: 60),
              MainButton(text: 'Set Location', onPressed: () {}, width: 300),
            ],
          ),
        ),
      ),
    );
  }
}
