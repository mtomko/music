\version "2.24.3"

adagioBassNotes =
\relative {
  \set Score.rehearsalMarkFormatter = #format-mark-alphabet
  \clef bass
  \time 3/4
  \key c \major
  | c'4\upbow r8 g\downbow a8.\trill (b32 c)
  | \appoggiatura f,8 e8\trill (d16 c) c'2\upbow~
  | c4~ c16 b (c e) d (c b c)
  | \appoggiatura c8 b\trill (a16 g) r4 r4 \break
  | g'4\upbow r8 d\downbow e8. (fis32 g)
  | \appoggiatura c,8 b\trill (a16 g) cis2\upbow
  | d8 a f'16 gis, b (c!) d (f) e (d)
  | \appoggiatura d8 c\trill (b16 a) dis4 r
  | e4\upbow r8 b\downbow c16 (e) dis (e) \break
  | \appoggiatura a,8 g\trill (fis16 e) e'2~
  | e8. (fis32 g) fis16 (e d c) b (c d b)
  | \appoggiatura a8\upbow gis\trill (fis16 e) a4~ a16 f'\upbow (e d)
  | c16 (b) c16 (a) \appoggiatura a8 gis4.\trill (a8) \break
  | \mark \default a4 r r
  | r4 r8 a8\downbow \appoggiatura g8 fis8. (e32 d)
  | b'8\mordent\downbow (c16 d)) g,2\upbow~
  | g16 g\downbow (a bes e,) e\upbow (f g f)  e (d c)
  | a'8\mordent\upbow (bes16 c) f,2~ \break
  | f16 f\upbow (g a g) b!\downbow (d c b) a\upbow (g f16)
  | e16 (a) g\tenuto\upbow f\tenuto\upbow e4-4\2 \appoggiatura e8\upbow d8.\trill (c16)
  | c2.\downbow~
  | c4. c'16\upbow (b c e d8)
  | c4 (b2) \bar "||"
}
