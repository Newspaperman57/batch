:gen
Setlocal EnableDelayedExpansion
Set _RNDLength=1
Set _Alphanumeric=12
Set _Str=%_Alphanumeric%987654321
:_LenLoop
IF NOT "%_Str:~18%"=="" SET _Str=%_Str:~9%& SET /A _Len+=9& GOTO :_LenLoop
SET _tmp=%_Str:~9,1%
SET /A _Len=_Len+_tmp
Set _count=0
SET nuldoor=
:_loop
Set /a _count+=1
SET _RND=%Random%
Set /A _RND=_RND%%%_Len%
SET nuldoor=!nuldoor!!_Alphanumeric:~%_RND%,1!
If !_count! lss %_RNDLength% goto _loop