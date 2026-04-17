#!/usr/bin/env bash

# Exit on error
set -e

echo "🚀 Installing Flutter..."

# Clone Flutter SDK
git clone https://github.com/flutter/flutter.git -b stable --depth 1

# Add Flutter to PATH
export PATH="$PATH:`pwd`/flutter/bin"

echo "📦 Running flutter doctor..."
flutter doctor

echo "📦 Getting dependencies..."
cd app
flutter pub get

echo "🌐 Building Flutter web..."
flutter build web

echo "✅ Build complete!"