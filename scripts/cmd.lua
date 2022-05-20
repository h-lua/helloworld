--- -gg 投降
hcmd("^-gg$", function(evtData)
    hplayer.defeat(evtData.triggerPlayer, "GG")
end)

--- -apm 查看玩家分钟操作数
hcmd("^-apm$", function(evtData)
    echo("您的apm为:" .. hplayer.getApm(evtData.triggerPlayer), evtData.triggerPlayer)
end)

--- -d [+|-][NUMBER]视距减少/增加
hcmd("^-d [-+]%d+$", function(evtData)
    local cds = string.explode(" ", string.lower(evtData.chatString))
    local first = string.sub(cds[2], 1, 1)
    if (first == "+" or first == "-") then
        --视距
        local v = string.sub(cds[2], 2, string.len(cds[2]))
        v = math.abs(tonumber(v))
        if (v > 0) then
            local val = math.abs(v)
            if (first == "+") then
                hcamera.changeDistance(evtData.triggerPlayer, val)
            elseif (first == "-") then
                hcamera.changeDistance(evtData.triggerPlayer, -val)
            end
        end
    end
end)