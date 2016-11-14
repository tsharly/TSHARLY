--[[ تم التعريب  BY faeder 
BY @xXxDev_iqxXx
 CH > @Dev_faed
--]]
do
    
local function mohammedboss(msg,matches)
    if matches[1] == "chat_add_user"  then 
      return "<b>اهلا وسهلا كبد حياتي 😻💋</b>\n".."<b>اسمك يعمري 🙈</b> :- "..msg.action.user.print_name.."\n".."<b>ايدك حبيبي 💋</b> :- "..msg.from.id.."\n".."<b>معرفك يالغالي 😘</b> :- @"..(msg.action.user.username or "....... " ).."\n".."<b>اسم المجموعه 🕵</b> :- "..msg.to.title.."\n".."<b>ايدي المجموعه 🙁💋</b> :- "..msg.to.id.."\n"

    elseif matches[1] == "chat_add_user_link" then
      return "<b>Hi Welcome Group</b>\n".."<b>Name</b> :- "..msg.action.user.print_name.."\n".."<b>your ID</b> :- "..msg.from.id.."\n".."<b>UserName</b> :- @"..(msg.action.user.username or "....... " ).."\n".."<b>Name Group</b> :- "..msg.to.title.."\n".."<b>ID Group</b> :- "..msg.to.id.."\n"

    end
    if matches[1] == "chat_del_user" then
        local text = 'الله وياك/ج 🌚🍃 '..msg.action.user.first_name..'\n' ..'معرفك : @'..(msg.action.user.username or "لا يوجد")..'\n' ..'الايدي : '..msg.action.user.id..'\n'
    return reply_msg(msg.id, text, ok_cb, false)
end
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",
        "^!!tgservice (chat_del_user)$"
       
    },
 run = mohammedboss,
}
end

--[[ 
    BY faeder 
BY @xXxDev_iqxXx
 CH > @Dev_faed
--]]
