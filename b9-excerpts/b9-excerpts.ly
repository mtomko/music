\version "2.24.3"

plus = \finger \markup \fontsize #6 "+"
% mi = \finger \markup { \fontsize #-4 "•" 1 }
mi = \finger "-1"
mii = \finger "-2"
miv = \finger "-4"

\header {
  title = "Symphony no. 9, mvt IV"
  composer = "Ludwig van Beethoven"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

excerptI = \relative {
  \time 6/4
  \key d \major
  \clef bass
  \tempo "Allegro energico sempre ben marcato"
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override Fingering.avoid-slur = #'outside
  \set Score.currentBarNumber = 663
  cis'8-3\2\ff (e,-\plus\3 fis-1 gis-3 a-\plus\2 b-1) cis-3 (b-1 a-\plus b-1 cis-3 d-\plus\1)
  | e8-1 (fis-3 e-1 d-\plus e-1 d-\plus) cis-2 (d-4 cis-2 b-1 cis-4 b-1)
  | a8-\miv (cis,-\mi d-2 e-\miv fis-\mi gis-\mii) a-4 (gis-2 fis-\mi gis-\mii a-4 b-\mi) \break
  | cis8-\mii (d-4 cis-2 b-\mi cis-4 b-1) a-1 (b-4 a-1 g!-0 a-1 g-0)
  | fis8-4 (a,-0 b-1 cis-4 d-0 e-1) fis-4 (e-1 d-0 e-1 fis-4 gis-\mi) \break
  | a8-\mi (b-4 a-1 g!-0 a-1 g-0) fis-\mii (g-4 fis-2 e-\mi fis-4 e-1)
  | d8-0 (e-1 d-0 cis-\mii d-4 cis-2) b-\mi (cis-4 b-1 a-0 b-1 a-0)
  | d-\miv (a-0 b-\mi cis-\mii d-4 cis-2) d-4 (fis-2 a-4 cis-2) d4-4\ff \laissezVibrer
  \bar "||"
}

excerptII = \relative {
  \time 6/4
  \key d \major
  \clef bass
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override Fingering.avoid-slur = #'outside
  \set Score.currentBarNumber = 709
  \mark 16
  b,8\ff (fis gis ais b cis) d (cis b cis d e)
  | fis8 (g fis e fis e) d (e d cis d cis)
  | cis8 (fis, gis ais b cis) dis (b cis dis e cis) \break
  | fis8 (gis fis dis e dis) cis (dis cis b cis b)
  | fis'8 (b,\3 cis dis-2 e-4 fis-1) gis-3 (b,-\plus\4 fis'-1 gis-3 a!-\plus\flageolet fis-1)
  | a8-\plus\flageolet (b-1 a-\plus\flageolet gis-2\4 a-3 gis-2) fis-1 (gis-3 fis-1 e-\plus\flageolet fis-1 e-\plus\flageolet)
  | b'8-1\3 (e,-\plus\flageolet\4 gis-3 a-\plus\flageolet\3 b-1 e,-\plus\flageolet\4) e'-1\2 (fis-3 e-1 d-\plus\flageolet e-1 d-\plus\flageolet)
  | cis8-\plus (e-3 d-1 cis-\plus d-1 cis-\plus) b-1 (cis-3 b-1 a-\plus cis-3 b-1)
  | b8-1 (a-\plus b-1 a-\plus) a,4-0 r2.
  \bar "||"
}

\book {
  \score {
    \layout {
      indent = 0.0
    }
    \excerptI
  }
  \score {
    \layout {
      indent = 0.0
    }
    \excerptII
  }

}
