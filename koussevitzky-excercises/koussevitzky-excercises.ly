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
  title = "Concerto for Double Bass in F# Minor"
  subtitle = "Preparatory Exercises"
  composer = "Serge Koussevitzky"
  tagline = #f
}

\layout {
  indent = 0.0
}

\paper {
  #(set-paper-size "letter")
}

tripletsI = \relative {
  \time 12/8
  \key e \minor
  \clef tenor
  \numericTimeSignature
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \set Score.currentBarNumber = 58

  d4.-2 f-4 a-2 d-2 
  | \clef treble f-4 a-1 d-1 f-3
  | cis-\plus e-3 bes-2 g-3 \break
  
  | e-\miv cis-1 bes'-2 g-\plus
  | d-2 fis-4 a-1 c-1 \break 
  
  | ees-3 c-1 a-2 fis-\plus 
  | g-1 b-1 d-1 f-3 
  | d-1 b-2 gis-\plus d'-3
  \bar "||"
}

tripletsII = \relative {
  \time 12/8
  \key e \minor
  \clef tenor
  \numericTimeSignature
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \set Score.currentBarNumber = 58

  d4.-2 (f-4) a-2 (d-2) 
  | \clef treble f4.-4 (a-1) d2.-1
  | d4. d8 (g,4)-\plus g8 (e4~-\plus 8 cis4-1) \break
  
  | e4.-\miv (cis8-1~ 8 g'8-\plus) 4.~ (g8 f4-2) 
  | d4.-2 fis-4 a-1 c-1 \break 
  
  | ees-3~ (ees8 bes4-3) 2.
  | 4.-1 (b-1) d2.-1
  | d8 (c4-3 4.) 4.~ 8 (bes4-2)
  \bar "||"
}

yrdoublestops = \relative {
  \time 4/4
  \key e \minor
  \clef treble
  \numericTimeSignature
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)

  e'4 g <<b2 g>>
  | b4 g <<g2 e>>
  | e4 g <<c2 g>>
  | c4 g <<g2 e>> \break 

  | fis4 a <<cis2 a>>
  | cis4 a <<a2 fis>>
  | fis4 a <<d2 fis,>>
  | d'4 a <<a2 fis>> \break 
  
  | g4 bes <<d2 bes>>
  | d4 bes <<bes2 g>>
  | g4 bes <<ees2 g,>>
  | ees'4 bes <<bes2 g>> \break 

  | g4 b <<ees2 b>>
  | ees4 b <<b2 g>>
  | g4 b <<e!2 g,>>
  | e'!4 b <<b2 g>> \break 

  \bar "||"
}


\book {
  \score {
    \header {
      piece = "Triplets I"
    }
    \tripletsI
  }

  \score {
    \header {
      piece = "Triplets II"
    }
    \tripletsII
  }

  \score {
    \header {
      piece = "Why are double stops?"
    }
    \layout {
      \context {
        \Score
        \omit BarNumber
      }
    }
    \yrdoublestops
  }

}
