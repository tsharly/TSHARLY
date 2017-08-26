
do 

local function run(msg, matches) 
  if matches[1] == 'موقعي' then 
    if is_sudo(msg) then 
    send_document(get_receiver(msg), "./files/me/sudo.webp", ok_cb, false) 
      return "∬💛✨ֆاَٰنٍٰتّٰ∬❖🌞🎶﴾ مٍٰطَُِوٍّرِٰֆ 💸😾⋮ هَٰہۧاَٰذَْاَٰ اَٰلْٰبٌِٰوٍّتّٰ" 
    elseif is_admin1(msg) then 
    send_document(get_receiver(msg), "./files/me/support.webp", ok_cb, false) 
      return "║♚💨🌛⋮ֆانت اداري║🐌🕸✤ֆ في المجموعه∬🐛🍎ֆ" 
    elseif is_owner(msg) then 
    send_document(get_receiver(msg), "./files/me/owner.webp", ok_cb, false) 
      return "آنَِٰہٰتَہَٰ♯⋮ֆ🗡🦁 مٰ̲ہديِٰہر |🐙🐚ֆ ف͒ہٰٰيِٰہ آلمٰ̲ہجْۧمٰ̲ہوِ؏ۤـہٰٰٰ̲ھہ⋮❊🐨🌈﴾" 
    elseif is_momod(msg) then 
    send_document(get_receiver(msg), "./files/me/moderator.webp", ok_cb, false) 
      return "rاَٰنٍٰتّٰ اَٰدِٰمٍٰنٍٰ∬💛✨ֆ فِٰيَٰ اَٰلْٰبٌِٰوٍّتّٰ” ᵛ͢ᵎᵖ📯💛﴾⌁" 
    else 
    send_document(get_receiver(msg), "./files/me/member.webp", ok_cb, false) 
      return "ٰ☬✨🛡⇝﴾”اَٰنٍٰتّٰ مٍٰجًِّرِٰد❊😼🎶ֆِٰ عٍِّضوٍّ║♚✨🐝﴾ فِٰيَٰ اَٰلْٰمٍٰجًِّمٍٰوٍّعٍِّهَٰہۧ⁵⁶🗺🦅“♖#’" 
    end 
  end 
end 

return { 
  patterns = { 
    "^(موقعي)$", 
    "^(م(me)$" 
    }, 
  run = run 
} 
end 
