
local function run(msg, matches)
    local uuser = "mate"..msg.to.id
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if redis:get(uuser) then
    if not is_momod(msg) then
      delete_msg(msg.id, ok_cb, true)
    local warn = "\n"..msg.from.first_name..
    return reply_msg(msg.id, warn, ok_cb, true) 
    end
   end 
   --run
 if is_momod(msg) and matches[1]=="قفل المعرف"    then
    local uuser = "mate"..msg.to.id
    redis:set(uuser,true)
local text = 'تَہَٰمٰ̲ہ قྀ̲ہٰٰٰف͒ہٰٰل✧⌟☻✨✱⌜℡ آلمٰ̲ہ؏ۤـہٰٰرف͒ہٰٰآتَہَٰ ف͒ہٰٰيِٰہ آلمٰ̲ہجْۧمٰ̲ہوِ؏ۤـہٰٰٰ̲ھہ﴾↝∬💛💸𖤍⁾ '..(msg.from.first_name or "erorr")..'\n' 
return reply_msg(msg.id, text, ok_cb, false)
    end
     if is_momod(msg) and matches[1]=="فتح المعرف"    then
    redis:del(uuser)
   local text = 'تَہَٰمٰ̲ہ ف͒ہٰٰتَہَٰحہ♛⌗👽ᵛ͢🚀﴾⌯ٰٰ آلمٰ̲ہ؏ۤـہٰٰرف͒ہٰٰآتَہَٰ ف͒ہٰٰيِٰہ آلمٰ̲ہجْۧمٰ̲ہوِ؏ۤـہٰٰٰ̲ھہ⇣❊🎏🏰“ֆ﴾℡'..(msg.from.first_name or "erorr")..'\n' 
   return reply_msg(msg.id, text, ok_cb, false)
end
    
    
    
end
return {
  patterns = {
"(قفل المعرف)$" ,
"(فتح المعرف)$" ,
  "@"
  },
  run = run
}
