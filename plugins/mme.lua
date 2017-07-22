do 

local function run(msg, matches) 
  if matches[1] == 'me' then 
    if is_sudo(msg) then 
    send_document(get_receiver(msg), "/root/robot/sudo.webp", ok_cb, false) 
      return "∬💛✨ֆاَٰنٍٰتّٰ∬❖🌞🎶﴾ مٍٰطَُِوٍّرِٰֆ 💸😾⋮ هَٰہۧاَٰذَْاَٰ اَٰلْٰبٌِٰوٍّتّٰ" 
    elseif is_admin(msg) then 
    send_document(get_receiver(msg), "/root/robot/admin.webp", ok_cb, false) 
      return "" 
    elseif is_owner(msg) then 
    send_document(get_receiver(msg), "/root/robot/owner.webp", ok_cb, false) 
      return "آنَِٰہٰتَہَٰ♯⋮ֆ🗡🦁 مٰ̲ہديِٰہر |🐙🐚ֆ   ف͒ہٰٰيِٰہ آلمٰ̲ہجْۧمٰ̲ہوِ؏ۤـہٰٰٰ̲ھہ⋮❊🐨🌈﴾" 
    elseif is_momod(msg) then 
    send_document(get_receiver(msg), "/root/robot/mod.webp", ok_cb, false) 
      return "rاَٰنٍٰتّٰ اَٰدِٰمٍٰنٍٰ∬💛✨ֆ فِٰيَٰ اَٰلْٰبٌِٰوٍّتّٰ ᵛ͢ᵎᵖ📯💛﴾⌁" 
    else 
    send_document(get_receiver(msg), "/root/robot/mmbr.webp", ok_cb, false) 
      return "ٰ☬✨🛡⇝اَٰنٍٰتّٰ مٍٰجًِّرِٰد❊😼🎶ֆِٰ عٍِّضوٍّ║♚✨🐝﴾ فِٰيَٰ اَٰلْٰمٍٰجًِّمٍٰوٍّعٍِّهَٰہۧ⁵⁶🗺🦅“♖" 
    end 
  end 
end 

return { 
  patterns = { 
    "^[!/]([Mm]e)$", 
    "^([Mm]e)$", 
    "^(مي)$", 
    }, 
  run = run 
} 
end 
