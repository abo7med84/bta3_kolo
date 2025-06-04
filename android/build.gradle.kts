buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath("com.android.tools.build:gradle:8.1.0")
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:2.0.21")  // Ensure Kotlin plugin version
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}