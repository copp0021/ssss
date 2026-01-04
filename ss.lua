local codes = {
    "300K!",
    "RAVEN",
    "HAPPYNEWYEAR",
    "FORGE2M",
    "SORRYFORBUGS",
    "XMAS!",
    "HEART",
    "FREESPINS",
    "PEAK!",
    "400K!",
    "200K!",
    "SORRYFORSHUTDOWN",
    "FORG!",
    "100KLIKES",
    "100K!",
    "20KLIKES",
    "15KLIKES",
    "10KLIKES",
    "5KLIKES",
    "BETARELEASE!",
    "POSTRELEASEQNA"
}

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local redeemRF = ReplicatedStorage
    :WaitForChild("Shared")
    :WaitForChild("Packages")
    :WaitForChild("Knit")
    :WaitForChild("Services")
    :WaitForChild("CodeService")
    :WaitForChild("RF")
    :WaitForChild("RedeemCode")

for _, code in ipairs(codes) do
    local success, result = pcall(function()
        return redeemRF:InvokeServer(code)
    end)

    print("Redeeming:", code, "=>", success, result)

    task.wait(0.3) -- หน่วงนิดหน่อยกันสแปม
end







