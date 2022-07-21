#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;lastPressed := ""

a::
e:: ; A and E use the same inputs, since they're similar.
Send, ا
lastPressed := ""
return

+a:: ; Switches between ةأإ
+e::
if (lastPressed = "-a"){
	Send, {BackSpace}ة
	lastPressed := "+a"
}
else if (lastPressed = "+a"){
	Send, {Backspace}أ
	lastPressed := "+aa"
}
else if (lastPressed = "+aa"){
	Send, {BackSpace}ى
	lastPressed := "+aaa"
}
else if (lastPressed = "+aaa"){
	Send, {Backspace}إ
	lastPressed := "-a"
}
else{ ; Default
	Send, ة
	lastPressed := "+a"
}
return

b::
Send, ب
lastPressed := ""
return

c::
Send, ك
lastPressed := ""
return

d::
Send, د
lastPressed := ""
return

+d::
Send, ض
lastPressed := ""
return

f::
Send, ف
lastPressed := ""
return

g::
Send, ج
lastPressed := ""
return

+g::
Send, چ
lastPressed := ""
return

h::
if (lastPressed = "s"){
	Send, {BackSpace}ش
	lastPressed := "sh"
}
else if (lastPressed = "t"){
	Send, {BackSpace}ث
	lastPressed := "th"
}
else{
	Send, ه
	lastPressed := "h"
}
return

+h::
Send, ش
lastPressed := ""
return

i::
Send, ي
lastPressed := ""
return

+i::
Send, ى
lastPressed := ""
return

j::
Send, ج
lastPressed := ""
return

k::
Send, ك
lastPressed := ""
return

l::
Send, ل
lastPressed := ""
return

m::
Send, م
lastPressed := ""
return

n::
Send, ن
lastPressed := ""
return

o::
if (lastPressed = "2"){
	Send, {BackSpace}ؤ
	lastPressed = ""
}
else{
	Send, و
	lastPressed := ""
}
return

+o::
Send, ؤ
lastPressed := ""
return

p::
Send, ب
lastPressed := ""
return

+p::
Send, پ
lastPressed := ""
return

q::
Send, ق
lastPressed := ""
return

r::
Send, ر
lastPressed := ""
return

s::
Send, س
lastPressed := "s"
return

+s::
if (lastPressed = "-s"){
	Send, {BackSpace}ص
	lastPressed := "+s"
}
else if (lastPressed = "+s"){
	Send, {BackSpace}ش
	lastPressed := "-s"
}
else{
	Send, ص
	lastPressed := "+s"
}
return

t::
Send, ت
lastPressed := "t"
return

+t::
Send, ث
return

u::
Send, ي
lastPressed := ""
return

v::
Send, ڨ
lastPressed := ""
return

w::
Send, و
lastPressed := ""
return

x::
Send, ك
lastPressed := ""
return

y::
Send, ي
lastPressed := ""
return

+y::
Send, ى
lastPressed := ""
return

z::
Send, ز
lastPressed := ""
return

2::
Send, ء
lastPressed := "2"
return

3::
Send, ع
lastPressed := ""
return

5::
Send, خ
lastPressed := ""
return

7::
Send, ح
lastPressed := ""
return

8::
Send, غ
lastPressed := ""
return

$BackSpace::
if (lastPressed = "sh"){
	Send, {BackSpace}سه
}
else if (lastPressed = "th"){
	Send, {BackSpace}ته
}
else{
	Send, {BackSpace}
}
lastPressed := ""
return

$Space::
Send, {Space}
lastPressed = ""
return