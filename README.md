# GamoPanel Mobile (KMP · Compose Multiplatform · Liquid Glass)

## Estructura
```
GamoPanelMobile/
├─ gradle/libs.versions.toml            # versiones y dependencias
├─ gradle/wrapper/gradle-wrapper.properties
├─ settings.gradle.kts · build.gradle.kts · gradle.properties
├─ composeApp/
│  ├─ build.gradle.kts
│  └─ src/
│     ├─ commonMain/…/com/gamopanel/mobile/   # UI y lógica compartidas
│     │  ├─ App.kt
│     │  ├─ data/PanelClient.kt               # /api/health + /api/setup/status
│     │  └─ ui/{theme/LiquidGlass.kt, connect/ConnectState.kt, connect/ConnectScreen.kt}
│     ├─ androidMain/                         # MainActivity, Manifest, tema
│     └─ iosMain/…/MainViewController.kt
├─ iosApp/                                    # host Swift para xtool (sin verificar)
└─ .github/workflows/ios-framework.yml        # compila el framework iOS en macOS
```

## Android (Honor 90)
1. Android Studio → Open → carpeta `GamoPanelMobile` → esperar Gradle Sync.
2. Activa depuración USB en el Honor 90 y conéctalo.
3. Selecciona `composeApp` + el dispositivo → Run.

## iOS desde Windows (xtool)
Kotlin/Native para iOS no compila en Windows. Se usa un runner macOS gratuito de GitHub:
1. Sube el proyecto a un repo de GitHub.
2. Actions → `ios-framework` → Run workflow.
3. Descarga `ComposeApp.xcframework` y cópialo en `iosApp/`.
4. En WSL: `cd iosApp && xtool dev` (firma con tu Apple ID e instala en iPhone/iPad).
