include("shared.lua")

function ENT:Draw()

    self:DrawModel()



net.Receive( "policegui", function()



local frame = vgui.Create("DFrame")
frame:SetSize(ScrW() * 0.5, ScrH() * 0.5)
frame:SetTitle("")
frame:Center()
frame:MakePopup()
local html = vgui.Create("DHTML", frame)
html:Dock(FILL)
html:OpenURL("https://sites.google.com/view/ccnetworkspd/home")





end)



end





















