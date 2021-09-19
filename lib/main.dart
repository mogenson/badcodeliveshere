import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget frame() {
    return const Center(
      child: Image(
        image: AssetImage('images/Providence-Black-Frame.png'),
        fit: BoxFit.fill,
      ),
    );
  }

  Widget slideshow() {
    return SizedBox.expand(
      child: FractionallySizedBox(
        // we squish the images to fit
        widthFactor: 0.9,
        heightFactor: 0.9,
        alignment: FractionalOffset.center,
        child: ImageSlideshow(
          width: double.infinity,
          height: double.infinity,
          autoPlayInterval: 5000,
          isLoop: true,
          children: [
            Image(
              image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/D%C3%BClmen%2C_Hausd%C3%BClmen%2C_Heubach_--_2019_--_3260.jpg/1280px-D%C3%BClmen%2C_Hausd%C3%BClmen%2C_Heubach_--_2019_--_3260.jpg',
              ),
              fit: BoxFit.fill,
            ),
            Image(
              image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Landscape_of_Shimla_%2C_Himachal_Pradesh.jpg/1280px-Landscape_of_Shimla_%2C_Himachal_Pradesh.jpg',
              ),
              fit: BoxFit.fill,
            ),
            Image(
              image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/D%C3%BClmen%2C_Umland%2C_Sonnenaufgang_--_2012_--_8069.jpg/1280px-D%C3%BClmen%2C_Umland%2C_Sonnenaufgang_--_2012_--_8069.jpg',
              ),
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Center(
        child: Container(
          width: 1600,
          height: 1000,
          //color: Colors.amber[600],
          child: Stack(
            children: <Widget>[
              slideshow(),
              frame(),
            ],
          ),
        ),
      ),
    );
  }
}
