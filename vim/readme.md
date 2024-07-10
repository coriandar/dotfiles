## vim
### bindings
```java
// vim jumplist
<C-o> // up list (back)
<C-i> // down list (forward)

// built in grep
:grep KEYWORD **/*.js // search every file(**/) that is .js (*.js)
:copen // reopens quickfix list
:cnext // goes to next file, also not need be in copen

// windows
<C-w> s // split hori
<C-w> v // split vert
<C-w> l // move to right view
<C-w> o // close all otehr views

// netrw
:Vew // vertical explore
:Sex // Hori explore

// macros
q // start/end recording
a // save macro, can be anything
@a // use macro

// delete & replace
dt<CHAR> // delete until the char
diw // delete word, ignore position
cc // delete line, then insert mode
C // delete to end, then insert mode

// registers
:reg
"0 "// don't need extra " at end use selected register
"_dP " // void register

// horizontal movement
0 // absolute start of line
f // go to letter
t // go to before letter
, // prev find
; // next find

// vertical movement
<C-d> // jump down
<C-u> // jump up
% // jump between paired brackets

// selection
o // in visual, go top/bottom of selection, add/remove selected
viw // select word, ignore positon
```

--------------------------------------------------