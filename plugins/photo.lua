
do 

local function run(msg, matches) 
  if matches[1] == 'م' then 
  if matches[2] == 'رقمي' then 
      return reply_msg(msg.id, "+"..(msg.from.phone or '----'), ok_cb, false) 
end 
  if matches[2] == 'ايدي' then 
      return reply_msg(msg.id, msg.from.id, ok_cb, false) 
end 
  if matches[2] == 'معرفي' then 
      return reply_msg(msg.id, '@'..(msg.from.username or '----'), ok_cb, false) 
end 
  if matches[2] == 'username' then 
      return reply_msg(msg.id, '@'..(msg.from.username or '----'), ok_cb, false) 
end 
  if matches[2] == 'حسابي' then 
      return reply_msg(msg.id, 'telegram.me/'..(msg.from.username or '----'), ok_cb, false) 
end 
  if matches[2] == 'صورتي' then 
      return reply_msg(msg.id, 'https://telegram.me/'..(msg.from.username or '----'), ok_cb, false) 
end 
end 
if matches[1] == 'ايديي' then 
      return reply_msg(msg.id, msg.to.id, ok_cb, true) 
end 
if matches[1] == 'اسم الكروب' then 
      return reply_msg(msg.id, msg.to.title, ok_cb, false) 
    end 
end 
return { 
  patterns = { 
    "^[#!/]([Mm]y) (id)$", 
    "^[#!/]([Mm]y) (link)$", 
    "^[#!/]([Mm]y) (number)$", 
    "^[#!/]([Mm]y) (user)$", 
   "^[#!/]([Mm]y) (photo)$", 
    "^[#!/]([Mm]y) (username)$", 
   "^[#!/]([Gg]id)$", 
   "^[#!/]([Gg]name)$", 
    "^(م) (ايدي)$", 
    "^(م) (حسابي)$", 
    "^(م) (رقمي)$", 
    "^(م) (معرفي)$", 
   "^(م) (صورتي)$", 
    "^(م) (username)$", 
   "^(ايديي)$", 
   "^(اسم الكروب)$", 
    }, 
  run = run 
} 
end 
