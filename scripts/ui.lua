UI = function()
    htime.setInterval(0.3, function(_)
        hplayer.forEach(function(enumPlayer, idx)
            idx = idx - 1 --vjass玩家从0开始索引，故减1
            cj.SaveStr(cg.H_HT_UI_DATA, idx, cg.FK_TXT_DPS, hcolor.red("DPS: " .. math.numberFormat(hplayer.getDamage(enumPlayer), 4)))
            cj.SaveStr(cg.H_HT_UI_DATA, idx, cg.FK_TXT_KILL, hcolor.yellow("杀敌数: " .. math.integerFormat(hplayer.getKill(enumPlayer))))
            local selection = hplayer.getSelection(enumPlayer)
            local attr = hattribute.get(selection)
            if (selection == nil or attr == nil or his.dead(selection) or his.deleted(selection)) then
                cj.SaveInteger(cg.H_HT_UI_DATA, idx, cg.FK_ATTR, 0)
            else
                cj.SaveInteger(cg.H_HT_UI_DATA, idx, cg.FK_ATTR, 567)

                local weapon = {}
                table.insert(weapon, "攻击: " .. math.numberFormat(attr.attack_sides[1], 2) .. "~" .. math.numberFormat(attr.attack_sides[2], 2))
                table.insert(weapon, "攻击频率: " .. attr.attack_space .. "秒/击")
                table.insert(weapon, "攻击范围: " .. math.floor(attr.attack_range) .. "PX")
                table.insert(weapon, "暴击: " .. math.floor(attr.knocking_odds) .. "%几率，" .. math.floor(attr.knocking_extent) .. "%加成")
                table.insert(weapon, "命中: " .. math.round(100 + attr.aim, 2) .. "%")
                table.insert(weapon, "吸血: " .. math.round(attr.hemophagia, 2) .. "%")
                table.insert(weapon, "技能吸血: " .. math.round(attr.hemophagia_skill, 2) .. "%")
                table.insert(weapon, "伤害增幅: " .. math.round(attr.damage_extent, 2) .. "%")
                cj.SaveStr(cg.H_HT_UI_DATA, idx, cg.FK_TXT_ATTR_WEAPON, hcolor.white(string.implode("|n", weapon)))

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
                cj.SaveStr(cg.H_HT_UI_DATA, idx, cg.FK_TXT_ATTR_ARMOR, hcolor.white(string.implode("|n", armor)))

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
                cj.SaveStr(cg.H_HT_UI_DATA, idx, cg.FK_TXT_ATTR_SPECIAL, hcolor.white(string.implode("|n", special)))

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
                cj.SaveStr(cg.H_HT_UI_DATA, idx, cg.FK_TXT_ATTR_ENCHANT, string.implode("|n", enchant))
            end
        end)
        cj.ExecuteFunc("H_DZUI_INTERVAL")
    end)
end