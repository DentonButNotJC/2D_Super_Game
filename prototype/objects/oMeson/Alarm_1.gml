/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3F3C45BF
/// @DnDArgument : "code" "/// @descrip$(13_10)$(13_10)reload = 0$(13_10)peremennayaDlyPerezarydki = magazinMax - bullet$(13_10)if bullets > 0 {$(13_10)if bullets >= magazinMax and bullet = 0{$(13_10)    bullet = magazinMax$(13_10)    bullets -=    magazinMax$(13_10)}$(13_10)else if !bullet = 0 and bullets >= magazinMax{$(13_10)    bullets = bullets - (magazinMax - bullet)$(13_10)        bullet = magazinMax$(13_10)}$(13_10)else if bullets < peremennayaDlyPerezarydki {$(13_10)bullet += bullets$(13_10)bullets = 0$(13_10)$(13_10)}$(13_10)else {$(13_10)        bullets -= magazinMax - bullet$(13_10)    bullet += magazinMax - bullet$(13_10)}$(13_10)$(13_10)$(13_10)}"
/// @descrip

reload = 0
peremennayaDlyPerezarydki = magazinMax - bullet
if bullets > 0 {
if bullets >= magazinMax and bullet = 0{
    bullet = magazinMax
    bullets -=    magazinMax
}
else if !bullet = 0 and bullets >= magazinMax{
    bullets = bullets - (magazinMax - bullet)
        bullet = magazinMax
}
else if bullets < peremennayaDlyPerezarydki {
bullet += bullets
bullets = 0

}
else {
        bullets -= magazinMax - bullet
    bullet += magazinMax - bullet
}


}