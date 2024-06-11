import 'package:fixit/bottombar/bottom_bar.dart';
import 'package:fixit/components/button_style.dart';
import 'package:fixit/components/pricing_option.dart';
import 'package:fixit/style/colors.dart';
import 'package:flutter/material.dart';

class HowToCase extends StatefulWidget {
  const HowToCase({super.key});

  @override
  State<HowToCase> createState() => _HowToCaseState();
}

class _HowToCaseState extends State<HowToCase> {
  String _selectedPricingMethod = 'Hourly fee';
  final TextEditingController _hourlyFeeController = TextEditingController();
  final TextEditingController _flatFeeController = TextEditingController();
  final TextEditingController _additionalInfoController = TextEditingController();

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check_circle,
              color: blueColors,
              size: 50,
            ),
            const SizedBox(height: 20),
            const Text(
              'Application received',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Your application for the service of plumbing has been received. You will get a confirmation message from our staff.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const BottomBar()));
                  },
                  child: ButtonStyles(title: "Home", colors: blueColors)),
          ],
        ),
      ),
    );
  }


  @override
  void dispose() {
    _hourlyFeeController.dispose();
    _flatFeeController.dispose();
    _additionalInfoController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Image.asset("assets/logo/logofixit.png"),
        ),
        actions: [
          Image.asset("assets/icons/frame9.png"),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Pricing and rate",
                style: textStyle,
              ),
              const SizedBox(height: 20),
              const Text(
                'How do you cost?',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              PricingOption(
                title: 'Hourly fee',
                imageUrl: 'assets/icons/hourlyfee.png', // Replace with your hourly fee asset path
                isSelected: _selectedPricingMethod == 'Hourly fee',
                controller: _hourlyFeeController,
                unit: '/h',
                onTap: () {
                  setState(() {
                    _selectedPricingMethod = 'Hourly fee';
                  });
                },
              ),
              PricingOption(
                title: 'Flat fee',
                imageUrl: 'assets/icons/flatfee.png', // Replace with your flat fee asset path
                isSelected: _selectedPricingMethod == 'Flat fee',
                controller: _flatFeeController,
                unit: '',
                onTap: () {
                  setState(() {
                    _selectedPricingMethod = 'Flat fee';
                  });
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'More information (Optional)',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _additionalInfoController,
                maxLines: 3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Write here...',
                ),
              ),
              const SizedBox(height: 30,),
              InkWell(
                  onTap: _showConfirmationDialog,
                  child: ButtonStyles(title: "Submit", colors: blueColors)),
            ],
          ),
        ),
      ),
    );
  }
}