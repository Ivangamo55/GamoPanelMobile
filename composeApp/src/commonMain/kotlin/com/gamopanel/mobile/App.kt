package com.gamopanel.mobile

import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.Composable
import com.gamopanel.mobile.ui.connect.ConnectScreen

/** Raíz de la UI compartida: la usan Android (MainActivity) e iOS (MainViewController). */
@Composable
fun App() {
    // Tema oscuro Material3 (los colores de vidrio los define GlassColors).
    MaterialTheme(colorScheme = darkColorScheme()) {
        ConnectScreen(
            // Siguiente paso (por implementar): pantalla de inicio de sesión con passkey
            // usando baseUrl. Si setupRequired=true, ir al asistente de propietario.
            onConnected = { _, _ -> },
        )
    }
}
