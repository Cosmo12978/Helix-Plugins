AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )  
include( "shared.lua" )

util.AddNetworkString("open_usrecruitmenu")
util.AddNetworkString("recruitedfunction")

function ENT:Initialize()
self.Entity:SetModel( "models/player/urban.mdl" )
self.Entity:PhysicsInit( SOLID_VPHYSICS )     
self.Entity:SetMoveType( MOVETYPE_VPHYSICS )   
self.Entity:SetSolid( SOLID_BBOX ) 
self.Entity:DrawShadow(false)
self.Entity:SetUseType(SIMPLE_USE)
local phys = self.Entity:GetPhysicsObject()
if (phys:IsValid()) then
phys:EnableMotion(false)
phys:Wake()
end
end


function ENT:Use(client, ent)
if client:Team() == FACTION_CITIZEN then
    self:SetPlayername(client)
net.Start("open_usrecruitmenu")
net.WriteEntity(self)
net.Send(client)     
end

end


function recruitment(client)
local entity = net.ReadEntity()

local getplayer = entity:GetPlayername()
getplayer:SetWhitelisted(FACTION_USMIL, true)
local getchar = getplayer:GetCharacter()
local getcharname = getchar:GetName()
getplayer:SetPos( Vector(12474.137695, -6783.247070, -447.968750))
getplayer:Notify("You have been sent to basic training.")
getchar:SetFaction(FACTION_USMIL)
getchar:SetName("PVT "..getcharname)
end
net.Receive("recruitedfunction", recruitment)













	




















