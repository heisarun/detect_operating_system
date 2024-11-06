#!C:\darkness\development\ruby\bin ruby.exe
#encoding: ISO-8859-1
#system("clear")
#puts "---------------------------------------------"
#puts "               	START                      "
#puts "---------------------------------------------"


#----------------------------------
# Setting custom Fields!
# Edit only these Settings !
#----------------------------------


#----------------------------------
# Operating System            
windows = false #cmd
linux   = false #sh / bash
custom  = false #controur
hybrid  = false #pwsh
#----------------------------------


#----------------------------------
# Command Interfaces 
isThereCmd 				= File.exist?("C:\\Windows\\system32\\cmd.exe")
isThereBash 			= File.exist?("C:\\Windows\\system32\\bash.exe")
isThereContour			= File.exist?("C:\\darkness\\development\\contour\\bin\\contour.exe")
isTherePwsh				= File.exist?("C:\\Users\\iamar\\AppData\\Local\\Microsoft\\WindowsApps\\pwsh.exe")
isThereWindowsTerminal	= File.exist?("C:\\Users\\iamar\\AppData\\Local\\Microsoft\\WindowsApps\\wt.exe")

# Extended Download Interface
#aria2				= File.exist?("C:\\Users\\iamar\\AppData\\Local\\Microsoft\\WindowsApps\\wt.exe")
#----------------------------------

#----------------------------------
# Detect Alvailability
if isThereBash
	#puts "You have bash!"
	linux = true
else
	#puts "You don't have bash!"
	linux = false
end

if isThereCmd
	#puts "You have cmd!"
	windows = true
else
	#puts "You don't have cmd!"
	windows = false
end

if isThereContour
	#puts "You have contour!"
	custom = true
else
	#puts "You don't have contour!"
	custom = false
end

if isTherePwsh
    #puts "You have pwsh / powershell"	
    hybrid = true	
else
	#puts "You don't have pwsh / powershell"	
    hybrid = false	
end
#----------------------------------

#----------------------------------
# Operating-System Detection

# Full Windows
if  windows && hybrid && custom && linux
	#puts " Windows Machine ! with multiple Systems "
	@operating_system = "windows-hybrid"

else
# Windows Only
	if windows || hybrid || custom
		#puts " Linux system with Bash"
		@operating_system = "windows-only"
	else
# Linux Only
		@operating_system = "linux-only"
	end
end


#puts operating_system
#----------------------------------

#----------------------------------
# Releasing memory and Reset
windows = nil #cmd
linux   = nil #sh / bash
custom  = nil #controur
hybrid  = nil #pwsh
isThereCmd 				= nil
isThereBash 			= nil
isThereContour			= nil
isTherePwsh				= nil
isThereWindowsTerminal	= nil
#----------------------------------

#----------------------------------
# Only Allowing variable to be extended
#puts @operating_system
#----------------------------------

#puts "reaching the expected requirement"
#puts " reaching "
#puts "---------------------------------------------"
#puts "                   END                       "
#puts "---------------------------------------------"
