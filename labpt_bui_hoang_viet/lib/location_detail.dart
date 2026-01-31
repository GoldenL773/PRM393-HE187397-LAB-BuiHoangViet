import 'package:flutter/material.dart';
import 'location.dart';

class LocationDetail extends StatefulWidget {
  final Location location;

  const LocationDetail({super.key, required this.location});

  @override
  State<LocationDetail> createState() => _LocationDetailState();
}

class _LocationDetailState extends State<LocationDetail> {
  late Location _location;

  @override
  void initState() {
    super.initState();
    _location = widget.location;
  }

  void _starIncrementAction() {
    setState(() {
      _location = _location.copyWith(star: _location.star + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dude you are in location detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LocationImage(image: _location.image),
            LocationInfo(
              location: _location,
              onStarPressed: _starIncrementAction,
            ),
            const ButtonSection(),
            LocationDescription(
              description: _location.description,
            ),
            const SizedBox(height: 20),
           
          ],
        ),
      ),
    );
  }
}

class LocationImage extends StatelessWidget {
  final String image;
  const LocationImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      width: double.infinity,
      height: 240,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return const SizedBox(
          height: 240,
          child: Center(
            child: Icon(Icons.image_not_supported, size: 50, color: Colors.grey),
          ),
        );
      },
    );
  }
}

//The whole detail of the location 
class LocationInfo extends StatelessWidget {
  final Location location;
  final VoidCallback onStarPressed;

  const LocationInfo({
    super.key,
    required this.location,
    required this.onStarPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    location.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location.address,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.star),
            color: const Color.fromARGB(255, 244, 241, 54),
            onPressed: onStarPressed,
          ),
          const SizedBox(width: 4),
          Text('${location.star}'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ButtonColumn(color: color, icon: Icons.call, label: 'CALL'),
        ButtonColumn(color: color, icon: Icons.near_me, label: 'ROUTE'),
        ButtonColumn(color: color, icon: Icons.share, label: 'SHARE'),
      ],
    );
  }
}

class ButtonColumn extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;

  const ButtonColumn({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class LocationDescription extends StatelessWidget {
  final String description;

  const LocationDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

