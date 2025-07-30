local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local player = Players.LocalPlayer

-- UserId của accphugau20
local targetUserId = 8257239246

-- Tìm và tele vào server chứa accphugau20
spawn(function()
    local success, placeId, jobId = pcall(function()
        return TeleportService:GetPlayerPlaceInstanceAsync(targetUserId)
    end)

    if success and placeId and jobId then
        TeleportService:TeleportToPlaceInstance(placeId, jobId, player)
    else
        warn("Không tìm thấy server của accphugau20 (offline/private?)")
    end
end)
