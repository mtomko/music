\version "2.24.3"

plus = \finger \markup \fontsize #6 "+"
% mi = \finger \markup { \fontsize #-4 "•" 1 }
mi = \finger "-1"
mii = \finger "-2"
miv = \finger "-4"
mdi = \finger "·1"
mdii = \finger "·2"
mdiv = \finger "·4"

\header {
  title = "Symphony no. 9, mvt IV"
  composer = "Ludwig van Beethoven"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

letterK = \relative {
  \time 6/8
  \key g \minor
  \clef bass
  \tempo "Allegro assai vivace alla Marcia"
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \set Score.currentBarNumber = 431
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
  \mark 11
  d'8\ff-1 \tweak direction #DOWN \textMark \markup { \small \italic "sempre" } 8 8 8 ees-2 f-1
  | f8 g-3 f-1 ees-4 d-2 c-1
  | bes8-1 a-1 bes-2 b-4 c-1 d
  | c8-1 f,\2-4 8 bes-4 bes,\4-1 8
  | f''4-4 f,8\2-1\upbow f4.~\sf\downbow
  | f4 g8-4\upbow g4.~\sf\downbow
  | g4 a8-4\downbow d4-4\upbow c8-1\upbow \break

  | bes4-2 r8 a4-1 r8 
  | a4-1 r8 g4-4 r8 
  | g4-4 r8 fis4-2 r8 
  | g4-4 r8 r4.
  | \compressMMRests R2.*12 
  | r8 r f\f-4\downbow bes4-4\upbow aes8-1\upbow
  | g8-0 aes-1 bes-4 8 8 8 \break 
  
  | bes8-1 c-4 bes-1 aes-4 g-2 f-4 
  | ees8-1 f-4 ees-1 e-2 f-1 g-4 
  | f8-1 c-1 8 c'-4 c,-1 8 
  | c'8\2-4 f,-1 8 f'-4 f,-1 8 
  | \repeat unfold 2 { f'-4 f,-1 8 }
  | g'8-4 g,-1 8 g'8-4 g,-1 8 \break 
  
  | aes'8-4 aes,-1 8 ees'-4 ees,\3-1 \tweak direction #DOWN \textMark \markup { \small \italic "sempre" } 8 
  | ees8 8 8 8 f-2 ges-4 
  | ges8 8 8 8 f-2 ees-4 
  | des8-1 8 8 8 ees-1 f-4
  | f8 8 8 8 ees-1 des-2 
  | c8-1 8 8 8 des-1 ees-4 \break 
  
  | ees8 f-1 ges-2 f-1 f'-4\downbow 8 
  | f4 bes,,8\upbow bes4.~\sf\downbow
  | bes4 c8-4\downbow c4.~\sf\upbow
  | c4 des8\3-4\upbow ges4\2-4\downbow f8-2\upbow 
  | ees4-1\downbow 8\downbow aes4\1-1\upbow ges8\2-4\upbow
  | f4-2 8 bes4\1-2 aes8\2-4 
  | ges4-1 8 ces4\1-1 bes8\2-4 
  | aes4-1 8 des4\1-1 ces8\1-2 \break 
  
  | bes8-1 aes\2-4 ges-1 des'-4 des,-1 8
  | ges4-1 r8 bes8\1-1\downbow 8 8 
  | bes8 ces-2 des-1 8 ees-4 des-1 
  | ces8-2 bes-1 aes\2-4 ges-1 8 8 
  | ges8 aes-4 bes\1-1 8 ces-2 bes-1 
  | aes8\2-4 ges-1 f-4 ees4-1 r8 \break 
  
  | \compressMMRests R2.*4
  | bes'8-1 8 8 8 c-2 des-4 
  | bes8-1 aes\2-4 ges-1 r4 r8
  | r4 r8 ges8-1\downbow 8 8 
  | g!8-2 g'-3 8 8 fis-4 e-1 
  | e8 d-2 cis-1 fis-4 fis,\3-1 8 \break 
  
  | d'8-1 8 8 8 e-4 fis-2 
  | fis8-2 g-3 fis-2 e-4 d-1 cis-4
  \bar "||" \mark \default \key d \major c8-2 b-1 e-4 4.~\sf
  | e4 fis8-4\upbow fis4\sf\downbow r8
  | fis,8\2-1\upbow 8 8 8 g-2 a-1
  | a8 b-4 a-1 g\3-4 fis-2 e-1 \break 
  
  | e8\upbow 8 dis'-2\upbow 4.~\sf\downbow
  | dis4 8\downbow e4-4\upbow 8\upbow 
  | cis4-1\downbow 8\downbow d4-2 8 
  | b4-1 8 cis4-4 8 
  | aes4\2 8 b4-4 8 
  | e8-4 8 8 d-1 cis-4 b-1
  | ais8-1 b-2 cis-2 8 8 8 \break 
  
  | cis8 d-4 cis-2 b-2 ais-1 gis-4 
  | gis,4-1 gis'8\2-4 4.~\sf 
  | gis4 8-1 ais4-4\sf r8 
  | fis,4-1 fis'8\2-4 4.~\sf
  | fis4 8-1 gis4\sf-4 r8 
  | b8\1-1 cis-4 d-1 8\sf 8 8 
  | d8 e-4 d-1 cis-1 d-2 cis-1 \break 
  
  | e8-1 fis-4 e-1 d-1 e-4 d-1 
  | fis8-2 g-3 fis-2 e-1 fis-4 e-1 
  | g,8\2-1 a-4 g-1 fis-1 g-2 fis-1 
  | a8-1 b-4 a-1 g-1 a-4 g-1 
  | g8 a g g,\4-1 a-4 g-1 
  | g8 a g fis-1 g-2 fis-1 \break 

  | fis4\downbow fis'8-1\upbow fis'4.~-4\downbow
  | fis4 8-4\downbow fis,4.~\sf-1\upbow
  | fis4 8-4\upbow fis,4.~\sf-1\downbow
  | fis4 fis'8-4\downbow 4.~\sf\upbow
  | fis4 8-1\upbow fis'4.~\sf-4\downbow
  | fis4 8\downbow fis,4.~\sf-1\upbow
  | fis4 8-4\upbow fis,4.~\sf-1\downbow
  | fis4 8\downbow fis'4.~\sf-4\upbow
  | fis4 r8 r4.
  \bar "||"

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

excerptIIalt = \relative {
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

excerptII = \relative {
  \time 6/4
  \key d \major
  \clef bass
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override Fingering.avoid-slur = #'outside
  \set Score.currentBarNumber = 709
  \mark 16
  b,8\ff-1 (fis-1 gis-4 ais-2 b-4 cis-\mdi) d-2 (cis-1 b-1 cis-4 d-0 e-1)
  | fis8-\mdii (g-4 fis-2 e-1 fis-4 e-1) d-0 (e-1 d-0 cis-\mdii d-4 cis-2)
  | cis8-4^\markup { \tiny "r.f." } (fis,-1 gis-4 ais-2 b-4 cis-\mdi) dis-4 (b-1 cis-4 dis-2 e-4 cis-\mdi) \break
  | fis8-1 (gis-4 fis-1 dis-\mdii e-4 dis-2) cis-\mdi (dis-4 cis-1 b-1 cis-4 b-1)
  | fis'8-4 (b,-1 cis-4 dis-2 e-4 fis-\mdi) gis-4 (b,-1 fis'-4 gis-2 a!-4 fis-\mdi)
  | a8\2-1 (b-4 a-1 gis-1 a-2 gis-1) fis-1 (gis-4 fis-1 e-1 fis-4 e-1)
  | b'8-4 (e,-\mdii gis-1 a-2 b-\mdiv e,-1\parenthesize -2) e'-\mdi (fis-4 e-1 d-1 e-4 d-1)
  | cis8-1 (e-\mdiv d-1 cis-\mdi d-2 cis-1) b-1 (cis-4 b-1 a-1 cis-4 b-1)
  | b8-4 (a-1 b-4 a-1) a,4-0 r2.
  \bar "||"
}

\book {
  \score {
    \layout {
      indent = 0.0
    }
    \letterK
  }

  \markup {
    "
    "
  }

  \score {
    \layout {
      indent = 0.0
    }
    \excerptI
  }

  \markup {
    "
    "
  }

  \score {
    \layout {
      indent = 0.0
    }
    \excerptII
  }

}
