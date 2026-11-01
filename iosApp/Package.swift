// swift-tools-version: 6.0
// ⚠️ NO VERIFICADO: SwiftPM en Linux/WSL podría no soportar .binaryTarget con .xcframework.
// Si falla, usa el flujo alterno del README (IPA completo generado en macOS CI).
import PackageDescription

let package = Package(
    name: "GamoPanel",
    platforms: [.iOS(.v17)],                                   // iOS/iPadOS 17+ (cubre iOS 27).
    products: [.library(name: "GamoPanel", targets: ["GamoPanel"])],
    targets: [
        // Framework de Kotlin descargado del artefacto de GitHub Actions.
        .binaryTarget(name: "ComposeApp", path: "ComposeApp.xcframework"),
        // Código Swift de la app, que depende del framework de Kotlin.
        .target(name: "GamoPanel", dependencies: ["ComposeApp"]),
    ]
)
