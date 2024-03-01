include("shared.lua")

function ENT:Draw()
self:DrawModel()
end
  
function ENT:OnPopulateEntityInfo(container)
		local text = container:AddRow("name")
		text:SetImportant()
		text:SetText("US Military Recruiter")
		text:SizeToContents()
	end



local function Recruitmentmenu()
local recruitee = net.ReadEntity()
local faded_black = Color(246,238,227)
local Recruiterframe = vgui.Create("DFrame") 
Recruiterframe:SetPos((ScrW() / 2) - 350, (ScrH() / 2) - 200)
Recruiterframe:SetSize(500, 130)
Recruiterframe:SetTitle("") 
Recruiterframe:MakePopup()
Recruiterframe:SetBackgroundBlur(true)
Recruiterframe.Paint = function(self, w, h)

    draw.RoundedBox(2, 0, 0, w, h, faded_black)

    draw.SimpleText("US Army Recruitment Form", "Font", 250, 5, color_black, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
     draw.SimpleText("Once you submit your signature you will be sent to basic training.", "Font", 250, 60, color_black, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end

  local TextEntryPH = vgui.Create("DTextEntry", Recruiterframe)
    TextEntryPH:SetPos(45, 80)
    TextEntryPH:SetSize(400, 26)
    TextEntryPH:SetPlaceholderText("Sign Here:................")
    TextEntryPH.OnEnter = function(self)
        Recruiterframe:Close()
        ply:ScreenFade( SCREENFADE.IN, Color( 0, 0, 0, 255 ), 10, 1 )
        net.Start("recruitedfunction")
        net.WriteEntity(recruitee)
            net.SendToServer()  
    end


end


 

net.Receive("open_usrecruitmenu", Recruitmentmenu)






















