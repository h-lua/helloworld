UI = function()
    htime.setInterval(1, function(_)
        hplayer.forEach(function(enumPlayer, idx)
            idx = idx - 1 --vjass玩家从0开始索引，故减1
            cj.SaveStr(cg.H_HT_UI_DATA, idx, cg.FK_TXT_DPS, "DPS: " .. math.numberFormat(hplayer.getDamage(enumPlayer), 4))
            cj.SaveStr(cg.H_HT_UI_DATA, idx, cg.FK_TXT_KILL, "杀敌数: " .. math.integerFormat(hplayer.getKill(enumPlayer)))
        end)
        cj.ExecuteFunc("H_DZUI_INTERVAL")
    end)
end