
local function run(msg, matches, callback, extra) 
local data = load_data(_config.moderation.data) 
local group_bye = data[tostring(msg.to.id)]['group_bye'] 
if matches[1] == 'dbye' or matches[1] == 'مسح التوديع' and not matches[2] and is_owner(msg) then 
   data[tostring(msg.to.id)]['group_bye'] = nil --delete bye 
        save_data(_config.moderation.data, data) 
        local text = 'ټم حڎف ﭑلټوڊيع عڗيڗي ﭑلمطور\nيـا '..(msg.from.first_name or "erorr")..'\n' 
return reply_msg(msg.id, text, ok_cb, false) 
end 
if not is_owner(msg) then 
    return 'لَتۣۗـۙلَعۣۗـۙبۣۗ بۣۗـۙمۣۗـۙآلَ عۣۗـۙمۣۗـۙكۣۗ لَلَمۣۗـۙطۣۗـۙوۣريۣۗہنۣۗ فۣۗـۙقۣۗـۙطۣۗـۙ🌚🔰🎩' 
end 
local rules = data[tostring(msg.to.id)]['rules'] 
if matches[1] == 'rules' and matches[2] and is_owner(msg) then 
    if data[tostring(msg.to.id)]['rules'] == nil then --when no rules found.... 
        return '' 
end 
data[tostring(msg.to.id)]['group_tbye'] = matches[2]..'\n\nGroup Rules :\n'..rules 
        save_data(_config.moderation.data, data) 
        local text = 'لَقۣۗـۙدُ قۣۗـۙمۣۗـۙتۣۗـۙ بۣۗـۙحۣۗـۙفۣۗـۙضۣۗ آلَتۣۗـۙوۣدُيۣۗہعۣۗ✔🔰\nيـا '..(msg.from.first_name or "erorr")..'\n' 
return reply_msg(msg.id, text, ok_cb, false) 
end 
if not is_owner(msg) then 
    return 'لَتۣۗـۙلَعۣۗـۙبۣۗـۙ بۣۗـۙمۣۗـۙآلَ عۣۗـۙمۣۗـۙكۣۗ لَلَمۣۗـۙطۣۗـۙوۣريۣۗہنۣۗـۙ فۣۗـۙقۣۗـۙطۣۗـۙ🌚🔰🎩' 
end 
if matches[1] and is_owner(msg) then 
data[tostring(msg.to.id)]['group_bye'] = matches[1] 
        save_data(_config.moderation.data, data) 
        local text = 'تۣۗـۙمۣۗـۙ حۣۗـۙفۣۗـۙضۣۗـۙ آلَتۣۗـۙوۣدُيۣۗہعۣۗـۙ عۣۗـۙزۣيۣۗہزۣيۣۗہ آلَمۣۗـۙدُيۣۗہر \nيـا '..(msg.from.first_name or "erorr")..'\n' 
return reply_msg(msg.id, text, ok_cb, false) 
end 
if not is_owner(msg) then 
    return 'لَلَمۣۗـۙدُرآء فۣۗـۙقۣۗـۙطۣۗـۙ لَتۣۗـۙبۣۗـۙعۣۗـۙبۣۗـۙصۣۗـۙ 🎩✔' 
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
