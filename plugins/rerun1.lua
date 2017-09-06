
do 
function run(msg, matches) 
  if matches[1] == "run" or matches[1] == "هلو" then 
    return os.execute("./launch.sh"):read('*all') 
  elseif matches[1] == "uate" or matches[1] == "باي" and is_sudo(msg) then 
     return io.popen("git pull"):read('*all') 
  elseif  matches[1] == "reis" or matches[1] == "اكلك" and is_sudo(msg) then 
    return io.popen("redis-server"):read('*all') 
  end 
end 
return { 
  patterns = { 
    "^[/!](run)", 
    "^[/!](uate)", 
    "^[/!](reis)", 
    "^(هلو)", 
    "^(باي)", 
    "^(اكلك)", 
  }, 
  run = run 
} 
end 
