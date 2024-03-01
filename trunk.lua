local PLUGIN = PLUGIN or {}
 	 strechout = false
         delay = 6

PLUGIN.name = "Trunk"
PLUGIN.author = "Cosmo1297"
PLUGIN.description = "Adds vehicle equipment menus."


properties.Add("trunks", {
	MenuLabel = "#Strech hose line",
	Order = 1,
	MenuIcon = "icon16/lorry.png",


	Filter = function(self, entity, client)
		if (entity:IsVehicle() && entity:GetModel() == "models/sentry/seagrave_ladder.mdl") then return true end
	end,

Action = function( self, ent ) -- The action to perform upon using the property ( Clientside )

		self:MsgStart()
			net.WriteEntity( ent )
		self:MsgEnd()

	end,
	Receive = function( self, length, ply, client ) -- The action to perform upon using the property ( Serverside )
		local ent = net.ReadEntity()
        
	
       if ply:HasWeapon( "weapon_firehose" ) then
       	ply:Say("/me Rolls hose into Ladder 10.")
       	ply:StripWeapon( "weapon_firehose" )
else
	ply:Say("/me Streches hose line from Ladder 10.")
    ply:Give("weapon_firehose")
end	
		end 
} )

properties.Add("trunks1", {
	MenuLabel = "#Strech hose line",
	Order = 1,
	MenuIcon = "icon16/lorry.png",


	Filter = function(self, entity, client)
 local char = client:GetCharacter()
  local fac =  char:GetFaction()

if fac == 2 then
	if (entity:IsVehicle() && entity:GetModel() == "models/sentry/arrowxt.mdl") then return true end

else
	end
	end,

Action = function( self, ent ) -- The action to perform upon using the property ( Clientside )

		self:MsgStart()
			net.WriteEntity( ent )
		self:MsgEnd()

	end,
	Receive = function( self, length, ply ) -- The action to perform upon using the property ( Serverside )
		local ent = net.ReadEntity()



       if ply:HasWeapon( "weapon_firehose" ) then
       	ply:Say("/me Rolls hose into Engine 23.")
       	ply:StripWeapon( "weapon_firehose" )
else
	ply:Say("/me Streches hoseline from Engine 23.")
    ply:Give("weapon_firehose")
end
		
	end 
} )

properties.Add("trunks2", {
	MenuLabel = "#Strech hose line",
	Order = 1,
	MenuIcon = "icon16/lorry.png",


	Filter = function(self, entity, client)
 local char = client:GetCharacter()
  local fac =  char:GetFaction()

if fac == 2 then

		if (entity:IsVehicle() && entity:GetModel() == "models/sentry/lance.mdl") then return true end
	else end
	end,

Action = function( self, ent ) -- The action to perform upon using the property ( Clientside )

		self:MsgStart()
			net.WriteEntity( ent )
		self:MsgEnd()

	end,
	Receive = function( self, length, ply ) -- The action to perform upon using the property ( Serverside )
		local ent = net.ReadEntity()



       if ply:HasWeapon( "weapon_firehose" ) then
       	ply:Say("/me Puts Tools Away into Pump 6.")
       	ply:StripWeapon( "weapon_firehose" )
else
	ply:Say("/me Streches hose line from Pump 6")
    ply:Give("weapon_firehose")
end
		
	end 
} )

properties.Add("trunks3", {
	MenuLabel = "#Open Trunk",
	Order = 1,
	MenuIcon = "icon16/lorry.png",


	Filter = function(self, entity, client)
		
 local char = client:GetCharacter()
  local fac =  char:GetFaction()

if fac == 2 then
		if (entity:IsVehicle() && entity:GetModel() == "models/sentry/21tahoe.mdl") then return true end
	else
	end
	end,

Action = function( self, ent ) -- The action to perform upon using the property ( Clientside )

		self:MsgStart()
			net.WriteEntity( ent )
		self:MsgEnd()

	end,
	Receive = function( self, length, ply ) -- The action to perform upon using the property ( Serverside )
		local ent = net.ReadEntity()

		ply:Say("/me Opens Tahoe's trunk.")


       if ply:HasWeapon( "weapon_extinguisher" ) then
       	ply:Say("/me Puts Tools Away into Tahoe 21.")
       	ply:StripWeapon( "weapon_extinguisher" )
else
	ply:Say("/me Grabs Tools from Tahoe 21.")
    ply:Give("weapon_extinguisher")
end
		
	end 
} )

properties.Add("trunks4", {
	MenuLabel = "#Open Trunk",
	Order = 1,
	MenuIcon = "icon16/lorry.png",


	Filter = function(self, entity, client)
		 local char = client:GetCharacter()
  local fac =  char:GetFaction()

if fac == 2 then

		if (entity:IsVehicle() && entity:GetModel() == "models/smcars/ford_police_responder.mdl") then return true end
	else end
	end,

Action = function( self, ent ) -- The action to perform upon using the property ( Clientside )

		self:MsgStart()
			net.WriteEntity( ent )
		self:MsgEnd()

	end,
	Receive = function( self, length, ply ) -- The action to perform upon using the property ( Serverside )
		local ent = net.ReadEntity()

		ply:Say("/me Opens Ford 150's trunk.")


       if ply:HasWeapon( "weapon_extinguisher" ) then
       	ply:Say("/me Puts Tools Away into Ford 150.")
       	ply:StripWeapon( "weapon_extinguisher" )
else
	ply:Say("/me Grabs Tools from Ford 150.")
    ply:Give("weapon_extinguisher")
end
		
	end 
} )




properties.Add("trunks6", {
	MenuLabel = "#Open Side Trunk",
	Order = 1,
	MenuIcon = "icon16/lorry.png",


	Filter = function(self, entity, client)
	 local char = client:GetCharacter()
  local fac =  char:GetFaction()

if fac == 2 then

		if (entity:IsVehicle() && entity:GetModel() == "models/sentry/f550_ambu.mdl") then return true end
	else
	end
	end,

Action = function( self, ent ) -- The action to perform upon using the property ( Clientside )

		self:MsgStart()
			net.WriteEntity( ent )
		self:MsgEnd()

	end,
	Receive = function( self, length, ply ) -- The action to perform upon using the property ( Serverside )
		local ent = net.ReadEntity()

		ply:Say("/me Opens ambulance side trunk.")


       if ply:HasWeapon( "weapon_extinguisher" ) then
       	ply:Say("/me Puts Tools Away into ambulance's side trunk.")
       	ply:StripWeapon( "weapon_extinguisher" )
else
	ply:Say("/me Grabs Tools from ambulance's side trunk.")
    ply:Give("weapon_extinguisher")
end
		
	end 
} )
 
  isplaying = false
properties.Add("trunks7", {
	MenuLabel = "#Car Radio",
	Order = 1,
	MenuIcon = "icon16/cd.png",


	Filter = function(self, entity, client)
	

		if (entity:IsVehicle()) then return true end
	
	
	end,

Action = function( self, ent ) -- The action to perform upon using the property ( Clientside )

		self:MsgStart()
			net.WriteEntity( ent )
		self:MsgEnd()

	end,
	Receive = function( self, length, ply ) -- The action to perform upon using the property ( Serverside )
		local ent = net.ReadEntity()
          
       if isplaying == true then
        ply:Notify("Radio Off")
        ent:StopSound("stairway.mp3")
        isplaying = false
    else
    	 ply:Notify("Playing On")
        print(isplaying)
           isplaying = true
           ent:EmitSound("stairway.mp3")
		end



		
	end 
} )