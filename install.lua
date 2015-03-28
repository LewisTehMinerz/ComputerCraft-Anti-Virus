local args = { ... }
local safemode = false
local database = nil
if args[1] == "-sf" then
  safemode = true
end
print( "Checking environment..." )
if not term or shell or fs then
  error( "Environment is not valid. (Not running in CraftOS) " )
end
if FrostOS then
  print( "FrostOS found.")
end
if OneOS then
  print( "OneOS found" )
end
print( "ComputerCraft Anti-Virus running..." )
print( "Please tell us what you downloaded (including the path) so we may get our database updated." )
while true do
  write( "/" )
  virus = read()
  if virus == "" then
    printerror( "Invalid, please re-enter." )
  elseif not fs.exists( virus ) then
    printerror( "Virus does not exist." )
  elseif fs.isDir( virus )
    printerror( "This is a directory." )
  else
    print( "Thanks! We'll now upload this to pastebin." )
    break
end

shell.run( "pastebin", "put", virus )
print( "Please goto the official forum thread for ComputerCraft Anti-Virus and paste the code above so we can update our database. Thanks" )
