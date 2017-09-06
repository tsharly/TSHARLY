
local function run(msg, matches, callback, extra) 
local data = load_data(_config.moderation.data) 
local group_bye = data[tostring(msg.to.id)]['group_bye'] 
if matches[1] == 'dbye' or matches[1] == 'مسح التوديع' and not matches[2] and is_owner(msg) then 
   data[tostring(msg.to.id)]['group_bye'] = nil --delete bye 
        save_data(_config.moderation.data, data) 
        local text = 'تم حـذف التـوديع بـنجـاح 🌝❤️ '..(msg.from.first_name or "erorr")..'\n' 
return reply_msg(msg.id, text, ok_cb, false) 
end 
if not is_owner(msg) then 
    return     return 'للمـطوريـن فقـط 🌝❤️ | بعدك زغير ع هيج سوالف 🌝😹 ' 
	
end 
local rules = data[tostring(msg.to.id)]['rules'] 
if matches[1] == 'rules' and matches[2] and is_owner(msg) then 
    if data[tostring(msg.to.id)]['rules'] == nil then --when no rules found.... 
        return '' 
end 
data[tostring(msg.to.id)]['group_tbye'] = matches[2]..'\n\nGroup Rules :\n'..rules 
        save_data(_config.moderation.data, data) 
        local text = 'تم وضـع توديـع عـزيـزي 🌝❤️ '..(msg.from.first_name or "erorr")..'\n' 
return reply_msg(msg.id, text, ok_cb, false) 
end 
if not is_owner(msg) then 
    return 'للمـطوريـن فقـط 🌝❤️ | بعدك زغير ع هيج سوالف 🌝😹' 
end 
if matches[1] and is_owner(msg) then 
data[tostring(msg.to.id)]['group_bye'] = matches[1] 
        save_data(_config.moderation.data, data) 
        local text = 'تم وضـع الـتوديـع بنـجـاح 🌝❤️'..(msg.from.first_name or "erorr")..'\n' 
return reply_msg(msg.id, text, ok_cb, false) 
end 
if not is_owner(msg) then 
    return 'للمـطوريـن فقـط 🌝❤️ | بعدك زغير ع هيج سوالف 🌝😹' 
end 
end 
return { 
  patterns = { 
  "^[!#/]sbye (.*)$", 
  "^[!#/](dbye)$", 
  "^ضع التوديع (.*)$", 
  "^(مسح التوديع)$", 
  }, 
  run = run 
} 
