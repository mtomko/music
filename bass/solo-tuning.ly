\version "2.24.3"

soloTuning =
\markup {
  \italic \tiny Tuning
  \score {
    \layout {
      indent = 0.0
    }
    \new Staff \with {
      \magnifyStaff #1/2
    } {
      \new Voice {
        \relative {
          \omit Score.TimeSignature
          \omit Score.BarLine
          \clef bass
          <<fis,1 b e a>>
        }
      }
    }
  }
}
