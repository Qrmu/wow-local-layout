local LocalLayoutHelper = CreateFrame ("frame", "LocalLayoutHelper", UIParent)
LocalLayoutHelper:RegisterEvent ("PLAYER_ENTERING_WORLD")
LocalLayoutHelper:RegisterEvent ("PLAYER_SPECIALIZATION_CHANGED")

LocalLayoutHelper:SetScript ("OnEvent", function (self, event, isLogin, isReload)
    if ((event == "PLAYER_ENTERING_WORLD" and (isLogin or isReload))
            or event == "PLAYER_SPECIALIZATION_CHANGED") then
        local activeLayout = 4

        C_EditMode.SetActiveLayout(activeLayout)
        print("LocalLayout: Set Active Layout " .. activeLayout)
    end
end)
