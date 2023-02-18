# Neovim configuration with Lua


目录结构如下
```
|- lua
|  |- plug-config/
|  |- basic.lua
|  |- keybindings.lua
|  |- plugins.lua
|- plugin/
\- init.lua
```

这个结构很重要，因为Lua不会加载不在`lua`中的文件。文件init.lua 加载位于该文件夹内的所有模块。大多数名称都是不言自明的。这里最重要的文件是`plugins.lua`，就是加载相关插件的模块。加载的逻辑是：

1. **`init.lua`**:加载lua目录下的lua文件，包括basic.lua,keybindings.lua,plugins.lua.
2. **`basic.lua`**:nvim的一些全局设置. 
3. **`keybindings.lua`**:nvim的一些全局key-map. 
4. **`plugins.lua`**:nvim中使用到的插件管理. 
5. **`\plug-config`**:该目录下存放plugins的插件配置文件，包括插件设置及快捷键设置. 

