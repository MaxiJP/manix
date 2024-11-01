;   +---------+
; Max OS (c) 2024
;   +---------+

[org 0x7C00]

; Set video mode

mov ah, 00h
mov al, 13h
int 10h

; Write a string

mov ah, 13h
mov al, 00h

mov dl, 10h              ; Column (Shift by 5 chars)
mov dh, 00h              ; Row

mov bx, 7Fh              ; Colour
mov cx, start_text_len   ; Text Length
mov bp, start_text       ; Text variable
int 10h

mov dl, 0Ah              ; Column
mov dh, 03h              ; Row

mov bx, 60h
mov cx, start_text_2_len
mov bp, start_text_2
int 10h

; Draw a smiley
mov ah, 0ch
mov al, 0fh
mov bh, 00h

mov cx, 158d
mov dx, 100d
int 10h

mov cx, 159d
int 10h

mov cx, 160d
int 10h

mov cx, 161d
int 10h

mov dx, 99d
int 10h

mov dx, 97d
int 10h

mov dx, 96d
int 10h

mov cx, 158d
mov dx, 99d
int 10h

mov dx, 97d
int 10h

mov dx, 96d
int 10h

; Define my strings
start_text: db "Max OS!"
start_text_len equ $ - start_text

start_text_2: db "(c) 2024 Max & Co."
start_text_2_len equ $ - start_text_2

; Make the binary an OS
times 510-($-$$) db 0
dw 0xaa55
