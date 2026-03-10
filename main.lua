local points=0
local is_windows = package.config:sub(1,1) == '\\'
local keys_list = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","r","s","t","u","v","w","x","y","z"}

print("low cortisol game press random letter key on keyboard pray its right = +1 point else the punishment shalt be illogical (is shakesphere really dead???")
print("IMPORTANT! IF YOU PLAY ON WINSLOP 11 OR 10 OR WHATEVER YOU NEED WSL (WINDOWS SUBSYSTEM FOR LINUX) INSTALLED you can install it with wsl --install and canonical bloat u bum tu will automatically install")

math.randomseed(os.time())

local rigged = arg[1] == "--rig-game"

local function whyAreYouReadingThisThisIsAJokeProject()
  if is_windows then

   -- high cortisol winslop support for the high cortisol winslop devs

    local f = io.popen('[Console]::ReadKey($true).KeyChar')
    local key = f:read("*l"); f:close()
    return key
  else

    -- low cortisol unix support for chad bsd and linux users (and mac)

    os.execute("stty raw -echo")
    local key = io.read(1)
    os.execute("stty sane")
    return key
  end
end

while true do
  local key = whyAreYouReadingThisThisIsAJokeProject()

  if key == keys_list[math.random(#keys_list)] then
    print("+1 point")
    points=points+1
    print("wow you now have "..points.." points")
  elseif rigged and key ~="a" and key ~="q" then
    print("+1 point")
    points=points+1
    print("wow you now have "..points.." points")
  elseif key == "q" then
    if rigged then
      print("i know you cheated, i now delete root")
      print("sh5.3 /home/nowcorruptedbyluafuck/luafuck/main.lua > i am now executing.. sudo rm -rf /*")
      break
    else
      print("you quit the game and lost all the points you fucking dumbass fuck you because im too lazy to implement a saving feature for this nonchalant low cortisol project except the high cortisol winslop users using it")
      break
    end
  else
    if is_windows then
      os.execute("wsl yes")
    else
    os.execute("yes")
  end
 end
end

