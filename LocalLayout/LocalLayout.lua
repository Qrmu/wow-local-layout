local LocalLayoutHelper = CreateFrame ("frame", "LocalLayoutHelper", UIParent)
LocalLayoutHelper:RegisterEvent ("PLAYER_ENTERING_WORLD")
LocalLayoutHelper:RegisterEvent ("PLAYER_SPECIALIZATION_CHANGED")

LocalLayoutHelper:SetScript ("OnEvent", function (self, event, isLogin, isReload)
    if LocalLayoutDB and LocalLayoutDB.activeLayout then
        C_EditMode.SetActiveLayout(LocalLayoutDB.activeLayout)
    else
        print("LocalLayout: No Edit Mode layout saved. Apply a layout in Edit Mode to save it for this character.")
    end

    if (event == "PLAYER_ENTERING_WORLD") then
        if isLogin or isReload then
            hooksecurefunc(C_EditMode, "SetActiveLayout", function()
                local layoutInfo = C_EditMode.GetLayouts()
                LocalLayoutDB = { activeLayout = layoutInfo.activeLayout }
            end)
        end
    end
end)
