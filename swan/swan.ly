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
  title = "The Swan"
  subtitle = \markup { \small from \small \italic { "Carnival of the Animals" } }
  composer = "Camille Saint-Saëns"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

notes = \relative {
  \numericTimeSignature
  \time 6/4
  \key g \major
  \clef treble
  \tempo "Andante grazioso"
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override Fingering.avoid-slur = #'outside
  R1.
  | g''4\p (fis b,) e (d g,)
  | a2~(8 b) c2 r4 \break

  | e,2 fis8 g a b c d e\tenuto (fis\tenuto)
  | b2.~8 r8 r4 r4
  | g4 (fis b,) e (d g,)
  | ais2~(8 b) cis2. \break

  | fis,4. (gis8) ais b cis d e fis gis\tenuto (ais\tenuto)
  | d2.~8 r8 r4 r4
  | d4\flageolet\mf (b\flageolet g\flageolet) e (fis g)
  | d2~(8 e) fis2 r4 \break

  | c'4\p (a f) d (e f)
  | c2~(8 d) e2 r4
  | e4\< (a, b) c2 d8 e
  | fis2.\> e2 r4 \! \break

  | e4\< (a, b) cis2 d8 e\!
  | f2. fis2.\>
  | g4\p (fis b,) e (d g,)
  | a2~(8 b) c2 r4 \break

  | e,2 fis8 g a b c d e\tenuto (fis\tenuto)
  | b1.\<\downbow\upbow
  | b4\mf (a) e g fis (c)
  | e4 (d g,) a (b g) \break

  | b2. c4 (d b)
  | e2.^\markup { \small \italic "rit." } e4^\markup { \small \italic "lento" } (fis d)
  | g1.~^\markup { \small \italic "a tempo" }\pp
  | g2.~g8 r r4 r4
  | R1. \fine
}

\book {
  \score {
    \notes
  }
}
