rem call voice_dotent_build.bat
rem d:
rem cd D:\gitHub\java_ubuntu_windows\c#_dotnet\vtt_en_zh_merge_txt_for_sound\voice

rem "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\MSBuild\Current\Bin\Roslyn\csc.exe" /target:module Program.cs 
rem call msbuild.bat
d:
cd "D:\gitHub\java_ubuntu_windows\c#_dotnet\vtt_en_zh_merge_txt_for_sound\voice"
call msbuild.bat
rem D:\gitHub\java_ubuntu_windows\c#_dotnet\vtt_en_zh_merge_txt_for_sound\voice\bin\Debug\voice.exe %1 
rem pause