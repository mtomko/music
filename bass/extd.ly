\version "2.24.3"

extD =
\markup {
  \italic \tiny "C ext."
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
          <<d, a' d g>>
        }
      }
    }
  }
}
