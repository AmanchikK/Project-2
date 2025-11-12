import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Profile Mentor'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildProfileCard(),
            const SizedBox(height: 16),
            _buildAboutCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue[100],
            ),
            child: Icon(
              Icons.person,
              size: 40,
              color: Colors.blue[600],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Darkhan Yermakhan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Senior UI/UX Designer',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatItem('5', 'Courses'),
              _buildStatItem('17', 'Students'),
              _buildStatItem('5', 'Reviews'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.blue[600],
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  Widget _buildAboutCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildTab('About', true),
              _buildTab('Courses', false),
              _buildTab('Reviews', false),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            'Hi My name is Darkhan Yermakhan, i work as a Senior UI/UX Designer in one of the biggest E-commerce in Indonesia, i Have more than 10 years of experience UI/UX Design in Startup & Corporate.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
          const SizedBox(height: 16),
          _buildBulletPoint('First we\'ll describe the brief & how to work with a UX persona.'),
          _buildBulletPoint('Then you\'ll learn how to create simple wireframes.'),
          _buildBulletPoint('From there we\'ll look at how to implement colours & images properly in your designs.'),
          _buildBulletPoint('You\'ll learn the do\'s & don\'ts around choosing fonts for web & mobile apps.'),
          _buildBulletPoint('You\'ll learn how to create your own icons, buttons & other UI components.'),
          const SizedBox(height: 16),
          Text(
            'empowered.com',
            style: TextStyle(
              fontSize: 14,
              color: Colors.blue[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String text, bool isActive) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isActive ? Colors.blue : Colors.transparent,
            width: 2,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          color: isActive ? Colors.blue : Colors.grey[600],
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 6, right: 8),
            child: Icon(
              Icons.circle,
              size: 6,
              color: Colors.grey[600],
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}