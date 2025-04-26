local LocalLayoutHelper = CreateFrame ("frame", "LocalLayoutHelper", UIParent)
LocalLayoutHelper:RegisterEvent ("PLAYER_ENTERING_WORLD")
LocalLayoutHelper:RegisterEvent ("PLAYER_SPECIALIZATION_CHANGED")

LocalLayoutHelper:SetScript ("OnEvent", function (self, event, p1, p2)
    if ((event == "PLAYER_ENTERING_WORLD" and (p1 or p2))
            or (event == "PLAYER_SPECIALIZATION_CHANGED" and p1 == "player")) then
        local activeLayout = 4

        C_EditMode.SetActiveLayout(activeLayout)
    end
end)
