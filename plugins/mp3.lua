
local function tomp3(msg, success, result) 
  local receiver = get_receiver(msg) 
  if success then 
    local file = 'mp3' 
    print('File downloaded to:', result) 
    os.rename(result, file) 
    print('File moved to:', file) 
    send_document(get_receiver(msg), file, ok_cb, false) 
   send_large_msg(receiver, '', ok_cb, false) 
    redis:del("audio:mp3") 
  else 
    print('Error downloading: '..msg.id) 
    send_large_msg(receiver, 'فشل .. اعد المحاوله', ok_cb, false) 
  end 
end 
local function run(msg,matches) 
    local receiver = get_receiver(msg) 
    local group = msg.to.id 
    if msg.media then 
       if msg.media.type == 'audio' and redis:get("audio:mp3") then 
        if redis:get("audio:mp3") == 'waiting' then 
          load_audio(msg.id, tomp3, msg) 
        end 
       end 
    end 
    if matches[1] == "mp3" or matches[1] == "تحويل صوت" then 
     redis:set("audio:mp3", "waiting") 
     return 'ارسـل الصـوت او اعـمـل توجـيه 🌝❤️' 
    end 
   if matches[1]:lower() == 'mp3' then 
   send_document(get_receiver(msg), text, ok_cb, false) 
end 
end 
return { 
  patterns = { 
 "^(mp3)$", 
 "^(تحويل صوت)$", 
 "%[(audio)%]", 
  }, 
  run = run, 
} 
