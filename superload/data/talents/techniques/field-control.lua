local _M = loadPrevious(...)

registerTalentTranslation{
	id = "T_DISENGAGE",
	name = "逃脱",
	info = function(self, t)
		return ([[跳 离 你 的 目 标 %d 码。 ]]):format(t.getDist(self, t))
	end,
}

registerTalentTranslation{
	id = "T_TRACK",
	name = "追踪",
	info = function(self, t)
		local rad = self:getTalentRadius(t)
		return ([[感 受 你 周 围 %d 码 半 径 范 围 敌 人 的 踪 迹， 持 续 %d 回 合。 
		受 灵 巧 影 响， 半 径 有 额 外 加 成。 ]]):format(rad, 3 + self:getTalentLevel(t))
	end,
}

registerTalentTranslation{
	id = "T_HEAVE",
	name = "前踢",
	info = function(self, t)
		return ([[一 次 强 力 的 前 踢 使 你 的 目 标 被 击 退 %d 码。 
		如 果 有 另 外 一 个 怪 物 挡 在 路 上， 它 也 会 被 推 开。 
		受 敏 捷 或 物 理 强 度（ 取 较 大 值） 影 响， 击 退 概 率 有 额 外 加 成。 ]])
		:format(t.getDist(self, t))
	end,
}

registerTalentTranslation{
	id = "T_SLOW_MOTION",
	name = "子弹时间",
	info = function(self, t)
		return ([[你 敏 捷 的 身 手 允 许 你 看 见 飞 来 的 抛 射 物（ 法 术、 箭 矢 ……）， 减 慢 它 们 %d%% 速 度。]]):
		format(math.min(90, 15 + self:getDex(10, true) * self:getTalentLevel(t)))
	end,
}


return _M
