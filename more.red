Red [
	Author:  "PlanetSizeCpu"
	File: 	 %more.red
	Version: 1.0
	Usage:  {Use for see files on console, do %more.red, then is ready}
]

; Credit to @endo64 for ESC break
; Use with block or file as argument
more: function [data [any-type!]][
	y: system/console/size/y 
	l: x: 0 d: copy []
	either file? data [d: read/lines (data)] [d: copy data]
	foreach x d [print x  l: add l 1 if l >= y [l: 0 if "^[" =  ask "(more)" [break]]]
]
