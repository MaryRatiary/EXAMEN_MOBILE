import 'package:flutter/material.dart';

class ElectricCarDetailsScreen extends StatelessWidget {
  const ElectricCarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détails de la Voiture Électrique'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Icon(
                  Icons.electric_car,
                  size: 80,
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Avantages de la voiture électrique',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildBenefitItem('Zéro émission directe'),
            _buildBenefitItem('Coûts d\'entretien réduits'),
            _buildBenefitItem('Conduite silencieuse'),
            _buildBenefitItem('Réduction de la pollution sonore'),
            const SizedBox(height: 20),
            const Text(
              'Points à considérer',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildConsiderationItem('Planifiez vos recharges'),
            _buildConsiderationItem('Vérifiez l\'autonomie du véhicule'),
            _buildConsiderationItem('Localisez les bornes de recharge'),
            _buildConsiderationItem('Optimisez votre consommation'),
          ],
        ),
      ),
    );
  }

  Widget _buildBenefitItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: Colors.purple),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }

  Widget _buildConsiderationItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const Icon(Icons.electric_bolt, color: Colors.purple),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
