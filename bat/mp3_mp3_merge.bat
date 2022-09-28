cd D:\derek banas\c#\C# Tutorial 16 Threads
ffmpeg -i "C# Tutorial 18 Serialization.mp4" "C# Tutorial 18 Serialization.mp3"

java j.mp3_cut_by_srt_sox "C# Tutorial 18 Serialization.srt"

sox_cut_from_mp3.bat
balcon_generate_wav.bat

wav_2_mp3.bat

// 没有使用 sox_format.bat

mylist_zh_en.bat

























rem https://stackoverflow.com/questions/55006473/how-can-i-concatenate-two-very-different-mp3-filesdiff-bitrate-channels-sampl

ffmpeg -i zh.mp3 -i en.mp3 -filter_complex "[0:a]atrim=end=10,aformat=sample_rates=44100:channel_layouts=stereo,asetpts=N/SR/TB[begin];[1:a]aformat=sample_rates=44100:channel_layouts=stereo[middle];[0:a]atrim=start=10,aformat=sample_rates=44100:channel_layouts=stereo,asetpts=N/SR/TB[end];[begin][middle][end]concat=n=3:v=0:a=1[a]" -map "[a]" output.mp3

ffmpeg -i en.mp3 -i zh.mp3 -filter_complex "[0:a]atrim=end=10,aformat=sample_rates=44100:channel_layouts=stereo,asetpts=N/SR/TB[begin];[1:a]aformat=sample_rates=44100:channel_layouts=stereo[middle];[0:a]atrim=start=10,aformat=sample_rates=44100:channel_layouts=stereo,asetpts=N/SR/TB[end];[begin][middle][end]concat=n=3:v=0:a=1[a]" -map "[a]" output2.mp3

ffmpeg -i *.mp3 -filter_complex "[0:a]atrim=end=10,aformat=sample_rates=44100:channel_layouts=stereo,asetpts=N/SR/TB[begin];[1:a]aformat=sample_rates=44100:channel_layouts=stereo[middle];[0:a]atrim=start=10,aformat=sample_rates=44100:channel_layouts=stereo,asetpts=N/SR/TB[end];[begin][middle][end]concat=n=3:v=0:a=1[a]" -map "[a]" output2.mp3
