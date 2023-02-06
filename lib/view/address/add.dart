import 'package:ecommercecourse/controller/address/add_controller.dart';
import 'package:ecommercecourse/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressAdd extends StatelessWidget {
  const AddressAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddAddressController controllerpage = Get.put(AddAddressController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('add new address'),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      body: Container(
        child: GetBuilder<AddAddressController>(
            builder: ((controllerpage) => HandlingDataView(
                statusRequest: controllerpage.statusRequest,
                widget: Column(children: [
                  if (controllerpage.kGooglePlex != null)
                    Expanded(
                        child: GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: controllerpage.kGooglePlex!,
                      onMapCreated: (GoogleMapController controllermap) {
                        controllerpage.completercontroller!
                            .complete(controllermap);
                      },
                    ))
                ])))),
      ),
    );
  }
}
