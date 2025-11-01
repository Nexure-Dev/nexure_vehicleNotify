# Nexure Vehicle Notify
An Vehicle Notify System for FiveM (esx, qbcore, standalone)

---

## ⚙️ Features
- Modernes UI
- Notification Typen (success, info, warning, error)
- Notify zeigt rechts oben an. (Ecke)

---

## ⁉️ Verwendung

### Export
````lua
exports['nexure_notifyV2']:ShowNotification({
    type = '',           -- success, info, warning, error
    title = '',
    message = '',
    duration = 5000             -- Dauer der Anzeige (millisekunden)
})
````

### Beispiel
````lua
exports['nexure_vehicleNotify']:ShowNotification({
                        type = 'info',
                        title = 'Geschwindigkeit angepasst',
                        message = 'Dein Tempomat wurde auf '..math.floor(cruiseSpeed)..' km/h gesetzt.',
                        duration = 3500 
})
````