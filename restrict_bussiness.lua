local PLUGIN = PLUGIN

PLUGIN.name = "Restrict Business"
PLUGIN.author = "Cosmos"
PLUGIN.description = "Allows only certain factions to use the business menu."

if (CLIENT) then
function PLUGIN:BuildBusinessMenu(client)
	if LocalPlayer():Team() == FACTION_CITIZEN then
	return true
else
	return false
end
end
end