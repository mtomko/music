\version "2.24.3"


\header {
  title = "Symphony no. 1"
  composer = "Gustav Mahler"
  instrument = \markup { \tiny "Kontrabaß" }
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

plus = \finger \markup \fontsize #6 "+"
mi = \finger "-1"

luftpause = { \tweak Y-offset 4 \tweak X-offset 3 \breathe }

\book {
  \score {
    \layout {
      \context {
        \Score
        \omit BarNumber
      }
      top-margin = 0.0
      indent = 0.0
    }
    \relative {
      \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
      \romanStringNumbers
      \set stringNumberOrientations = #'(down)
      \override Fingering.avoid-slur = #'outside
      \numericTimeSignature
      \time 4/4
      \clef bass
      \key a \minor
      d'4\1-1\downbow (e-2) f8-4 (e-2 d4-1) \luftpause
      | d4 (e) f8 (e d4) \luftpause

      | f4-4 (g-\plus) a2-1 \luftpause
      | f4\2-2 (g\1-\plus\flageolet) a2-1 \luftpause 
      
      \break

      | a8.-1 ([bes16-2 a8-1 g8-\plus]) f\2-2 (e-1 d4-\mi\flageolet) \luftpause
      | a'8.\1-\mi ([bes16-2 a8-1 g8-\plus]) f\2-2 (e-1 d4-\mi) \luftpause

      | a'4\1-3 (a,\2-1) d2-\mi\flageolet \luftpause
      | a'4\1-3 (a,\2-1) d2-\mi \luftpause

      \bar "||"
    }
  }
}

