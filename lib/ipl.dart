import 'package:flutter/material.dart';

class IPLLoginScreen extends StatelessWidget {
  final List<Map<String, String>> iplTeams = [
    {"name": "Mumbai Indians", "logo": "assets/mumbai_indians.png"},
    {"name": "Chennai Super Kings", "logo": "assets/chennai_super_kings.png"},
    {"name": "Royal Challengers Bangalore", "logo": "assets/rcb.png"},
    {"name": "Kolkata Knight Riders", "logo": "assets/kkr.png"},
    {"name": "Rajasthan Royals", "logo": "assets/rajasthan_royals.png"},
    {"name": "Sunrisers Hyderabad", "logo": "assets/sunrisers_hyderabad.png"},
    {"name": "Punjab Kings", "logo": "assets/punjab_kings.png"},
    {"name": "Delhi Capitals", "logo": "assets/delhi_capitals.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "IPL Team Login",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade100, Colors.deepPurple.shade300],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Select Your IPL Team",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: iplTeams.length,
                itemBuilder: (context, index) {
                  final team = iplTeams[index];
                  return GestureDetector(
                    onTap: () {
                      // Handle team selection
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Selected ${team['name']}")),
                      );
                    },
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 5,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                team['logo']!,
                                height: 80,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            team['name']!,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
