local heros = {
    {
        Name = "剑士",
        Propernames = "无名氏",
        Ubertip = hcolor.grey("身穿盔甲的战士，持剑作战，攻防兼备。"),
        Art = "ReplaceableTextures\\CommandButtons\\BTNFootman.blp",
        file = "units\\human\\Footman\\Footman",
        unitSound = "Footman",
        movetp = "foot",
        moveHeight = 0.00,
        spd = 270, -- 移动速度
        rangeN1 = 125, -- 攻击范围
        dmgplus1 = 20, -- 基础攻击
        weapTp1 = CONST_WEAPON_TYPE.normal.value, -- 攻击类型
        weapType1 = CONST_WEAPON_SOUND.MetalMediumSlice.value, -- 攻击类型
        Missileart = "", -- 箭矢
        cool1 = 1.0, -- 攻击周期
        backSw1 = 0.5, -- 攻击后摇
        dmgpt1 = 0.5, -- 攻击前摇
        modelScale = 1.10,
        scale = 1.10,
        Primary = "AGI",
        STR = 24,
        AGI = 27,
        INT = 25,
        STRplus = 1.9,
        AGIplus = 2.3,
        INTplus = 2.1,
        goldcost = 0,
        _hslk = {
            msg = "自定义数据"
        },
    },
    {
        Name = "骑士",
        Propernames = "无名氏",
        Ubertip = hcolor.grey("骑架铁马的战士，冲锋陷阵，防御奇佳。"),
        Art = "ReplaceableTextures\\CommandButtons\\BTNKnight.blp",
        file = "units\\human\\Knight\\Knight",
        unitSound = "Knight",
        movetp = "horse",
        moveHeight = 0.00,
        spd = 290, -- 移动速度
        rangeN1 = 200, -- 攻击范围
        dmgplus1 = 18, -- 基础攻击
        weapTp1 = CONST_WEAPON_TYPE.normal.value, -- 攻击类型
        weapType1 = CONST_WEAPON_SOUND.MetalHeavySlice.value, -- 攻击类型
        Missileart = "", -- 箭矢
        cool1 = 1.7, -- 攻击周期
        backSw1 = 0.44, -- 攻击后摇
        dmgpt1 = 0.66, -- 攻击前摇
        modelScale = 1.10,
        scale = 1.10,
        Primary = "STR",
        STR = 30,
        AGI = 15,
        INT = 22,
        STRplus = 2.4,
        AGIplus = 1.7,
        INTplus = 2.0,
        goldcost = 0,
    },
}

for _, v in pairs(heros) do
    v.race = "human"
    slkHelper.unit.hero(v)
end

-- 信使
local couriers = {
    {
        Name = "冷静的绵羊",
        Ubertip = "一只冷酷安静的绵羊，用毛茸茸的白毛携带物品",
        unitSound = "Sheep",
        file = "units\\critters\\Sheep\\Sheep",
        Art = "ReplaceableTextures\\CommandButtons\\BTNSheep.blp",
        modelScale = 1.50,
        scale = 1.20,
        moveHeight = 0,
        targType = "ground",
        armor = "Flesh",
        HP = 500,
        spd = 500,
    },
}
for _, v in ipairs(couriers) do
    v.race = "human"
    v.HP = 100
    v._auto_skill = true
    slkHelper.unit.courier(v)
end
