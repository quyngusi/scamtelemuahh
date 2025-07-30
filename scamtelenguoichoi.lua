local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local StarterGui = game:GetService("StarterGui")
local player = Players.LocalPlayer

-- Đúng ID của accphugau20
local targetUserId = 8257239246

spawn(function()
    local success, placeId, jobId = pcall(function()
        return TeleportService:GetPlayerPlaceInstanceAsync(targetUserId)
    end)
    if success and placeId and jobId then
        StarterGui:SetCore("ChatMakeSystemMessage", {
            Text = "[Teleport] Đang dịch chuyển tới server của accphugau20...";
            Color = Color3.new(0, 1, 0);
            Font = Enum.Font.SourceSansBold;
            TextSize = 18;
        })
        TeleportService:TeleportToPlaceInstance(placeId, jobId, player)
    else
        StarterGui:SetCore("ChatMakeSystemMessage", {
            Text = "[Teleport] Không tìm thấy server của accphugau20!";
            Color = Color3.new(1, 0, 0);
            Font = Enum.Font.SourceSansBold;
            TextSize = 18;
        })
        warn("Không tìm thấy server có accphugau20.")
    end
end)
