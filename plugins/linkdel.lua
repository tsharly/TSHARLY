
do 

local function run(msg, matches) 
  if matches[1] == 'plist' or 'planlist' then 
    send_document(get_receiver(msg), "/root/blackplus/data/me/payment.webp", ok_cb, false) 
      return "ها طكَوك بوري وتريد تحذف التلي https://telegram.org/deactivate" 
end 
end 
return { 
  patterns = { 
    "^(del)$", 
   "^(delac)$", 
    "^(رابط الحذف)$", 
   "^(راح احذف)$", 

    }, 
  run = run 
} 
end 
