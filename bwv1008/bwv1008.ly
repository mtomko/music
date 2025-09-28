\version "2.24.3"

% dynamics
crescM = \markup { \small \italic "cresc." }
dimM = \markup { \small \italic "dim." }
decrescM = \markup { \small \italic "decresc." }

rit = \markup { \small \italic "rit." }
atempo = \markup { \small \italic "a tempo" }

% fingerings
plus = \finger \markup \fontsize #4 "+"
mplus = \finger \markup \fontsize #4 "-+"
mi = \finger "-1"
mii = \finger "-2"
miii = \finger "-3"
miv = \finger "-4"

% other


\header {
  title = "Cello Suite no. 2 in a minor"
  subtitle = \markup { \small "for solo double bass" }
  composer = "J. S. Bach"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

prelude = \relative {
  \numericTimeSignature
  \time 3/4
  \key a \minor
  \clef bass
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override Fingering.avoid-slur = #'outside
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1
  a8 c e4~16 c ( b a)
  | gis16 (b) d e f4~16 e (d c)
  | b16 (d) f gis b8. f16 (e d c b)
  | c16 (d e) c a8 g f e \break

  | f16 (a) c e a8. (g16) f (e) d c
  | b16 (d) f a g (e) f (d) c (b d) f,
  | e16 (g) b d g8. (f16) e (d) c b \break

  | a16 (c) e g f (d) e (c) b (c e) c
  | d,16 (f) a c f8. (e16) d (c) b d
  | e,16 (g) b d g (e) b (d) c (e) a, (bis \break

  | a16) e (f a) d (f) e (g) f (d) a' (c,)
  | b16 fis (g b) d (a) b (g) f (d) b' f
  | c8 e g4~16 (f e d)
  | cis16 (e f g) a, (g' f e) cis' (bes) a g \break

  | f16 (e) d f a4~16 g (f e)
  | dis16 fis (g a) b, a' (g f) dis' (c) b a
  | g16 (fis) e g c (b) c dis e (c) a g \break

  | fis16 a dis fis \clef treble a8. (g16) fis (e) dis e
  | g,16 b e g b8. (g16) fis (e) dis e
  | a,16 c e a c8. (b16) a (g) fis a \break

  | b,16 (a' g fis) e g fis e \clef bass a, fis' (e dis)
  | g,16 (e' d c) gis d' (c b) a c (b a)
  | dis,16 a' (b c) fis c (b a) dis, a' (g fis) \break

  | e16 (fis g) b e (fis g) e b g e d
  | cis16 (e) g a bes8. (a16) g f g e'
  | f,16 (e f) a d, bes' (c d) a, d' (c b) \break

  | a16 (g a) c f, d' (e f) gis, f' (e d)
  | c16 (b c) e a, \clef treble f' (g a) b, a' (g f)
  | e16 (d e) g c, a' (b c) d, c' (b a) \pageBreak

  | gis16 \clef bass d (c b) e, b' (c d) gis f (e d)
  | c16 (d e) gis a e (d c) e c (b a)
  | dis16 a (b c) e, c' (b a) dis c (b a) \break

  | gis16 (fis gis) b e b gis b e, d' (c b)
  | c16 (b c) e a e c e a, g' (f e)
  | d (c d) gis b gis d gis e, d' (c b) \break

  | \clef treble a16 (e') a b c (a) e c a g' (f e)
  | d16 (e f) a, (bis c d e) f (d) bes' (d,)
  | c16 (d e) gis, (a b c d) e (c) a' (c,) \break

  | \clef bass b16 (c d) f, (e fis gis a) b f d' f,
  | gis,8 e' d'4~16 f (e d)
  | c16 (b a) b c a e' c a' e c a
  | dis,8 c' \clef treble a'4~16 c b a \break

  | gis16  fis (e fis) gis (e) a (e) b' (e,) c' (e,)
  | d'16 b (gis b) e, (gis) b c d (c) d b
  | c a (gis a) e (gis) a b c (b) c a \break

  | b16 gis (fis gis) e (fis) gis a b (a) b gis
  | a16 fis (e fis) c (dis) fis gis a (gis) a fis
  | \clef bass <<d,4 b' gis'>> r r \break

  | f16 d (cis d) bes (d) a (d) bes (d f) a,
  | gis16 (b d e) fis8. (e16) d (cis d) b'
  | c,16 a' (f d) e (c) b (d) c (a) gis (b) \break

  | a16 f (e d) cis (e) g bes a (g f e)
  | f16  d (cis d) bes (d) a (d) bes (d f) a,
  | <gis f' d'>8.\arpeggio c'16 (b a gis fis e d c b)

  | a16 (e') a b c (b a g) f (e d c)
  | b16 (e) gis b d (c b a) gis (fis e d)
  | c16 (e) a c e (a,) c e a (f) g (e) \break

  | d,16 (a') d e f (d) cis d bes' d, a' d,
  | \slashedGrace e,,8 <d'' gis>2.
  | \slashedGrace e,,8 <c'' a'>2.
  | \slashedGrace e,,8 <b'' a'>2.
  | \slashedGrace e,,8 <b'' gis'>2.
  | \slashedGrace e,,8 <c'' a'>2. \fine
}

\book {
  \score {
    \layout {
      indent = 0.0
    }
    \header {
      piece = "Prelude"
    }
    \prelude
  }
}
