\version "2.24.3"

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
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \autoLineBreaksOff
  \repeat volta 2 {
    b8._\mfp-1 (d32 c b8) 4\tenuto (8\tenuto) e8.-1 (g32 fis e8) 4\tenuto (8\tenuto)-2
    | dis8. (fis32 e dis8) 4\tenuto (8\tenuto) e8. d16-4 c8 b4\tenuto (a8\tenuto)-4 \break
    | g8. fis16-3 e8 4\tenuto (b'8\tenuto) c8.-1 (e32 d c8) 4\tenuto (8\tenuto)-4
    | a8. (c32 b a8) d4\<-3\2 (c8) 4\prall\> (b8)\! r r d8\mf
    | g4\tenuto-4 (g,8\tenuto-1) c8.\>-4 b16-4 a8 g2.\! \break
  }
  \repeat volta 2 {
    \clef bass e8.\mf\downbow-1 (gis32 fis e8) d'4\tenuto\< (8\tenuto) c8.\> (c,32 b a8)\! 4 8\mp
    | d8.\<-1 (fis32-4 e-2 d8-1)\! c'4-3 8 b8.\>-2 b,32-4 (a-2) g8\!-1 g4\tenuto (b'8\tenuto-3) \mf \break
    | e8-1 d16-4 (c) b (a) d8 c16 (b) a (g) c8 b16 (a) g (fis) b8 a16 (g) fis e
    | b4.~-2 b8.\cresc dis'32-4 (cis-2 b8-1) a4.~-1 a8. c32-4 (b-3 a8-1)
    | g4\tenuto\f-2 (e'8\tenuto) g,8.-2 a16-4 fis8-1 e2.-1\fermata
  }
}

celloii = \relative {
  \time 12/8
  \key e \minor
  \clef bass
  \repeat volta 2 {
    b,8_\markup { \italic \small pizz. } e g b, e g e g b e, g b
    | dis, fis b dis, fis b e, g c dis,? fis b
    | b,8 e g b, e g c, e a c, e a
    | c, fis a c, d a' c, d g b, d g
    | b, d g c, e a g,2.
  }
  \repeat volta 2 {
    b8 e gis b, e gis a, c e a, c e
    | d fis a d, fis a b, d g b, d g
    | c, e a b, d g a, c fis g, b e
    | b dis fis b, dis fis b, dis fis b, dis b'
    | e, g b b, e g e,2. \fermata
  }
}

celloii_ii = \relative {
  \time 12/8
  \key e \minor
  \clef bass
  \repeat volta 2 {
    e8 g b e, g b g b e g, b e
    | b dis fis a, b dis? g, b e dis,? fis b
    | e, g b e, g b a c e a, c e
    | fis, a d fis, a c g c b g b d
    | g, d b c d a' g,2.
  }
  \repeat volta 2 {
    gis8 b e gis, e' b' a, e' c' a, e' c'
    | fis,, d' a' fis, d' a' g, d' b' g, d' b'
    | c, e a b, d g a, c fis g, b e
    | b dis b' b, dis? b' b, dis? fis b, dis? b'
    | e, g b b, e fis e,2. \fermata
  }
}

celloiii = \relative {
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
    \header {
      piece = "III"
    }
    \new StaffGroup {
      <<
        \new Staff \celloi
        \new Staff \celloii_ii
        \new Staff \celloiii
      >>
    }
  }
}
