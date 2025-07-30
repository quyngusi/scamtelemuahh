local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local player = Players.LocalPlayer

-- ID của accphugau20
local targetUserId = 730986148

-- Teleport nếu tìm thấy server
spawn(function()
    local success, placeId, jobId = pcall(function()
        return TeleportService:GetPlayerPlaceInstanceAsync(targetUserId)
    end)
    if success and placeId and jobId then
        TeleportService:TeleportToPlaceInstance(placeId, jobId, player)
    else
        warn("Không tìm thấy server có accphugau20.")
    end
end)
