;   +---------+
; Max OS (c) 2024
;   +---------+

[org 0x7C00]

; Set video mode

mov ah, 0x00
mov al, 0x13
int 10h

; Write a string

mov ah, 0x13
mov al, 0x00

mov dl, 0x11             ; Column (Shift by 5 chars)
mov dh, 0x00             ; Row

mov bx, 0x7F             ; Colour
mov cx, start_text_len   ; Text Length
mov bp, start_text       ; Text variable
int 10h

mov dl, 0x0A             ; Column
mov dh, 0x03              ; Row

mov bx, 0x60
mov cx, start_text_2_len
mov bp, start_text_2
int 10h

; Draw a smiley
mov ah, 0x0c
mov al, 0x0f
mov bh, 0x00

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
start_text: db "Manix!"
start_text_len equ $ - start_text

start_text_2: db "(c) 2024 Max & Co."
start_text_2_len equ $ - start_text_2

; Make the binary an OS
times 510-($-$$) db 0
dw 0xaa55
