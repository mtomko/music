\version "2.24.3"

plus = \finger \markup \fontsize #6 "+"

allegroBassNotes =
\relative {
  \clef bass
  \time 2/4
  \key c \major
  \set Score.rehearsalMarkFormatter = #format-mark-alphabet
  \set Score.currentBarNumber = #24
  \repeat volta 2 {
    c'16 d e4 d16 (c)
    | b16 c d4 c16 (b)
    | c16 (g) e' (g,) d' (g,) c (g)
    | b8 g b d
    | e16 f g4 f16 (e)
    | d16 e f4 e16 (d) \break
    | e8 (c) b\trill (c)
    | d16 (c b)  a g f e d
    | c8 c'16\2\upbow b c4~ (
    | c16 bes\tenuto) a c f-4\1 c-1 a-4\2 f-1
    | a8 d16 cis d4~ (
    | d16 c\tenuto) b d g d b d \break
    | e8 e4 d16 (cis)
    | d8 d4 c16 (b)
    | c8 b16 (a) g (f) e (d)
    | e16 (f g) e c e f g
    | \mark 2 a16 b c8~ c16 b (a g) \break
    | fis16 (g a) fis d fis g a
    | b16 c d8~ d16 c (b a)
    | g16 (a b) g e g a b
    | c16 (d e16) c a c d e
    | fis,16 (g a) fis d fis a c \break
    | b16 (c d) e \appoggiatura b8 a8.\trill\tenuto (g16\staccato)
    | \mark \default g4 r8 d'8~ (
    | d16 f) e d c8 c~ (
    | c16 a) fis a b,8 b'~ (
    | b16 d) b g e (c') a fis \break
    | d4 r16 d16 e fis
    | g16 a bes4 a16 (g)
    | fis g a4 g16 (fis)
    | d'8 c16 (b) c (b) a (b)
    | g2
  } \pageBreak
  \repeat volta 2 {
    \compressMMRests { R2*4 }
    g16 a bes4 a16 (g)
    | f16 (e d c) d (e f g)
    | a16 (bes c) d c bes a g
    | bes16 (a) g (a) f-2\2 a-4 c-1\1 f-4 \break
    | \mark \default d8 f,\upbow bes\upbow d~ (
    | d16 c) bes (a) g (a bes) d
    | cis8 a\upbow e\upbow e'~
    | e8 a, d16 e f8~ (
    | f16 e) d c b8 e~ (\break
    | e16 d) c b a8 f'8~
    | f16 gis,\upbow (a) b\upbow e,8 gis
    | a16 b c4 b16 (a)
    | \mark \default g16 (fis e d) e (fis g a)
    | b16 (c d) e d c b a \break
    | c16 (b) a (b) g4
    | r8 d'16\upbow e f8 r8
    | r8 e16\downbow f e (d) c b
    | c8\upbow e\upbow a4-3~
    | a16 fis-\plus (g-1) e-2 \appoggiatura e8 dis8.\trill (e16)
    | e2 \break
    | \mark \default e16-2 f-4 g4\flageolet f16 (e)
    | d16 e f4 e16 (d)
    | e8 (c) b\trill (c)
    | d16 (c b) a g f e d
    | c16 (d) e (d) c e g c \break
    | b16 (c) d (c) b d g, b
    | c16 (g) e' (g,) d' (g,) c (g)
    | b16  (c d) c b a g f
    | \mark \default e16 (f g) e c e g bes \break
    | a16 bes c8~ c16 c, (d e)
    | f (g a) f d f a c
    | b16 c d8~ d16 d (e f)
    | g8 g4 f16 (e)
    | f8 f4 e16 (d) \break
    | e8 d16 (c) e (d) c (b)
    | c16 (g) e c bes'4\upbow~ (
    | bes16 g) e c a'4\downbow~ (
    | a16 f) d b g'4\upbow~ (
    | g16 e) c a f'4\downbow~ ( \break
    | f16 g) b d g (f) ees-2 d-1
    | ees16-1 f g4 f16 (ees)
    | d16 ees f4 ees16 (d)
    | f16 (e) d (c) g8 b
    | \appoggiatura { c,16 e g } c2 \fine \pageBreak
  }
}
