import 'package:flutter/material.dart';
import 'package:hajamli/constants.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // Controllers for each input field
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // Dispose of the controllers when the widget is removed
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      body: SingleChildScrollView( // Added scroll view to prevent overflow
        child: Column(
          children: [
            const Center(
              child: Image(
                image: AssetImage("lib/assets/6.png"),
                height: 269,
                width: 289,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 295,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: secondary_color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    // Row for First Name and Last Name
                    Row(
                      children: [
                        Expanded(
                          child: _buildTextField(
                            controller: firstNameController,
                            hintText: 'First Name',
                            inputType: TextInputType.name,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _buildTextField(
                            controller: lastNameController,
                            hintText: 'Last Name',
                            inputType: TextInputType.name,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),

                    // Phone Number with +216 hint
                    _buildTextField(
                      controller: phoneController,
                      hintText: 'Phone (+216)',
                      inputType: TextInputType.phone,
                    ),
                    const SizedBox(height: 10,),

                    // Email Input
                    _buildTextField(
                      controller: emailController,
                      hintText: 'Email',
                      inputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 10),

                    // Password Input
                    _buildTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    const SizedBox(height: 10),

                    // Confirm Password Input
                    _buildTextField(
                      controller: confirmPasswordController,
                      hintText: 'Confirm Password',
                      obscureText: true,
                    ),
                    const SizedBox(height: 20),

                    // Register Button
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add onPressed functionality
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primary_color,
                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Register',
                          style: TextStyle(color: bg_color),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            const Text("© EL S.I.X - 2024",style: TextStyle(color: primary_color,fontSize: 15,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }

  // Helper method to create a custom text field
  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    TextInputType inputType = TextInputType.text,
    bool obscureText = false,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: primary_color),
        filled: true,
        fillColor: secondary_color,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: primary_color),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: primary_color),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: primary_color),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      ),
      style: const TextStyle(color: primary_color),
    );
  }
}
