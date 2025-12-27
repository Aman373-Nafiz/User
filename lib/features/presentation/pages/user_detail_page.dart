import 'package:flutter/material.dart';
import 'package:users/features/data/models/user_model.dart';

class UserDetailPage extends StatelessWidget {
  final User user;

  const UserDetailPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
        elevation: 2,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCard(
              icon: Icons.person,
              title: 'Personal Information',
              children: [
                _buildInfoRow(Icons.badge, 'Name', user.name),
                _buildInfoRow(Icons.account_circle, 'Username', user.username),
                _buildInfoRow(Icons.email, 'Email', user.email),
                _buildInfoRow(Icons.phone, 'Phone', user.phone),
                _buildInfoRow(Icons.language, 'Website', user.website),
              ],
            ),
            const SizedBox(height: 16),
            _buildCard(
              icon: Icons.location_on,
              title: 'Address',
              children: [
                _buildInfoRow(Icons.home, 'Street', user.address.street),
                _buildInfoRow(Icons.apartment, 'Suite', user.address.suite),
                _buildInfoRow(Icons.location_city, 'City', user.address.city),
                _buildInfoRow(Icons.markunread_mailbox, 'Zipcode',
                    user.address.zipcode),
                _buildInfoRow(Icons.map, 'Coordinates',
                    'Lat: ${user.address.geo.lat}, Lng: ${user.address.geo.lng}'),
              ],
            ),
            const SizedBox(height: 16),
            _buildCard(
              icon: Icons.business,
              title: 'Company',
              children: [
                _buildInfoRow(Icons.business_center, 'Name', user.company.name),
                _buildInfoRow(
                    Icons.campaign, 'Catch Phrase', user.company.catchPhrase),
                _buildInfoRow(Icons.work, 'BS', user.company.bs),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required IconData icon,
    required String title,
    required List<Widget> children,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.blue),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(height: 24),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: Colors.grey[600]),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}