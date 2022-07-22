#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

a::
e:: ; A and E use the same inputs, since they're similar.
if (lastPressed = "2"){
	Send, {BackSpace}أ
	lastPressed := "2a"
}
else{
	Send, ا
	lastPressed := "a"
}
return

+a:: ; Switches between ةأإ
+e::
if (lastPressed = "-a"){
	Send, {BackSpace}ى
	lastPressed := "+a"
}
else if (lastPressed = "+a"){
	Send, {BackSpace}ة
	lastPressed := "-a"
}
else if (lastPressed = "2"){
	Send, {BackSpace}ئ
	lastPressed = ""
}
else{ ; Default
	Send, ى
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
if (lastPressed = "-d"){
	Send, {BackSpace}ض
	lastPressed := "+d"
}
else if (lastPressed = "+d"){
	Send, {BackSpace}ذ
	lastPressed := "-d"
}
else{
	Send, ض
	lastPressed := "+d"
}
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
else if (lastPressed = "+t"){
	Send, {BackSpace}ظ
	lastPressed := "+th"
}
else{
	Send, ه
	lastPressed := "h"
}
return

+h::
Send, ة
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

u::
o::
if (lastPressed = "2"){
	Send, {BackSpace}ؤ
	lastPressed = "2o"
}
else{
	Send, و
	lastPressed := "o"
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
Send, ط
lastPressed := "+t"
return

; u is the same as o

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

$2::
;if (lastPressed = "o"){
;	Send, {BackSpace}ؤ
;	lastPressed := "o2"
;}
if (lastPressed = "2a2"){
	Send, {BackSpace}أ
	lastPressed := "2a"
}
else if (lastPressed = "2a"){
	Send, {BackSpace}إ
	lastPressed := "2a2"
}
else if (lastPressed = "-a" or lastPressed = "+a"){
	Send, {BackSpace}ئ
	lastPressed := ""
}
else{
	Send, ء
	lastPressed := "2"
}
return

$+2::
if (lastPressed = "-2"){
	Send, {BackSpace}2
	lastPressed := "+2"
}
else if (lastPressed = "+2"){
	Send, {BackSpace}@
	lastPressed := "-2"
}
else{
	Send, 2
	lastPressed := "+2"
}
return

$3::
Send, ع
lastPressed := ""
return

$4::
Send, ش
lastPressed := ""
return

$5::
Send, خ
lastPressed := ""
return

$7::
Send, ح
lastPressed := ""
return

$8::
Send, غ
lastPressed := ""
return

$?::
Send, ؟
lastPressed := "" 
return

$BackSpace::
if (lastPressed = "sh"){
	Send, {BackSpace}سه
}
else if (lastPressed = "th"){
	Send, {BackSpace}ته
}
else if (lastPressed = "+th"){
	Send, {BackSpace}طه
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
