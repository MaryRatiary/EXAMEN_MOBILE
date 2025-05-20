import 'package:flutter/material.dart';
import 'transport_details/walk_details_screen.dart';
import 'transport_details/bike_details_screen.dart';
import 'transport_details/public_transport_details_screen.dart';
import 'transport_details/electric_car_details_screen.dart';

class TransportScreen extends StatefulWidget {
  const TransportScreen({super.key});

  @override
  State<TransportScreen> createState() => _TransportScreenState();
}

class _TransportScreenState extends State<TransportScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Modes de Transport',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                _buildTransportCard(
                  icon: Icons.directions_walk,
                  title: 'Marche',
                  subtitle: 'Zéro émission - Mode le plus écologique',
                  color: Colors.green,
                ),
                _buildTransportCard(
                  icon: Icons.pedal_bike,
                  title: 'Vélo',
                  subtitle: 'Transport durable et bon pour la santé',
                  color: Colors.blue,
                ),
                _buildTransportCard(
                  icon: Icons.train,
                  title: 'Transport en commun',
                  subtitle: 'Réduction des émissions par passager',
                  color: Colors.orange,
                ),
                _buildTransportCard(
                  icon: Icons.electric_car,
                  title: 'Voiture électrique',
                  subtitle: 'Alternative écologique à l\'essence',
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransportCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Widget screen;
          switch (title) {
            case 'Marche':
              screen = const WalkDetailsScreen();
              break;
            case 'Vélo':
              screen = const BikeDetailsScreen();
              break;
            case 'Transport en commun':
              screen = const PublicTransportDetailsScreen();
              break;
            case 'Voiture électrique':
              screen = const ElectricCarDetailsScreen();
              break;
            default:
              return;
          }
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
      ),
    );
  }
}
