# 🏔️ Optimized Wallpaper Collection

A curated and optimized collection of wallpapers featuring **Nord** and **Catppuccin Mocha** color schemes.

## ✨ Features

- **🌟 High Resolution:** All images at 1920x1080 or higher — low-res and portrait-oriented images removed.
- **📍 Nord (541 images):** Deduplicated by content, WebP at Quality 90.
- **📍 Catppuccin Mocha (326 images):** High-resolution collection — low-res and portrait images removed.
- **🚀 Optimized:** All images converted to **WebP** format (Quality 90) for efficient storage.
- **🎨 Themes:**
  - [Nord](https://www.nordtheme.com/) — Clean, Arctic, and Minimalist.
  - [Catppuccin Mocha](https://github.com/catppuccin/catppuccin) — Soothing, Pastel high-contrast.
- **📦 Efficient Storage:** ~1.2MB average per image.
- **🔢 Standardized Naming:** Descriptive kebab-case naming throughout.

## 🛠️ Processing Pipeline

- **Nord collection:** Sourced and consolidated from multiple nord-themed wallpaper repositories. Duplicate images were removed by content hash. Low-resolution (<1920x1080) and portrait-oriented images were culled.
- **Catppuccin Mocha collection:** Processed using [gowall](https://github.com/Achno/gowall).
1. **Format Conversion:** All source images (JPG/PNG) converted to WebP.
2. **AI Upscaling:** Applied where necessary via `realesrgan-x4plus` to reach 4K.
3. **Detail Restoration:** Unsharp mask applied to counteract smoothing from the upscale step.
4. **Compression:** Lossy WebP (Quality 85) for optimal size/quality balance.

## 📥 Installation

```bash
git clone https://github.com/dacrab/wallpapers.git
```

## 🖼️ Usage

Designed for high-resolution displays and Linux ricing (Hyprland, Sway, KDE, etc.).

---
*Maintained with ❤️ by dacrab*
