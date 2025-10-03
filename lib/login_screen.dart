import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2D9F71), // верх
              Color(0xFF68998A), // низ
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 40),



                const SizedBox(height: 24),

                // Заголовок
                const Text(
                  "Smartr",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),

                // Картинка сверху
                Center(
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: const Color(0xFF2D9F71),
                    backgroundImage: const AssetImage("assets/person.png"),
                  ),

                ),

                const Text(
                  "Fresh look, same login.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 32),

                // Список пунктов
                _buildInfoRow(
                  Icons.sync_alt,
                  "SmartRecruiters candidate portal is now Smartr.",
                ),
                const SizedBox(height: 20),
                _buildInfoRow(
                  Icons.login,
                  "Enter the same login info used for your SmartrProfile",
                ),
                const SizedBox(height: 20),
                _buildInfoRow(
                  Icons.refresh,
                  "If login details were saved, you may need to re-save.",
                ),

                const SizedBox(height: 24),

                // Ссылка Why Smartr?
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Why Smartr? Read here",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),

                const Spacer(),

                // Кнопка Get Started
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB3DCCF), // цвет кнопки
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      "GET STARTED",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.white, size: 20),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
