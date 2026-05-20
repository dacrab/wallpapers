# 🏔️ Optimized Wallpaper Collection

A curated and optimized collection of **4K (3840x2160)** wallpapers, featuring **Nord** and **Catppuccin Mocha** color schemes.

## ✨ Features

- **🌟 4K Resolution:**
  - **Nord (273 images):** AI upscaled to 4K using `realesrgan-x4plus`.
  - **Catppuccin Mocha (330 images):** High-resolution collection (most at or near 4K).
- **🚀 Optimized:** All images in **WebP** format (Quality 85) with detail-preserving sharpening.
- **🎨 Themes:**
  - [Nord](https://www.nordtheme.com/) — Clean, Arctic, and Minimalist.
  - [Catppuccin Mocha](https://github.com/catppuccin/catppuccin) — Soothing, Pastel high-contrast.
- **📦 Efficient Storage:** ~500KB average per image.
- **🔢 Standardized Naming:** Nord collection is sequentially named (`001.webp`, `002.webp`, ...).

## 🛠️ Processing Pipeline

Images were processed using [gowall](https://github.com/Achno/gowall):
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
