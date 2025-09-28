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

  | 
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
