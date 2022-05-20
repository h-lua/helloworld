SETUP = function()
    -- 设定玩家
    hplayer.qty_max = 2 -- 最大玩家数
    hplayer.convert_ratio = 1000000 -- 换算比率，100金 -> 1木

    -- 设定敌军
    henemy.set("怪物", nil, { 2 }, false)

    cj.FogEnable(not DEBUGGING)
    cj.FogMaskEnable(not DEBUGGING)

    -- 映射属性
    hattribute.setRelation({
        primary = 0,
        str = nil,
        agi = nil,
        int = {
            mana = 5,
            mana_back = 0.1,
        },
    })
end
