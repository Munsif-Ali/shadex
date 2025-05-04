# 🌟 Shadex

**Shadex** is a lightweight Flutter widget that adds a customizable shadow effect to any widget — ideal for vector-based images like SVGs or other composable visuals. It gives your UI elements depth and polish without the performance hit of layering large assets.

---

## ✨ Features

- Adds a soft, blurred shadow behind any widget
- Highly customizable shadow color, blur, and offset
- Especially useful for SVG icons or vector illustrations
- Simple drop-in widget — no setup required

---

## 📦 Installation

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  shadex:
    git:
      url: https://github.com/your-username/shadex.git
```

## 🔧 Usage

```dart
import 'package:shadex/shadex.dart';
import 'package:flutter_svg/flutter_svg.dart';

Shadex(
  child: SvgPicture.asset('assets/icons/star.svg'),
)

// Use with Icon widget
Shadex(
  child: Icon(Icons.star, size: 50),
)
// Use with Text widget
Shadex(
  child: Text('Hello, Shadex!', style: TextStyle(fontSize: 24)),
)

// Use with Image widget
Shadex(
  child: Image.asset('assets/images/sample.png'),
)
```

## 🎨 Customization

```dart
Shadex(
  child: SvgPicture.asset('assets/icons/star.svg'),
  shadowColor: Colors.black45,
  shadowBlurRadius: 6.0,
  shadowOffset: Offset(4, 4),
)
```

## 📱 Screenshots

![Screenshot 1](https://github.com/Munsif-Ali/shadex/raw/master/SS/Screenshot%202025-05-04%20111530.png)
![Screenshot 2](https://github.com/Munsif-Ali/shadex/raw/master/SS/Screenshot%202025-05-04%20111513.png)
![Screenshot 3](https://github.com/Munsif-Ali/shadex/raw/master/SS/Screenshot%202025-05-04%20111455.png)
![Screenshot 4](https://github.com/Munsif-Ali/shadex/raw/master/SS/Screenshot%202025-05-04%20111354.png)

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/Munsif-Ali/shadex/blob/master/LICENSE) file for details.
