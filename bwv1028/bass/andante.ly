\version "2.24.3"

andanteBassNotes =
\relative {
  \set Score.rehearsalMarkFormatter = #format-mark-alphabet
  \set Staff.ottavationMarkups = #ottavation-ordinals
  \clef bass
  \time 12/8
  \key a \minor
  \partial 8 e8
  \autoLineBreaksOff
  | a8.\tenuto (c16\tenuto) b8 a8 a32 (b c16 b8) \appoggiatura { d,16 e } f8.\tenuto (e16\tenuto) d8  \appoggiatura d8 c \trill b16 (a) a'8~
  | a8 g16 (fis) g8~ g8 fis32 (e dis16) e8~ e16 c' (b) a (b) c dis,? (e fis a g fis) \break
  | g16 (a) b8 \appoggiatura e dis e4.~ e8 (dis\tenuto) fis~ fis16 dis (e fis) g8
  | \appoggiatura g fis4. e4.~ e8 d!16 (cis) d8 cis fis,!\staccato (ais\staccato)
  | b4.~ b16 fis' (e d cis b) fis'8 fis, \acciaccatura b ais\trill \appoggiatura { gis ais } b4 r8 \break
  | r2. r4 r8 r4 d8
  | \mark 10 g8.\tenuto (b16\tenuto) a8 g g32 (a b16 a8) \appoggiatura { c,16 d} e8.\tenuto (d16\tenuto) c8 \acciaccatura c8 b8\trill a16 (g) a8
  | b16 (a) c (b) e (d) d (c) e (d) c (b) a (g) fis (g) a (fis) d4 r8 \break
  | a'4.  g4.~ g8 f16 (e f8) \appoggiatura f e4\trill a8
  | d8.\tenuto (f16\tenuto) e8 d8 d32 (e f16 e8) \appoggiatura { g,16 a } bes8.\tenuto (a16\tenuto) g8 \acciaccatura g f e16 (d) d'8~ \break
  | d8 c16 (bes) c8~ c8 bes32 (a g16) a8~ a8 \acciaccatura g f\trill (e16 d) d4 a'8
  | \appoggiatura a gis8.\tenuto (f'16\tenuto) e8 \acciaccatura d c8\trill b16 (a) \appoggiatura { a b } c8 \appoggiatura c bes8.\trill a16 bes8 a (g16 f)  g\mordent (f32 g) \break
  | a16 bes c8 bes a d16\f (c bes a) g (f) bes (a) g (a) f4 r8
  | r2. r4 r8 r4 g8
  | \mark \default c8.\tenuto (e16\tenuto) d8 c c32 (d e16 d8\staccato) d8.\tenuto (f16\tenuto) e8 d8 d32 (e f16 e8\staccato) \break
  | e8 e32 (f g16 f8\staccato) f8 f32 (g a16 g8\staccato) \appoggiatura f e8.\tenuto\trill (d16\tenuto) c8 bes \appoggiatura bes a4~\trill
  | a8. b32 (cis d16 e) f8 \appoggiatura f e4~ e8. d32 (c b c e16) gis,4 e8 \break
  | a8.\tenuto (c16\tenuto) b8 a8 a32 (b c16 b8) \appoggiatura { d,16 e } f8.\tenuto (e16\tenuto) d8 \appoggiatura d8 cis\trill b16 (a) a'8
  | \tuplet 3/2 {f'16 (e d)} d8 \acciaccatura d \afterGrace cis~\trill { b16 cis } d4.~d2.~
  | \mark \default d8. cis16 (e d) e4.~ e16 cis (d e) f8~ f4.~ \break
  | f16 e32 (d c16 b a gis) e'4.~ e16 g! (f e d cis) d4.~
  | d8 c!16 (b) c8~ c b32 (a gis16) a8~ a16 f' (e) d (e) f gis,! (a b) d (c b) \break
  | c16 (d e8) \ottava 1 \afterGrace gis8_\markup {\teeny { \italic { 8\super{"va"} "ad lib" } } }~\trill { fis gis } a4.~ (a8 gis) b8~ b16 g (a b) c8
  | bes4. a8. g16 (bes a) g (e f a g f) \appoggiatura f8 e4 \ottava 0 d16 (e32 f) \break
  | e8 gis, a d16 (c d f e d) \appoggiatura d8 c8.\tenuto\trill (b16\tenuto) c8 b4 e,8
  | \mark \default a8.\tenuto (c16\tenuto) b8 a a32 (b c16 b8\staccato) b8.\tenuto (d16\tenuto) c8 b b32 (c d16 c8\staccato) \break
  | cis8 cis32 (d e16 d8\staccato) dis dis32 (e fis16 e8\staccato) \appoggiatura d c8.\trill\tenuto (b16\tenuto) a8 a4.~
  | a1.~
  | a4.~a16 gis (b a) b8~ b16 e e,8 \afterGrace gis!8\trill~ {fis gis} \appoggiatura { a,16 c e} a4\fermata \bar "||"
  \autoLineBreaksOn
}
