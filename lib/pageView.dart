import 'package:fixandfit/model.dart';
import 'package:flutter/material.dart';

class MultiStepForm extends StatefulWidget {
  const MultiStepForm({super.key});

  @override
  _MultiStepFormState createState() => _MultiStepFormState();
}

class _MultiStepFormState extends State<MultiStepForm> {
  final PageController _pageController = PageController();
  final OrderFormData _formData = OrderFormData();

  final List<String> cities = ['New York', 'Los Angeles', 'Chicago'];
  final List<String> services = [
    'Stove Oven Install',
    'Stove Oven Repair',
    'Stove Oven Service',
    'Visit To Diagnose'
  ];

  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 2) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      print("Finish clicked: ${_formData.name}, ${_formData.selectedServices}");
    }
  }

  void _prevPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Place Order"),
        leading: _currentPage > 0
            ? IconButton(
                icon: const Icon(Icons.arrow_back), onPressed: _prevPage)
            : null,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) => setState(() => _currentPage = index),
        physics: const NeverScrollableScrollPhysics(), // Prevent swipe
        children: [
          _buildServiceSelectionPage(),
          _buildProblemDescriptionPage(),
          _buildUserInfoPage(),
        ],
      ),
    );
  }

  Widget _buildServiceSelectionPage() {
    return Column(
      children: [
        const Text("Choose your Service", style: TextStyle(fontSize: 20)),
        ...services.map((service) {
          bool isSelected = _formData.selectedServices.contains(service);
          return ListTile(
            title: Text(service),
            trailing: IconButton(
              icon: Icon(isSelected ? Icons.remove_circle : Icons.add_circle),
              onPressed: () {
                setState(() {
                  isSelected
                      ? _formData.selectedServices.remove(service)
                      : _formData.selectedServices.add(service);
                });
              },
            ),
          );
        }),
        const Spacer(),
        ElevatedButton(onPressed: _nextPage, child: const Text("NEXT")),
      ],
    );
  }

  Widget _buildProblemDescriptionPage() {
    return Column(
      children: [
        const Text("Describe Your Problem", style: TextStyle(fontSize: 20)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration:
                const InputDecoration(labelText: "Describe Your Problem"),
            onChanged: (val) => _formData.problemDescription = val,
          ),
        ),
        // Add file picker buttons here (mocked)
        const Spacer(),
        ElevatedButton(onPressed: _nextPage, child: const Text("NEXT")),
      ],
    );
  }

  Widget _buildUserInfoPage() {
    return Column(
      children: [
        const Text("Please fill out form to place the order.",
            style: TextStyle(fontSize: 20)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(labelText: "Name"),
            onChanged: (val) => _formData.name = val,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(labelText: "Phone"),
            onChanged: (val) => _formData.phone = val,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButtonFormField<String>(
            decoration: const InputDecoration(labelText: "City"),
            value: _formData.city,
            items: cities
                .map((city) => DropdownMenuItem(value: city, child: Text(city)))
                .toList(),
            onChanged: (val) => setState(() => _formData.city = val),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(labelText: "Address"),
            onChanged: (val) => _formData.address = val,
          ),
        ),
        const Spacer(),
        ElevatedButton(onPressed: _nextPage, child: const Text("FINISH")),
      ],
    );
  }
}
