# 🌦️ Weather Pop - Flutter Weather App

A beautiful, responsive weather app built with **Flutter** that supports **light/dark themes**, animated splash screens, and 5-day forecasts. Perfectly optimized for both **mobile** and **web**.

---

## 🔗 Try it here  
[Live Demo](https://earnest-bunny-84c105.netlify.app)



## ✨ Features
- 📍 **Current Location Weather** using API
- 🌤 **5-Day Weather Forecast** with detailed view
- 🌓 **Light/Dark Theme Toggle**
- 🖥 **Responsive Design** (mobile + web)
- 🎨 **Custom Theming** (black background with white weather cards in dark mode)
- 🚀 **Animated Splash Screen** using `logo.json`

---

## 🛠️ Installation

### 1. Clone the repository
```bash
git clone https://github.com/Utkarshkhotele/weather_app.git
cd weather_app



### 2. Install dependencies

```bash
flutter pub get
```

### 3. Run the app

```bash
flutter run
```

---

## ⚙️ Configuration

1. **Weather API Key**

   * Sign up at [OpenWeatherMap](https://openweathermap.org/api)
   * Get your API key
   * Add it to your `lib/services/weather_service.dart` file:

     ```dart
     const String apiKey = "YOUR_API_KEY";
     ```

2. **Splash Animation**

   * Replace `assets/logo.json` with your own Lottie animation file.

3. **Theme Customization**

   * Modify colors in `lib/theme/app_theme.dart` to change the look.

---

## 📦 Dependencies

* **[flutter\_lottie](https://pub.dev/packages/lottie)** - Animated splash screen
* **[http](https://pub.dev/packages/http)** - API calls
* **[provider](https://pub.dev/packages/provider)** - State management
* **[intl](https://pub.dev/packages/intl)** - Date formatting

---

## 🤝 Contributing

1. Fork the repository
2. Create a new branch (`feature/your-feature`)
3. Commit your changes
4. Push to the branch
5. Create a Pull Request


---

## 💙 Credits

Built with ❤️ using [Flutter](https://flutter.dev).


