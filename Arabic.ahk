#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

+`::
suspend
return

a::
e:: ; A and E use the same inputs, since they're similar.
if (lastPressed = "2"){
    Send, {BackSpace}A
    lastPressed := "2a"
}
else{
    Send, a
    lastPressed := "a"
}
return

+a:: ; Switches between ةأإ
+e::
if (lastPressed = "-a"){
    Send, {BackSpace}é
    lastPressed := "+a"
}
else if (lastPressed = "+a"){
    Send, {BackSpace}è
    lastPressed := "-a"
}
else if (lastPressed = "2"){
    Send, {BackSpace}û
    lastPressed = ""
}
else{ ; Default
    Send, é
    lastPressed := "+a"
}
return

b::
Send, b
lastPressed := ""
return

c::
Send, k
lastPressed := ""
return

d::
Send, d
lastPressed := ""
return

+d::
if (lastPressed = "-d"){
    Send, {BackSpace}d
    lastPressed := "+d"
}
else if (lastPressed = "+d"){
    Send, {BackSpace}z
    lastPressed := "-d"
}
else{
    Send, d
    lastPressed := "+d"
}
return

f::
Send, f
lastPressed := ""
return

g::
Send, j
lastPressed := ""
return

+g::
Send, j
lastPressed := ""
return

h::
if (lastPressed = "s"){
    Send, {BackSpace}s
    lastPressed := "sh"
}
else if (lastPressed = "t"){
    Send, {BackSpace}t
    lastPressed := "th"
}
else if (lastPressed = "+t"){
    Send, {BackSpace}ţ
    lastPressed := "+th"
}
else{
    Send, h
    lastPressed := "h"
}
return

+h::
Send, t
lastPressed := ""
return

i::
Send, i
lastPressed := ""
return

+i::
Send, î
lastPressed := ""
return

j::
Send, j
lastPressed := ""
return

k::
Send, k
lastPressed := ""
return

l::
Send, l
lastPressed := ""
return

m::
Send, m
lastPressed := ""
return

n::
Send, n
lastPressed := ""
return

u::
o::
if (lastPressed = "2"){
    Send, {BackSpace}o
    lastPressed = "2o"
}
else{
    Send, o
    lastPressed := "o"
}
return

+o::
Send, o
lastPressed := ""
return

p::
Send, b
lastPressed := ""
return

+p::
Send, p
lastPressed := ""
return

q::
Send, q
lastPressed := ""
return

r::
Send, r
lastPressed := ""
return

s::
Send, s
lastPressed := "s"
return

+s::
if (lastPressed = "-s"){
    Send, {BackSpace}s
    lastPressed := "+s"
}
else if (lastPressed = "+s"){
    Send, {BackSpace}sh
    lastPressed := "-s"
}
else{
    Send, s
    lastPressed := "+s"
}
return

t::
Send, t
lastPressed := "t"
return

+t::
Send, t
lastPressed := "+t"
return

v::
Send, v
lastPressed := ""
return

w::
Send, w
lastPressed := ""
return

x::
Send, k
lastPressed := ""
return

y::
Send, y
lastPressed := ""
return

+y::
Send, î
lastPressed := ""
return

z::
Send, z
lastPressed := ""
return

$2::
if (lastPressed = "2a2"){
    Send, {BackSpace}a
    lastPressed := "2a"
}
else if (lastPressed = "2a"){
    Send, {BackSpace}i
    lastPressed := "2a2"
}
else if (lastPressed = "-a" or lastPressed = "+a"){
    Send, {BackSpace}e
    lastPressed := ""
}
else{
    Send, '
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
Send, '
lastPressed := ""
return

$+3::
if (lastPressed = "-3"){
    Send, {BackSpace}3
    lastPressed := "+3"
}
else if (lastPressed = "+3"){
    Send, {BackSpace}#
    lastPressed := "-3"
}
else{
    Send, 3
    lastPressed := "+3"
}
return

$4::
Send, sh
lastPressed := ""
return

$+4::
if (lastPressed = "-4"){
    Send, {BackSpace}4
    lastPressed := "+4"
}
else if (lastPressed = "+4"){
    Send, {BackSpace}$
    lastPressed := "-4"
}
else{
    Send, 4
    lastPressed := "+4"
}
return

$5::
Send, kh
lastPressed := ""
return

$+5::
if (lastPressed = "-5"){
    Send, {BackSpace}5
    lastPressed := "+5"
}
else if (lastPressed = "+5"){
    Send, {BackSpace}%
    lastPressed := "-5"
}
else{
    Send, 5
    lastPressed := "+5"
}
return

$7::
Send, h
lastPressed := ""
return

$+7::
if (lastPressed = "-7"){
    Send, {BackSpace}7
    lastPressed := "+7"
}
else if (lastPressed = "+7"){
    Send, {BackSpace}&
    lastPressed := "-7"
}
else{
    Send, 7
    lastPressed := "+7"
}
return

$8::
Send, gh
lastPressed := ""
return

$+8::
if (lastPressed = "-8"){
    Send, {BackSpace}8
    lastPressed := "+8"
}
else if (lastPressed = "+8"){
    Send, {BackSpace}*
    lastPressed := "-8"
}
else{
    Send, 8
    lastPressed := "+8"
}
return

$?::
Send, ?
lastPressed := "" 
return

$BackSpace::
if (lastPressed = "sh"){
    Send, {BackSpace}sh
}
else if (lastPressed = "th"){
    Send, {BackSpace}th
}
else if (lastPressed = "+th"){
    Send, {BackSpace}ţ
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

$,::
Send, ,
lastPressed = ""
return
