<#
.SYNOPSIS 
Export-Icon exports high-quality icons stored within .DLL and .EXE files.  
 
.DESCRIPTION 
Export-Icon can export to a number of formats, including 
ico, bmp, png, jpg, gif, emf, exif, icon, tiff, and wmf. In addition, it can also export to a different size. 
 
This function quickly exports *all* icons stored within the resource file. 
 
.PARAMETER Path 
Path to the .dll or .exe 
 
.PARAMETER Directory 
Directory where the exports should be stored. If no directory is specified, all icons will be exported to the TEMP directory.  
 
.PARAMETER Size 
This specifies the pixel size of the exported icons. All icons will be squares, so if you want a 16x16 export, it would be -Size 16.  
 
Valid sizes are 8, 16, 24, 32, 48, 64, 96, and 128. The default is 32.  
 
.PARAMETER Type 
This is the type of file you would like to export to. The default is .ico 
 
Valid types are ico, bmp, png, jpg, gif, emf, exif, icon, tiff, and wmf. The default is ico. 
 
.NOTES 
Author: Chrissy LeMaire 
Requires: PowerShell 3.0 
 
.LINK  
https://gallery.technet.microsoft.com/scriptcenter/Export-Icon-from-DLL-and-9d309047 
 
.EXAMPLE    
Export-Icon C:\windows\system32\imageres.dll 
 
Exports all icons stored witin C:\windows\system32\imageres.dll to $env:temp\icons. Creates directory if required and automatically opens output directory. 
 
.EXAMPLE    
Export-Icon -Path "C:\Program Files (x86)\VMware\Infrastructure\Virtual Infrastructure Client\Launcher\VpxClient.exe" -Size 64 -Type png -Directory C:\temp 
 
Exports the high-quality icon within VpxClient.exe to a transparent png in C:\temp\. Resizes the exported image to 64x64. Creates directory if required  
and automatically opens output directory. 
 
 
#>
