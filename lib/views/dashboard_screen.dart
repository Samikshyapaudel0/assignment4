
import 'package:assignment_four/views/employee_screen.dart';
import 'package:assignment_four/views/image_grid_view.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(255, 95, 185, 159),
              const Color.fromARGB(255, 2, 88, 63),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 40),

              const Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 109, 54, 54),
                  letterSpacing: 1.5,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Choose an option below',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),

              const SizedBox(height: 60),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      // Employee Button
                      _buildDashboardCard(
                        context,
                        title: 'Employee',
                        subtitle: 'ADD AND VIEW EMPLOYEE DETAILS',
                        icon: Icons.people_alt_rounded,
                        gradient: LinearGradient(
                          colors: [
                           
                            const Color.fromARGB(255, 210, 198, 25),
                             const Color.fromARGB(255, 95, 88, 3),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EmployeeScreen(),
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 25),

                      // Image Grid View Button
                      _buildDashboardCard(
                        context,
                        title: 'Image Grid View',
                        subtitle: '',
                        icon: Icons.image_rounded,
                        gradient: LinearGradient(
                          colors: [
                            Colors.pink.shade400,
                            const Color.fromARGB(255, 139, 75, 101),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ImageGridViewScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  
  }
}
