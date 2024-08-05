import 'package:flutter/material.dart';

class UiControlsScreens extends StatelessWidget {
  const UiControlsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Controls + Tiles"),
      ),
      body: const _UIcontrolsView(),
    );
  }
}

class _UIcontrolsView extends StatefulWidget {
  const _UIcontrolsView();

  @override
  State<_UIcontrolsView> createState() => _UIcontrolsViewState();
}

enum Transportation { car, boat, plane, submarine }

class _UIcontrolsViewState extends State<_UIcontrolsView> {
  bool isDeveloper = false;
  Transportation selectedTransport = Transportation.car;
  bool wantsBreakFast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text("Modo Desarrollador"),
            subtitle: const Text("Funciones Adicionales"),
            value: isDeveloper,
            onChanged: (value) {
              setState(() {
                isDeveloper = !isDeveloper;
              });
            }),

        ExpansionTile(
          title: const Text("Vehiculo de transporte:"),
          subtitle: Text('$selectedTransport'),
          children: [
            RadioListTile(
              title: const Text("Car"),
              subtitle: const Text("Viajar en carro."),
              value: Transportation.car,
              groupValue: selectedTransport,
              onChanged: (value) => setState(() {
                selectedTransport = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text("Boat"),
              subtitle: const Text("Viajar en barco."),
              value: Transportation.boat,
              groupValue: selectedTransport,
              onChanged: (value) => setState(() {
                selectedTransport = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text("Plane"),
              subtitle: const Text("Viajar en avion."),
              value: Transportation.plane,
              groupValue: selectedTransport,
              onChanged: (value) => setState(() {
                selectedTransport = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text("Submarine"),
              subtitle: const Text("Viajar en submarino."),
              value: Transportation.submarine,
              groupValue: selectedTransport,
              onChanged: (value) => setState(() {
                selectedTransport = Transportation.submarine;
              }),
            ),
          ],
        ),
        
        ExpansionTile(title: const Text("Comida"),
          children: [
            CheckboxListTile(
              title: const Text("¿Desayuno?"),
              value: wantsBreakFast,
              onChanged: (value) => setState(() {
              wantsBreakFast = !wantsBreakFast;
              }),
            ),
            CheckboxListTile(
              title: const Text("¿Almuerzo?"),
              value: wantsLunch,
              onChanged: (value) => setState(() {
              wantsLunch = !wantsLunch;
              }),
            ),
            CheckboxListTile(
              title: const Text("¿Cena?"),
              value: wantsDinner,
              onChanged: (value) => setState(() {
              wantsDinner = !wantsDinner;
              }),
            ),
          ],
        )
      ],
    );
  }
}
