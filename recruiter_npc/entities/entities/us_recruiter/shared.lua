ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "US Recruiter"
ENT.Spawnable = true
ENT.AdminOnly = true
ENT.Category  = "Helix Military"

function ENT:SetupDataTables()
	self:NetworkVar("Entity", 0, "Playername")
end