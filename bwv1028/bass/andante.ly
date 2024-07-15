\version "2.24.3"

plus = \finger \markup \fontsize #6 "+"

andanteBassNotes =
\relative {
   \autoBreaksOff
  \set Score.rehearsalMarkFormatter = #format-mark-alphabet
  \set Staff.ottavationMarkups = #ottavation-ordinals
  \clef bass
  \time 12/8
  \key a \minor
  \partial 8 e8\p\upbow
  \autoLineBreaksOff
  | a8.\tenuto (c16\tenuto) b8 a8 a32 (b c16 b8) \appoggiatura { d,16 e } f8.\tenuto (e16\tenuto) d8  \appoggiatura d8 c \trill b16 (a) a'8~
  | a8 g16 (fis) g8~ g8 fis32 (e dis16) e8~ e16 c' (b) a (b) c dis,? (e fis a\upbow g fis) \break
  | g16 (a) b8 \appoggiatura e dis e4.~ e8 (dis\tenuto\downbow) fis~ fis16 dis? (e fis) g8
  | \appoggiatura g\f fis4. e4.~ e8 d!16 (cis) d8 cis fis,!\staccato (ais\staccato)
  | b4.~ b16 fis'\p (e d cis b) fis'8 fis, \acciaccatura b ais\trill b4 r8 \break
  | r2. r4 r8 r4 d8
  | \mark 10 g8.\tenuto\mf (b16\tenuto) a8 g g32 (a b16 a8) \appoggiatura { c,16 d} e8.\tenuto (d16\tenuto) c8 \acciaccatura c8 b8\trill a16 (g) a8
  | b16 (a) c (b) e (d) d (c) e (d) c (b) a (g) fis (g) a (fis) d4 r8 \break
  | a'4.\p\upbow  g4.~ g8 f16 (e f8) \appoggiatura f e4\trill a8
  | d8.\tenuto (f16\tenuto) e8 d8 d32 (e f16 e8) \appoggiatura { g,16 a } bes8.\tenuto (a16\tenuto) g8 \acciaccatura g f e16 (d) d'8~ \break
  | d8 c16 (bes) c8~ c8 bes!32 (a g16) a8~ a8 \acciaccatura g f\trill\> (e16 d) d4\! a'8\upbow
  | \appoggiatura a gis8.\tenuto (f'16\tenuto\cresc) e8\! \acciaccatura d c8\trill b16 (a) \appoggiatura { a b } c8 \appoggiatura c\upbow bes8.\trill a16 bes8 a\downbow (g16 f)  g\mordent\upbow (f32 g) \break
  | a16 bes c8 bes a d16\downbow (c bes a) g (f) bes (a) g (a) f4 r8
  | r2. r4 r8 r4 g8\mf
  | \mark \default c8.\tenuto (e16\tenuto) d8 c c32 (d e16 d8\staccato) d8.\tenuto-1 (f16\tenuto-2) e8-1 d8-\plus d32 (e-1 f16-2 e8\staccato-\plus) \break
  | e8\cresc-\plus e32 (f-1 g16-3 f8\staccato-\plus) f8-\plus f32 (g-1 a16-3 g8\staccato-1) \appoggiatura f-2 e8.-1\tenuto\trill (d16\tenuto) c8 bes\f \appoggiatura bes\upbow a4~\trill
  | a8. b32 (cis d16 e) f8\upbow \appoggiatura f\downbow e4~ e8. d32\upbow-4 (c-2 b-1 c-2 d16-4) gis,4 e8 \break
  | a8.\tenuto (c16\tenuto) b8 a8 a32\upbow (b c16 b8) \appoggiatura { d,16 e } f8.\tenuto (e16\tenuto) d8 \appoggiatura d8\downbow cis\trill \(b16 (a\upbow)\) a'8
  | \tuplet 3/2 {f'16\downbow (e d)} d8\upbow \acciaccatura d\downbow\> cis\trill d4.~d2.-\parenthesize\downbow ~
  | \mark \default d8.\p cis16 (e d) e4.~ e16\< cis (d e) f8~ f4.~\! \break
  | f16 e32\upbow (d c16 b a gis) e'4.~ e16 g! (f e d cis) d4.~
  | d8 c!16 (b) c8~ c b32 (a gis16) a8~ a16 f' (e) d (e) f gis,! (a b) d (c b) \break
  | c16 (d e8) \ottava 1 gis8_\markup {\teeny { \italic { 8\super{"va"} "ad lib" } } }\mordent a4.~\> (a8 gis\p) b8~ b16 gis? (a b) c8
  | bes4. a8. g16 (bes a) g (e f a g f) \appoggiatura f8 e4 \ottava 0 d16 (e32 f) \break
  | e8 gis, a d16 (c d f e d) \appoggiatura d8\> c8.\tenuto\trill (b16\tenuto) c8 b4 e,8\p
  | \mark \default a8.\tenuto (c16\tenuto) b8 a a32 (b c16 b8\staccato) b8.\tenuto (d16\tenuto) c8 b b32 (c d16 c8\staccato) \break
  | cis8\< cis32 (d e16 d8\staccato) dis dis32 (e fis16\! e8\staccato) \appoggiatura d\> c8.\trill\tenuto (b16\tenuto) a8 a4.~
  | a1.\trill\!~
  | a4.-\parenthesize\upbow~a16 gis (b a) b8\upbow~ b16 e\upbow e,8 gis!8\trill \appoggiatura { a,16 c e} a4\fermata \fine
  \autoLineBreaksOn
}
