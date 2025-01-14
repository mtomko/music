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

mfp = \markup { \dynamic mf - \dynamic p }

celloi = \relative {
  \time 12/8
  \key e \minor
  \clef tenor
  \tempo Largo
  \repeat volta 2 {
    b8._\mfp (d32 c b8) 4\tenuto (8\tenuto) e8. (g32 fis e8) 4\tenuto (8\tenuto)
    | dis8. (fis32 e dis8) 4\tenuto (8\tenuto) e8. d16 c8 b4\tenuto (a8\tenuto)
    | g8. fis16 e8 4\tenuto (b'8\tenuto) c8. (e32 d c8) 4\tenuto (8\tenuto)
    | a8. (c32 b a8) d4\< (c8) 4\prall\> (b8)\! r r d8\mf
    | g4\tenuto (g,8\tenuto) c8.\> b16 a8 g2.\!
  }
  \repeat volta 2 {
    \clef bass e8.\mf\downbow (gis32 fis e8) d'4\tenuto\< (8\tenuto) c8.\> (c,32 b a8)\! 4 8\mp
    | d8.\< (fis32 e d8)\! c'4 8 b8.\> b,32 (a) g8\! g4\tenuto (b'8\tenuto) \mf
    | e8 d16 (c) b (a) d8 c16 (b) a (g) c8 b16 (a) g (fis) b8 a16 (g) fis e
    | b4.~ b8.\cresc dis'32 (cis b8) a4.~ a8. c32 (b a8)
    | g4\tenuto\f (e'8\tenuto) g,8. a16 fis8 e2.\fermata
  }
}

celloii = \relative {
  \time 12/8
  \key e \minor
  \clef bass
  \repeat volta 2 {
    e4\tenuto (8\tenuto) e4\tenuto (8\tenuto) g4\tenuto (g8\tenuto) 4\tenuto (e8\tenuto) 
    | b'4\tenuto (8\tenuto) a4\tenuto (8\tenuto) g4\tenuto (8\tenuto) dis4\tenuto (8\tenuto)
    | e4\tenuto (8\tenuto) e4\tenuto (8\tenuto) a4\tenuto (8\tenuto) 4\tenuto (8\tenuto)
    | fis4\tenuto (8\tenuto) 4\tenuto (8\tenuto) g4\tenuto (8\tenuto) 4\tenuto (8\tenuto)
    | g4\tenuto (b,8\tenuto) c4\tenuto (d8\tenuto) g,2.
  }
  \repeat volta 2 {
    gis4\tenuto (8\tenuto) 4\tenuto (8\tenuto) a4\tenuto (8\tenuto) 4\tenuto (8\tenuto)
    | fis4\tenuto (8\tenuto) 4\tenuto (8\tenuto) g4\tenuto (8\tenuto) 4\tenuto (8\tenuto)
    | c'4\tenuto (8\tenuto) b4\tenuto (8\tenuto) a4\tenuto (8\tenuto) g4\tenuto (e8\tenuto)
    | b4\tenuto (8\tenuto) 4 (8\tenuto) 4\tenuto (8\tenuto) 4\tenuto (8\tenuto)
    | e4\tenuto (8\tenuto) b4\tenuto (8\tenuto) e,2.\fermata
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
