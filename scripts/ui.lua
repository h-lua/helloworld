UI = function()
    htime.setInterval(1, function(_)

        hplayer.forEach(function(enumPlayer, idx)
            cj.SaveStr(cg.H_HT_UI, idx, 1, "黄金: " .. hplayer.getGold(enumPlayer))
            cj.SaveStr(cg.H_HT_UI, idx, 2, "木头: " .. hplayer.getLumber(enumPlayer))
        end)
        --cj.ExecuteFunc("H_DZUI_INTERVAL")
    end)
end