split "shangGuiGu_srt_zh.txt" all_1_ -l 10000 -a 8
java j.google_translate_zh_2_en_large_file
java j.chinese_english_sql
"D:\Program Files\PostgreSQL\14\bin\psql.exe" -U postgres

\i fileName.sql





-------------------------------------
第一步
split "en.txt" all_1_ -l 10000 -a 8

第二步

call gbk.bat
:loop
java j.large_txt_file_split_google_en_2_zh

goto loop

第三步

java j.english_chinese_sql
"D:\Program Files\PostgreSQL\14\bin\psql.exe" -U postgres

\i fileName.sql







