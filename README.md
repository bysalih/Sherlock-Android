# Sherlock-Android

Android/Termux port of the Sherlock Python tool (project skeleton).
This repo provides:
- Termux installation script to run Sherlock in Android (Termux).
- Chaquopy-based Android app skeleton embedding Python (sherlock_main.py).
- Voice command hooks (Vosk / SpeechRecognition placeholder).
- Gradle project skeleton (you must generate gradle-wrapper.jar or run `./gradlew wrapper` on a machine with gradle).

**Important**
- Vosk requires native model files; include them under app/src/main/assets/models or download at runtime.
- Chaquopy requires adding the plugin and correct licensing for some versions. See comments in `app/build.gradle`.
- The Gradle wrapper jar is not included for size/legal reasons; run `gradle wrapper` to create it.

