
MEMORY MAP

$0000-$7FFF:  RAM
$8000-$87FF:  VIA
$8800-$88FF:  ACIA
$C000-$FFFF:  ROM

(This isn't quite right. ACIA requires A15 and A11 both be set. When
A15 is set but not A11, it's the VIA.)




