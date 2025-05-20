import 'package:flutter/material.dart';

class WalkDetailsScreen extends StatelessWidget {
  const WalkDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détails de la Marche'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Icon(
                  Icons.directions_walk,
                  size: 80,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Avantages de la marche',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildBenefitItem('Zéro émission de CO2'),
            _buildBenefitItem('Excellent pour la santé'),
            _buildBenefitItem('Gratuit et accessible à tous'),
            _buildBenefitItem('Permet de découvrir son environnement'),
            const SizedBox(height: 20),
            const Text(
              'Conseils pratiques',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildTipItem('Portez des chaussures confortables'),
            _buildTipItem('Hydratez-vous régulièrement'),
            _buildTipItem('Choisissez des itinéraires sécurisés'),
            _buildTipItem('Respectez le code de la route'),
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
          const Icon(Icons.check_circle, color: Colors.green),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }

  Widget _buildTipItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const Icon(Icons.lightbulb, color: Colors.amber),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
