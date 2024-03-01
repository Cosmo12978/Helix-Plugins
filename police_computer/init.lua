AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )  
include( "shared.lua" )


function ENT:Initialize()
self.Entity:SetModel( "models/props_lab/monitor02.mdl" )
self.Entity:PhysicsInit( SOLID_VPHYSICS )     
self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   
self.Entity:SetSolid( SOLID_VPHYSICS )
self.Entity:DrawShadow(false)       
self.Entity:SetUseType(SIMPLE_USE)
local phys = self.Entity:GetPhysicsObject()
if (phys:IsValid()) then
phys:Wake()
end
end
util.AddNetworkString("policegui")


function ENT:Use(client, activator)

	 local char = client:GetCharacter()
  local fac =  char:GetFaction()

if fac == 4 then 
net.Start("policegui")
net.WriteEntity(self)
net.Send(activator)


else
	client:notify("You don't have access.")
end

end



