hquest.create({
    side = "right",
    title = "主动投降",
    icon = "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp",
    content = "-gg 投降并退出"
})

hquest.create({
    side = "right",
    title = "查看你的APM数值",
    icon = "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp",
    content = "-apm 查看你的APM数值"
})

hquest.create({
    side = "right",
    title = "调整你的视距",
    icon = "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp",
    content = {
        "-d +[number] 增加视距",
        "-d -[number] 减少视距",
        " ! 视距自动设置上下限，请放心设置"
    }
})