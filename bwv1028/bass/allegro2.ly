\version "2.24.3"

allegroIIBassNotes =
\relative {
  \clef bass
  \time 6/8
  \key c \major
  \set Score.rehearsalMarkFormatter = #format-mark-alphabet
  g8 c d e4 r8
  | g,8 d' e f4 r8
  | c16 d e f d e c d e f d e 
  | c16 d e d e f d e f d e f 
  | e8 f,16 g f8 f8 e'16 (d) c e \break
}
