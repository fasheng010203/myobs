---
title: 简易版 Minecraft (Python代码)
date: 2026-01-31
tags:
  - #Python
  - #GameDev
  - #Code
---

# 🧱 简易版 Minecraft (Python 实现)

这是一个使用 Python 的 `ursina` 引擎编写的极简版 Minecraft demo。
包含功能：
1. 第一人称视角移动 (WASD + 空格跳跃)。
2. 左键破坏方块。
3. 右键放置方块。

## 📦 依赖安装
首先你需要安装 `ursina` 库：
```bash
pip install ursina
```

## 💻 源代码 (`simple_minecraft.py`)

```python
from ursina import *
from ursina.prefabs.first_person_controller import FirstPersonController

app = Ursina()

# 定义几种简单的方块纹理颜色
grass_color = color.rgb(0, 255, 0)
stone_color = color.gray
dirt_color = color.brown
sky_color = color.cyan

window.color = sky_color

class Voxel(Button):
    def __init__(self, position=(0,0,0), texture_color=grass_color):
        super().__init__(
            parent=scene,
            position=position,
            model='cube',
            origin_y=0.5,
            texture='white_cube',
            color=texture_color,
            highlight_color=color.lime
        )

    def input(self, key):
        if self.hovered:
            if key == 'left mouse down':
                destroy(self) # 左键破坏
            if key == 'right mouse down':
                # 右键放置 (默认放石头)
                Voxel(position=self.position + mouse.normal, texture_color=stone_color)

# 生成地板 (20x20)
for z in range(20):
    for x in range(20):
        Voxel(position=(x,0,z))

player = FirstPersonController()
app.run()
```

## 🚀 运行方法
将代码保存为 `simple_minecraft.py`，然后在终端运行：
```bash
python simple_minecraft.py
```
