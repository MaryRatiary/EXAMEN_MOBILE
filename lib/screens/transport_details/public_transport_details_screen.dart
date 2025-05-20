import 'package:flutter/material.dart';

class PublicTransportDetailsScreen extends StatelessWidget {
  const PublicTransportDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détails des Transports en Commun'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Icon(
                  Icons.train,
                  size: 80,
                  color: Colors.orange,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Avantages des transports en commun',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildBenefitItem('Réduction des émissions par passager'),
            _buildBenefitItem('Économique avec un abonnement'),
            _buildBenefitItem('Évite le stress de la conduite'),
            _buildBenefitItem('Permet de lire ou travailler pendant le trajet'),
            const SizedBox(height: 20),
            const Text(
              'Conseils pour les usagers',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildTipItem('Consultez les horaires à l\'avance'),
            _buildTipItem('Ayez toujours votre titre de transport'),
            _buildTipItem('Privilégiez les heures creuses'),
            _buildTipItem('Téléchargez l\'application de transport'),
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
          const Icon(Icons.check_circle, color: Colors.orange),
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
          const Icon(Icons.info, color: Colors.orange),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
