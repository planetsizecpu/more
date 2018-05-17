; More function for Red console
;
; Use with block or file as argument
more: function [data [any-type!]][
	y: system/console/size/y 
	l: x: 0
	d: copy []
	either file? data [d: read/lines (data)] [d: copy data]
	foreach x d [print x  l: add l 1 if l >= y [l: 0 ask "(more)"]]
]
