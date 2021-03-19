hdzui.wideScreen()

UI = function()
    hdzui.loadToc("UI\\frame.toc")
    local frame = {
        txt_dps = {},
        txt_kill = {},
        txt_gold = {},
        txt_lumber = {},
        txt_exp = {},
        txt_sell = {},
        bg_attr_desc = {},
        btn_attr_weapon = {},
        txt_attr_weapon = {},
        btn_attr_armor = {},
        txt_attr_armor = {},
        btn_attr_special = {},
        txt_attr_special = {},
        btn_attr_enchant = {},
        txt_attr_enchant = {},
    }
    local fks = { "dps", "kill", "gold", "lumber", "exp", "sell" }
    local bts = { "weapon", "armor", "special", "enchant" }
    local wh = {
        weapon = { w = 0.14, h = 0.133 },
        armor = { w = 0.14, h = 0.14 },
        special = { w = 0.125, h = 0.275 },
        enchant = { w = 0.198, h = 0.396 },
    }
    hplayer.forEach(function(enumPlayer, idx)
        if (his.playing(enumPlayer)) then
            for i, k in ipairs(fks) do
                k = "txt_" .. k
                local y = -0.08 - 0.02 * i
                frame[k][idx] = hdzui.frame(k, hdzui.gameUI())
                hdzui.framePoint(frame[k][idx], hdzui.gameUI(), CONST_DZUI_ALIGN.LEFT, CONST_DZUI_ALIGN.LEFT_TOP, 0.004, y)
                hdzui.frameSize(frame[k][idx], 0.1, 0.02)
                hdzui.frameShow(frame[k][idx], idx)
            end
            frame.bg_attr_desc[idx] = hdzui.frame("bg_attr_desc", hdzui.gameUI())
            hdzui.framePoint(frame.bg_attr_desc[idx], hdzui.gameUI(), CONST_DZUI_ALIGN.RIGHT_BOTTOM, CONST_DZUI_ALIGN.LEFT_TOP, 0.196, -0.59)
            hdzui.frameSize(frame.bg_attr_desc[idx], 0.1, 0.1)
            for i, k in ipairs(bts) do
                local y = -0.496 - 0.022 * i
                local kb = "btn_attr_" .. k
                frame[kb][idx] = hdzui.frame(kb, hdzui.gameUI())
                hdzui.framePoint(frame[kb][idx], hdzui.gameUI(), CONST_DZUI_ALIGN.CENTER, CONST_DZUI_ALIGN.LEFT_TOP, 0.204, y)
                hdzui.frameSize(frame[kb][idx], 0.017, 0.02)
                local kt = "txt_attr_" .. k
                frame[kt][idx] = hdzui.frame(kt, hdzui.gameUI())
                hdzui.framePoint(frame[kt][idx], frame.bg_attr_desc[idx], CONST_DZUI_ALIGN.CENTER, CONST_DZUI_ALIGN.CENTER, 0, 0)
                hdzui.frameSize(frame[kt][idx], wh[k].w - 0.02, wh[k].h)
                hdzui.frameDisable(frame[kt][idx])
                -- 绑定关系
                cj.SaveInteger(cg.demoMouseTable, frame[kb][idx], 1, frame.bg_attr_desc[idx]) -- 背板
                cj.SaveInteger(cg.demoMouseTable, frame[kb][idx], 2, frame[kt][idx]) -- 文字
                cj.SaveReal(cg.demoMouseTable, frame[kb][idx], 3, wh[k].w)
                cj.SaveReal(cg.demoMouseTable, frame[kb][idx], 4, wh[k].h)
                -- 注册事件
                hdzui.onMouse(frame[kb][idx], "enter", idx, "demoMouseEnter")
                hdzui.onMouse(frame[kb][idx], "leave", idx, "demoMouseLeave")
            end
        end
    end)

    -- 数据源 data source
    htime.setInterval(0.33, function(_)
        hplayer.forEach(function(enumPlayer, idx)
            if (his.playing(enumPlayer)) then
                hdzui.frameSetText(frame.txt_dps[idx], hcolor.red("DPS: " .. math.numberFormat(hplayer.getDamage(enumPlayer), 4)))
                hdzui.frameSetText(frame.txt_kill[idx], hcolor.yellow("杀敌数: " .. math.integerFormat(hplayer.getKill(enumPlayer))))
                hdzui.frameSetText(frame.txt_gold[idx], hcolor.gold("黄金获得率: " .. math.floor(hplayer.getGoldRatio(enumPlayer)) .. "%"))
                hdzui.frameSetText(frame.txt_lumber[idx], hcolor.greenLight("木头获得率: " .. math.floor(hplayer.getLumberRatio(enumPlayer)) .. "%"))
                hdzui.frameSetText(frame.txt_exp[idx], hcolor.seaLight("经验获得率: " .. math.floor(hplayer.getExpRatio(enumPlayer)) .. "%"))
                hdzui.frameSetText(frame.txt_sell[idx], hcolor.purpleLight("售卖回收率: " .. math.floor(hplayer.getSellRatio(enumPlayer)) .. "%"))
                -- 当前单位
                local selection = hplayer.getSelection(enumPlayer)
                local attr = hattribute.get(selection)
                if (selection == nil or attr == nil or his.dead(selection) or his.deleted(selection)) then
                    for _, k in ipairs(bts) do
                        hdzui.frameHide(frame["btn_attr_" .. k][idx], idx)
                    end
                    return
                end
                for _, k in ipairs(bts) do
                    hdzui.frameShow(frame["btn_attr_" .. k][idx], idx)
                end
                if (hdzui.frameIsEnable(frame.txt_attr_weapon[idx])) then
                    local weapon = {}
                    table.insert(weapon, "攻击: " .. math.numberFormat(attr.attack_sides[1], 2) .. "~" .. math.numberFormat(attr.attack_sides[2], 2))
                    table.insert(weapon, "攻击频率: " .. attr.attack_space .. "秒/击")
                    table.insert(weapon, "攻击范围: " .. math.floor(attr.attack_range) .. " px")
                    table.insert(weapon, "暴击: " .. math.floor(attr.knocking_odds) .. "%几率，" .. math.floor(attr.knocking_extent) .. "%加成")
                    table.insert(weapon, "命中: " .. math.round(100 + attr.aim, 2) .. "%")
                    table.insert(weapon, "吸血: " .. math.round(attr.hemophagia, 2) .. "%")
                    table.insert(weapon, "技能吸血: " .. math.round(attr.hemophagia_skill, 2) .. "%")
                    table.insert(weapon, "伤害增幅: " .. math.round(attr.damage_extent, 2) .. "%")
                    hdzui.frameSetText(frame.txt_attr_weapon[idx], hcolor.white(string.implode("|n", weapon)))
                end
                if (hdzui.frameIsEnable(frame.txt_attr_armor[idx])) then
                    local armor = {}
                    table.insert(armor, "护甲: " .. math.floor(attr.defend, 2))
                    table.insert(armor, "生命恢复: " .. math.round(attr.life_back, 2) .. "点/秒")
                    table.insert(armor, "魔法恢复: " .. math.round(attr.mana_back, 2) .. "点/秒")
                    table.insert(armor, "治疗加成: " .. math.floor(attr.cure) .. "%")
                    table.insert(armor, "回避几率: " .. math.floor(attr.avoid) .. "%")
                    table.insert(armor, "无敌几率: " .. math.floor(attr.invincible) .. "%")
                    table.insert(armor, "固定减伤: " .. math.round(attr.damage_reduction, 2))
                    table.insert(armor, "比例减伤: " .. math.round(attr.damage_decrease, 2) .. "%")
                    if (hunit.isPunishing(selection)) then
                        table.insert(armor, "僵直度: " .. math.floor(attr.punish_current) .. "/" .. math.floor(attr.punish))
                    end
                    hdzui.frameSetText(frame.txt_attr_armor[idx], hcolor.white(string.implode("|n", armor)))
                end
                if (hdzui.frameIsEnable(frame.txt_attr_special[idx])) then
                    local special = {}
                    table.insert(special, "复活周期: " .. math.floor(attr.reborn) .. "秒")
                    table.insert(special, "视野范围: " .. math.floor(attr.sight) .. "px")
                    table.insert(special, "反伤比率: " .. math.round(attr.damage_rebound, 2) .. "%")
                    table.insert(special, "反伤抵抗: " .. math.round(attr.damage_rebound_oppose, 2) .. "%")
                    table.insert(special, "暴击抵抗: " .. math.round(attr.knocking_oppose, 2) .. "%")
                    table.insert(special, "吸血抵抗: " .. math.round(attr.hemophagia_oppose, 2) .. "%")
                    table.insert(special, "技能吸血抵抗: " .. math.round(attr.hemophagia_skill_oppose, 2) .. "%")
                    table.insert(special, "强化阻碍: " .. math.round(attr.buff_oppose, 2) .. "%")
                    table.insert(special, "负面抵抗: " .. math.round(attr.debuff_oppose, 2) .. "%")
                    table.insert(special, "分裂抵抗: " .. math.round(attr.split_oppose, 2) .. "%")
                    table.insert(special, "僵直抵抗: " .. math.round(attr.punish_oppose, 2) .. "%")
                    table.insert(special, "眩晕抵抗: " .. math.round(attr.swim_oppose, 2) .. "%")
                    table.insert(special, "打断抵抗: " .. math.round(attr.broken_oppose, 2) .. "%")
                    table.insert(special, "沉默抵抗: " .. math.round(attr.silent_oppose, 2) .. "%")
                    table.insert(special, "缴械抵抗: " .. math.round(attr.unarm_oppose, 2) .. "%")
                    table.insert(special, "定身抵抗: " .. math.round(attr.fetter_oppose, 2) .. "%")
                    table.insert(special, "爆破抵抗: " .. math.round(attr.bomb_oppose, 2) .. "%")
                    table.insert(special, "闪电链抵抗: " .. math.round(attr.lightning_chain_oppose, 2) .. "%")
                    table.insert(special, "击飞抵抗: " .. math.round(attr.crack_fly_oppose, 2) .. "%")
                    hdzui.frameSetText(frame.txt_attr_special[idx], hcolor.white(string.implode("|n", special)))
                end
                if (hdzui.frameIsEnable(frame.txt_attr_enchant[idx])) then
                    local enchant = {}
                    for _, v in ipairs(CONST_ENCHANT) do
                        table.insert(enchant,
                            hcolor.mixed(v.label .. "攻" .. math.floor(attr["e_" .. v.value .. "_attack"]) .. "层: "
                                .. math.floor(henchant.INTRINSIC_ADDITION + attr["e_" .. v.value]) .. "%强化，"
                                .. math.floor(attr["e_" .. v.value .. "_oppose"]) .. "%抗性，"
                                .. math.floor(attr["e_" .. v.value .. "_append"]) .. "附着"
                            , v.color)
                        )
                    end
                    hdzui.frameSetText(frame.txt_attr_enchant[idx], string.implode("|n", enchant))
                end
            end
        end)
    end)
end