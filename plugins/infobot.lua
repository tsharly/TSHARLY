
do 

local function run(msg, matches) 
  if matches[1] == 'bot' then 
    if is_sudo(msg) then 
    send_document(get_receiver(msg), "./data/me/version.webp", ok_cb, false) 
      return "B O T N O V A R+\n---------------------------------------------\n|آلَبہؤُتہ يہعہمہلَ بہسہرعہهہ فآئقهہ فيہ آلَمہجہمہؤُعہآتہֆᵛ͢ᵎᵖ﴾☻ ال10k
      |\n\n>تابہٰٰــع  قن͒ہاٰٰٰ̲ھ السٰہورٰٰٖسہ
      @DEV_NOVAR \n---------------------------------------------\n تـواصـل المــْْْـــْْْطورين : [@Profilei_ibot | @TAHAJ20_BOT]\n---------------------------------------------\n #ٵلمــৡีี๋͜͡ـ๋͜͜͜͡ــطورين :\n1 DEV[@N0VAR]\n2 > 
       DEV[@TAHAJ20]\n---------------------------------------------\n> Channel : https://telegram.meDEV_NOVAR" 
    elseif is_admin1(msg) then 
    send_document(get_receiver(msg), "./data/me/admin.webp", ok_cb, false) 
      return "You're Admin" 
    elseif is_owner(msg) then 
    send_document(get_receiver(msg), "./data/me/owner.webp", ok_cb, false) 
      return "You're Owner" 
    elseif is_momod(msg) then 
    send_document(get_receiver(msg), "./data/me/mod.webp", ok_cb, false) 
      return "You're Moderator" 
    else 
    send_document(get_receiver(msg), "./data/me/mmbr.webp", ok_cb, false) 
      return "You're Just member :(" 
    end 
  end 
end 

return { 
  patterns = { 
    "^[#!/]([Bb]ot)$", 
    "^([Bb]ot)$" 
    }, 
  run = run 
} 
end 

