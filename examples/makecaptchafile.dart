import "dart:io";
import "dart:math";
import "package:image/image.dart" as img;
import "../lib/imagecaptcha.dart";

void main()
{
  ImageCaptcha captcha = new ImageCaptcha(80, 30);

  //p.color(0, 0, 0, 0);  // First color: background (red, green, blue, alpha)
  //p.color(80, 80, 80, 255); // Second color: paint (red, green, blue, alpha)

  double rand = new Random().nextDouble();

  img.Image image = captcha.render( (rand*9000+1000).round() );

  new File("test2.png").writeAsBytes( img.encodePng(image) );
}

