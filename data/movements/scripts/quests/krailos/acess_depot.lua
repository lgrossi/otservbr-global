local setting = {
	[19049] = {position = Position(33657, 31658, 8)}, --Entrance
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local portal = setting[item.actionid]
	if portal then
		player:teleportTo(portal.position)
	end
	return true
end
