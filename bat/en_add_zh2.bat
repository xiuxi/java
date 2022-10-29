rem call pdf_en_add_zh_loop.bat



@REM java j.en_add_zh

@REM cd youtube
@REM java j.name_tidy
@REM java j.end_rename ".srt.srt" ".srt"
@REM java j.srt_2_srt
@REM java j.srt_2_zh_en_txt
@REM cd zh_en_txt
@REM java j.en_add_zh
@REM rm *.done
@REM java j.en_add_zh_line
@REM rm *.done



@REM :loop
@REM java j.en_add_zh
@REM java j.gutenberg_org_txt_en_add_zh
@REM java j.sleep 2000
@REM goto loop

:loop
java j.en_add_zh
rm *.done
java j.en_add_zh_line
rm *.done
java j.sleep 2000
goto loop
