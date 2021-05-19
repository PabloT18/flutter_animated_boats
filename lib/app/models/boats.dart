class Boat {
  Boat({
    this.name,
    this.byName,
    this.description,
    this.length,
    this.beam,
    this.weight,
    this.fuelCapacity,
    required this.imagePath,
  });

  String? name;
  String? byName;
  String? description;
  String? length;
  String? beam;
  String? weight;
  String? fuelCapacity;
  String? imagePath;
}

final List<Boat> boats = [
  Boat(
    name: 'X22 Lift',
    byName: 'Mastercraft',
    description:
        'Meet the highest - performing inboard waterski boat ever created',
    length: '24\'2\'\'',
    beam: '102',
    weight: '2767 kg',
    fuelCapacity: '322 L',
    imagePath: 'assets/boat1.png',
  ),
  Boat(
    name: 'X24 Fun',
    byName: 'NeoKraf',
    description:
        'Meet the highest - performing inboard waterski boat ever created',
    length: '24\'2\'\'',
    beam: '102',
    weight: '2767 kg',
    imagePath: 'assets/boat2.png',
    fuelCapacity: '322 L',
  ),
  Boat(
    name: 'X24 Force',
    byName: 'Mastercraft',
    description:
        'Meet the highest - performing inboard waterski boat ever created',
    length: '24\'2\'\'',
    beam: '102',
    weight: '2767 kg',
    imagePath: 'assets/boat3.png',
    fuelCapacity: '322 L',
  ),
  Boat(
    name: 'X24 Force',
    byName: 'NeoKraf',
    description:
        'Meet the highest - performing inboard waterski boat ever created',
    length: '24\'2\'\'',
    beam: '102',
    weight: '2767 kg',
    fuelCapacity: '322 L',
    imagePath: 'assets/boat4.png',
  ),
  Boat(
    name: 'X24 Force',
    byName: 'Mastercraft',
    description:
        'Meet the highest - performing inboard waterski boat ever created',
    length: '24\'2\'\'',
    beam: '102',
    weight: '2767 kg',
    fuelCapacity: '322 L',
    imagePath: 'assets/boat5.png',
  ),
];
