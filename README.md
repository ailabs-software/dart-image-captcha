# dart-image-captcha (pub: imagecaptcha)
A simple image captcha generator for Dart. Originally ported from the npm captchapng module: https://github.com/GeorgeChan/captchapng

## Features
* Generates a numeric captcha image
* Built-in fonts
* Characters up and down, left and right limits, random displacement
* No dependency on any service

## Example
```dart
  ImageCaptcha captcha = new ImageCaptcha(80, 30);

  //p.color(0, 0, 0, 0);  // First color: background (red, green, blue, alpha)
  //p.color(80, 80, 80, 255); // Second color: paint (red, green, blue, alpha)

  double rand = new Random().nextDouble();

  img.Image image = captcha.render( (rand*9000+1000).round() );

  new File("test2.png").writeAsBytes( img.encodePng(image) );
