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
  | c16 d e d e f d e f d e f \break
  | e8 g,16 a g8 g8 e'16 (d) c e
  | d8 g,16 a g8 g f'16 (e) d f
  | e16 f g a f g e f g a f g \break
  | e16 f g f g a d, e f e f g
  | c,16 d e d e f b, c d c d e
  | a,16 b c b c d b8 a16 (g) c8~ \break
  | c8 \acciaccatura c b8.\trill (a32 b) c16 e, f g a g
  | a16 b a g fis e fis8 g16 a b8
  | a16 g \acciaccatura g8 fis8.\trill\tenuto (g16-.) g8 g'4~\trill
  | g8 fis4~\trill fis8 e4~\trill
  | e8 d4~\trill d8 c4~\trill \break
  | c16 a b c d c d e \acciaccatura b8 a8.\trill\tenuto (g16-.)
  | \mark 14 g8 d16 e d8 d b'16 (a) g b
  | a8 d,16 e d8 d c'16 (b) a c
  | b16 c d e c d b c d e c d \break
  | b16 c d b c d c4 r8
  | e,8 a b c4 r8
  | e,8 b' c d4 r8
  | a16 b c d b c a b c d b c
  | a8 e' b' \acciaccatura g8 fis4~\trill fis16 (e32 fis) \break
  | g4.~ g8 g16 (a) bes8
  | a8. g16 f e f g \acciaccatura f8 e8.\trill\tenuto (d16-.)
  | \mark \default d2.~
  | d2.~
  | d2.~
  | d4.~ d8 g 16 f e d \break
  | c8 g16 a g8 g e'16 (d) c e
  | d8 g,16 a g8 g f'16 (e) d f
  | e16 f g a f g e f g a f g \break
  | e16 f g e f g a, b c a b c
  | d4.~ d16 e f d e f
  | b,16 c d b c d g,4.~
  | g16 a b g a b e, f g e f g \break
  | c,4. (c'16) d e c d e
  | a,16 b c a b c d e f d e f
  | b,16 c d b c d e f g e f g
  | c,16 d e c d e  f4.~ \break
  | f16 e f g e f d e f g e f
  | \mark \default d8 g,16 a g8 g f'16 (e d f)
  | \appoggiatura f8 e2.~\trill
  | e8 f,16 g f8 f e'16 (d) c e
  | \appoggiatura e8 d2.~\trill \break
  | d8 e,16 f e8 e d'16 (c) b d
  | \appoggiatura d8 c2.~\trill
  | c8 d,16 e d8 d c'16 (b) a c
  | \appoggiatura c8 b2.\trill
  | \mark \default r8 g16 a g8 g e'16 (d) c e \break
  | d8 g,16 a g8 g f16 (e) d f
  | e16 f g a f g e f g a f g
  | e16 f g e f g f g a f g a \break
  | d4.~ d16 e f d e f
  | b,16 c d b c d g,4.~
  | g16 a b g a b e, f g e f g
  | c,4.~ c16 d e c d e \break
  | f16 g a f g a d, e f d e f
  | g16 a b g a b e, f g e f g
  | a bes c d bes c  a bes c a bes c
  | f,16 g a bes g a f g a f g a \break
  | d,16 e f d e f e8 g c
  | b8 d b g b d g2.~
  | g8 e c f d b
  | e8 c a d b g
  | c8 a f  b16 c d8 g, \break
  | c16 d \acciaccatura c8 b8.\trill\tenuto (c16-.) c8 e,16 f e8
  | \mark \default e8 c'16 (b) a c b8 e,16 f e8
  | e8 d'16 (c) b d c d e f d e
  | c16 d e f d e c b a g fis e \break
  | fis8 b fis g c g
  | a8 a'4~ a16 (g\tenuto) fis e f8~
  | f8 e dis e b <<dis! fis>>
  | <<
    \voiceOne {
      g4. g4. (
      | fis4.) fis4. (
      | e4.) e4. (
      | dis8) s8 s8 s4.
    }
    \new Voice {
      \voiceTwo
      e4. c4.~
      | c4. b4.~
      | b4. a4.~ \break
      | a16 b16 c d b c a b c a b c
    }
  >> \oneVoice
  | fis,16 g a b g a fis g a fis g a
  | dis,8 cis16 dis b8 b g'16 (fis) e g
  | cis,8 b16 cis a8 a8 a'16 (g) fis a \break
  | dis,16 e fis dis e dis e fis \acciaccatura e8 dis8.\trill\tenuto e16-.
  | \mark \default e4 r8 r fis8 fis,
  | b4 r8 r e8 e,
  | a4 r8 r b' b,
  | e4 r8 r a8 a,
  | d4 r8 r b8 b' \break
  | c4 r8 r a, a'
  | bes4 r8 r gis,8 gis'8
  | a4 r8 r a8 a,
  | a4 r8 r8 d'8 d,
  | a4 r8 r8 d'8 d,
  | d4 r8 r8 d'8 d, \break
  | d8 d' d, fis, fis' fis,
  | bes8 bes' ees cis d d,
  | \mark \default g8 d16 e d8 d b'16 (a) g b
  | a8 d,16 e d8 d c16 (b) a c \break
  | b'16 d (b g f) e (f) d' (b g f) e (
  | f16) g g b b d d (f32 e f16) d b g
  | e'16 g (e c bes) a (bes) g' (e c bes) a ( \break
  | bes16) c c e e g g (bes32 a bes16) g f c
  | d16 e (cis a g) f (g) e' (cis a g) f (
  | g16) a a cis cis e e (g32 f g16) e cis a \break
  | d,16 a' (d f) gis, (a) c, a' (c e) gis, (a)
  | b,16 a' (b d) gis, (a) e f32 (e d16 c b) d
  | c16 a32 (b c16 d e f) g (a bes) g e g \break
  | a16 a32 (bes c16) a e f bes bes32 (c d16) g,32 (a b16) g
  | e'16 bes32 (c d16) g,32 (a bes16) g f' bes,32 ( c d16) g,32 (a bes16) g \break
  | g'16 g32 (f e16) e32 (d c16) c32 (bes a16) a32 (bes c16) f, c e
  | \mark \default f,8 f' g\trill a4 r8
  | c,8 g' a\trill bes4 r8
  | f16 g a bes g a f g a bes g a \break
  | f16 g a g f e d8 r8 r8
  | r8 g16 a g8 g8 e'16 (d) c e
  | d8 g,16 a g8 g f'16 (e) d f
  | e16 f g a f g e f g a f g \break
  | e16 f g f g a d, e f e f g
  | c,16 d e d e f b, c d c d e
  | a,16 b c b c d b8 a16 (g) c8~ \break
  | c8 \acciaccatura c8 b8.\trill (a32 b) c8 e a~
  | a8 d, g~ g c, f~
  | f8 b, e~ e a, d~ (
  | d16 c\tenuto) b a g f g a \acciaccatura e8 d8.\trill\tenuto (c16-.)
  | \appoggiatura { c e g } c2. \fermata \fine
}
