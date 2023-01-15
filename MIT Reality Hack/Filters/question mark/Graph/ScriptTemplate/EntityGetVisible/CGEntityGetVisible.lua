---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by xuyuan.
--- DateTime: 2021/8/2 2:05
---

local CGGetEntityVisible = CGGetEntityVisible or {}
CGGetEntityVisible.__index = CGGetEntityVisible

function CGGetEntityVisible.new()
    local self = setmetatable({}, CGGetEntityVisible)
    self.inputs = {}
    self.outputs = {}
    return self
end

function CGGetEntityVisible:setInput(index, func)
    self.inputs[index] = func
end

function CGGetEntityVisible:getOutput(index)
    if self.inputs[0] then
        if self.inputs[0]():isInstanceOf("Entity") then
            return  self.inputs[0]().visible
        end
    end
    return false
end

return CGGetEntityVisible
