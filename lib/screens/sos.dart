import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:h_pets/screens/google_map.dart';
import 'package:ionicons/ionicons.dart';

class SosPage extends StatefulWidget {
  const SosPage({Key? key}) : super(key: key);

  @override
  State<SosPage> createState() => _SosPageState();
}

class _SosPageState extends State<SosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 15,
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(200),
              bottomRight: Radius.circular(200),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "SOS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 127.0,
                  ),
                  child: Text(
                    "Save Pets",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 110,
                )
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Emergency",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                SettingsTile(
                  color: Colors.red,
                  icon: Ionicons.location_sharp,
                  title: "Location",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GoogleMapScreen(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SettingsTile(
                  color: Colors.red,
                  icon: Icons.local_hospital_sharp,
                  title: "Near By Hospitals",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 40,
                ),
                SettingsTile(
                  color: Colors.red,
                  icon: Ionicons.call_sharp,
                  title: "Connect Call",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 40,
                ),
                SettingsTile(
                  color: Colors.red,
                  icon: Icons.medical_services_sharp,
                  title: "First Aid",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ));
  }
}

class SettingsTile extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  const SettingsTile({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: onTap,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(Ionicons.chevron_forward_outline),
          ),
        )
      ],
    );
  }
}
