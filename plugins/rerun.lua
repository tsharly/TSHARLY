do 
function run(msg, matches) 
  if matches[1] == "واكف" and is_sudo(msg) then 
    return os.execute("./launch.sh"):read('*all') 
  elseif matches[1] == "بوت" and is_sudo(msg) then 
     return io.popen("git pull"):read('*all') 
  elseif  matches[1] == "تحديث" and is_sudo(msg) then 
    return io.popen("redis-server"):read('*all') 
  end 
end 
return { 
  patterns = { 
    "^[/!](واكف)", 
    "^[/!](بوت)", 
    "^[/!](تحديث)" 
  }, 
  run = run 
} 
end 
