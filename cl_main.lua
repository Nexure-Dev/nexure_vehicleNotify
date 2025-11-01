/*

    ███╗   ██╗███████╗██╗  ██╗██╗   ██╗██████╗ ███████╗
    ████╗  ██║██╔════╝╚██╗██╔╝██║   ██║██╔══██╗██╔════╝
    ██╔██╗ ██║█████╗   ╚███╔╝ ██║   ██║██████╔╝█████╗
    ██║╚██╗██║██╔══╝   ██╔██╗ ██║   ██║██╔══██╗██╔══╝
    ██║ ╚████║███████╗██╔╝ ██╗╚██████╔╝██║  ██║███████╗
    ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝

    Made by Nexure - dsc.gg/nexure

 */

local isNotificationVisible = false

exports('ShowNotification', function(data)
    if isNotificationVisible then return end
    
    local vehicleData = {
        type = data.type or 'info', 
        title = data.title or 'Fahrzeug',
        message = data.message or '',
        duration = data.duration or 4000,
        icon = data.icon or 'car'
    }
    
    isNotificationVisible = true
    SendNUIMessage({
        action = 'show',
        data = vehicleData
    })
    
    SetTimeout(vehicleData.duration, function()
        isNotificationVisible = false
    end)
end)