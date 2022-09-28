for i in *.mp4
do
  if [ ! -f "${i%.*}.en.srt" ]; then
	autosub -S zh-CN -D zh-CN -o "${i%.*}.zh.srt" "$i"
	java j.mp4_empty_by_srt
  fi
done
for i in *.webm
do
  if [ ! -f "${i%.*}.zh.srt" ]; then
	autosub -S zh-CN -D zh-CN -o "${i%.*}.zh.srt" "$i"
	java j.mp4_empty_by_srt
  fi
done

for i in *.m4a
do
  if [ ! -f "${i%.*}.zh.srt" ]; then
	autosub -S zh-CN -D zh-CN -o "${i%.*}.zh.srt" "$i"
	java j.mp4_empty_by_srt
  fi
done

