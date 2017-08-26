do 
local function taha(msg,matches) 
    if matches[1] == "chat_add_user"  then 
      return "|🎪|اهـــلاً وسهــلاً نــورت/ي😻المجموعـُُـُةة💋 \n".."|🎣| اسم المجموعـــة🍷 :: "..msg.to.title.."\n".." |🚀|ايدي المجموعـــة 🎩 :: "..msg.to.id.."\n".."|🚵|  اســم اضافــك❣️ ::"..(msg.from.first_name or " ").."\n".."|💡|معـــرفه❤️  :: @"..(msg.from.username or " ").."\n".."|🚇| معرفــك⛷ :: @"..(msg.action.user.username or "لايوجد 👨🏿‍💻" ).."\n".."|🛰| ايـــدي الضافـــك🎩 ::"..msg.from.id 

    elseif matches[1] == "chat_add_user_link" then 
      return "|⛳️|مرحبا بك في المجموعه 😻🎄\n".."|🌠| اسم الكروب 🌟 :: "..msg.to.title.."\n".."|🎌|ايدي الكروب :: "..msg.to.id.."\n".."|🎄| اسـم الضافك💡️ :: "..(msg.from.first_name or " ").."\n".."|⭐|معرف الضافك️ :: @"..(msg.from.username or " ").."\n".."|💥| معرفك :: @"..(msg.from.username or "لم يتم العثور " ).."\n".." |🕹|ايديك ::"..msg.from.id 

    end 
    if matches[1] == "chat_del_user" then 
    return "روح روح روح الله الله وياك الله الله وياك😻😂😂😂😂️"..msg.action.user.first_name 
end 
end 
return { 
    patterns = { 
        "^!!tgservice (chat_add_user)$", 
        "^!!tgservice (chat_add_user_link)$", 
        "^!!tgservice (chat_del_user)$" 
    }, 
 run = taha, 
} 
end 
