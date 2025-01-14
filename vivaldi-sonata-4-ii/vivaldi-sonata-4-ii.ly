\version "2.24.3"

menoF = \markup { \tiny \italic meno \dynamic f }

\header {
  title = "Sonata in e minor"
  composer = "Antonio Vivaldi"
  opus = "RV 40"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

\layout {
  indent = 0.0
}

celloi = \relative {
  \time 12/8
  \key e \minor
  \clef bass
  \tempo Largo
  \repeat volta 2 {
    b8. d32 (c) b8 4 8 e8. g32 (f) e8 4 8
    | dis8. fis32 (e) d8 4 8 e8. d16 c8 b4 a8
    | g8. fis16 e8 4 b'8 c8. e32 (d) c8 4 8
    | a8. c32 (b) a8 d4 c8 4\trill b8 r r d8
    | g4 g,8 c8. b16 a8 a2.
  }
  \repeat volta 2 {
    e8. gis32 (fis) e8 d'4 8 c8. c,32 (b) a8 4 8
    | d8. fis32 (e) d8 c'4 8 b8. b,32 (a) g8 g4 b'8
    | e8 d16 (c) b (a) d8 c16 (b) a (g) c8 b16 (a) g (fis) b8 a16 (g) fis e
    | b4.~ b8. dis'32 (cis) b8 a4.~ a8. c32 (b) a8
    | g4 e8 g8. a16 fis8 e2.\fermata
  }
}

celloii = \relative {
  \time 12/8
  \key e \minor
  \clef bass
  \repeat volta 2 {
    e4 8 e4 8 g4 g8 g4 e8
    | b'4 8 a4 8 g4 8 dis4 8
    | e4 8 e4 8 a4 8 4 8 
    | fis4 8 4 8 g4 8 4 8
    | g4 b,8 c4 d8 g,2. 
  }
  \repeat volta 2 {
    gis4 8 4 8 a4 8 4 8
    | fis4 8 4 8 g4 8 4 8
    | c'4 8 b4 8 a4 8 g4 e8
    | b4 8 4 8 4 8 4 8
    | e4 8 b4 8 e,2.
  }
}

\book {
  \score {
    \new StaffGroup {
      <<
        \new Staff \celloi
        \new Staff \celloii
      >>
    }
  }
}
