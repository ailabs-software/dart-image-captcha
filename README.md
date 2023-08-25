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

  double rand = new Random().nextDouble();

  img.Image image = captcha.render( (rand*9000+1000).round() );

  new File("test2.png").writeAsBytes( img.encodePng(image) );
