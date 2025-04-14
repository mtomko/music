\version "2.24.3"

plus = \finger \markup \fontsize #6 "+"

\header {
  title = "Symphony no. 39"
  composer = "Wolfgang Amadeus Mozart"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

excerptI = \relative {
  \time 2/2
  \key ees \major
  \clef bass
  \tempo "Adagio"
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \set Score.currentBarNumber = 13
  bes,8\p [r16 bes] \repeat unfold 3 { bes8 [r16 bes] }
  | bes2\f r8 a32 (bes c d ees [f g aes!] bes c d ees 
  | f8) [r16 ees] d8 [r16 c16] bes8 [r16 aes] g8 [r16 f]
  | ees2 r8 bes32\p (c d ees f [g aes bes] c d e f 
  | g8) [r16 f] e8 [r16 des] c8 [r16 bes] aes8 [r16 g]
  | f2 r8 des,32\f (ees f ges aes [bes c des] ees f g aes 
  | bes8) [r16 aes] g8 [r16 f] ees8 [r16 des] c8 [r16 bes]
  | aes4 r8. aes16 bes4 r8. bes16 c4 r r2
}

excerptII = \relative {
  \time 3/4
  \key ees \major
  \clef bass
  \tempo "Allegro"
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \set Score.currentBarNumber = 40
  r4 ees4\p (g)
  | bes2.~
  | bes4 g' (f)
  | ees2 (d4)
  | r d (f)
  | bes,2.~ 
  | bes4 d, (f)
  | aes2 (g4) %\break
  | r4 f (c')
  | d,2 (ees4)
  | r4 f (c')
  | d,2 (ees4) \break
  | aes4 r r 
  | bes4 r r
  | \mark 1 \repeat tremolo 6 es,8\f  
  | g8 8 8 8 ees 8 8
  | bes8 8 8 8 aes8 8
  | \stemDown g8 8 g'8 8 ees8 8 
  | \stemNeutral bes8 8 a8 8 aes8 8 
  | \stemDown g8 8 ees'8 8 g8 8 \break
  | bes8 8 a8 8 aes8 8 
  | g4 r r 
  | r8 g g8 8 8 8
  | \repeat tremolo 6 aes8
  | \repeat tremolo 6 bes8
  | \repeat tremolo 6 c8
  | des2.\tenuto
  | r8 c8 8 8 8 8 \break
  | \repeat tremolo 6 a8
  | bes4 r r
  | r  bes-. bes,-.
  | \mark \default \repeat unfold 3 { ees8-. g-. }
  | ees2. 
  | \repeat unfold 3 { f8-. aes-. }
  | f2. \break
  | \repeat unfold 3 { ees8-. g-. }
  | ees2. 
  | \repeat unfold 3 { ees8-. f-. }
  | ees2. 
  | \repeat unfold 3 { d8-. f-. }
  | d2. 
  | \repeat unfold 3 { g8-. bes-. } \break
  | g2. 
  | \repeat unfold 4 { \repeat tremolo 6 f8 }
}

\book {
  \score {
    \layout {
      %indent = 0.0
    }
    \header {
      piece = "Excerpt I"
    }
    \excerptI
  }
  \score {
    \layout {
      %indent = 0.0
    }
    \header {
      piece = "Excerpt II"
    }
    \excerptII
  }

}
