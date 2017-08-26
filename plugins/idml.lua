function run(msg, matches) 
if matches[1] == 'ايدي ملصق' then 
local text1 = ""..msg.from.id 
local url = "http://2wap.org/usf/text_sm_gen/sm_gen.php?text="..text1 
local file = download_to_file(url,'love.webp') 
send_document(get_receiver(msg), file, rmtmp_cb, cb_extra) 
end 
if matches[1] == 'اسمي ملصق' then 
local text1 = ""..msg.from.username 
local url = "http://2wap.org/usf/text_sm_gen/sm_gen.php?text="..text1 
local file = download_to_file(url,'love.webp') 
send_document(get_receiver(msg), file, rmtmp_cb, cb_extra) 
end 
end 
return { 
patterns = { 
"^(ايدي ملصق)$", 
"^(معرفي)$", 

}, 
run = run 
} 
