UI = function()
    htime.setInterval(0.1, function(_)
        hplayer.forEach(function(enumPlayer, idx)
            idx = idx - 1 --vjass玩家从0开始索引，故减1
            cj.SaveStr(cg.H_HT_UI_DATA, idx, cg.FK_TXT_DPS, "DPS: " .. math.numberFormat(hplayer.getDamage(enumPlayer), 4))
            cj.SaveStr(cg.H_HT_UI_DATA, idx, cg.FK_TXT_KILL, "杀敌数: " .. math.integerFormat(hplayer.getKill(enumPlayer)))
            local selection = hplayer.getSelection(enumPlayer)
            local attr = hattribute.get(selection)
            if (selection == nil or attr == nil or his.dead(selection) or his.deleted(selection)) then
                cj.SaveInteger(cg.H_HT_UI_DATA, idx, cg.FK_BG_ATTR, 0)
            else
                cj.SaveInteger(cg.H_HT_UI_DATA, idx, cg.FK_BG_ATTR, 567)
                
            end
        end)
        cj.ExecuteFunc("H_DZUI_INTERVAL")
    end)
end