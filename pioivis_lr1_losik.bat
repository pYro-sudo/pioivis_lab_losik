@echo "first.txt">C:\Users\yaroslave\Desktop\first.txt
@echo "second.txt">C:\Users\yaroslave\Desktop\second.txt
set /a _rand=%random%
set /a i=0
:loop
if %i%==3 goto end
echo %random% >> C:\Users\yaroslave\Desktop\first.txt
set /a i=i+1
goto loop
:end
@findstr /l "23" first.txt>> second.txt
@sort /reverse second.txt > second.txt
@start first.txt
@start second.txt
@pause
