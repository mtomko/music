\version "2.24.3"

\header {
  title = "Sonata II in D major"
  opus = "BWV 1028"
  composer = "Johann Sebastian Bach"
  instrument = "Contrabass"
  tagline = #f
  meter = \markup {
    \italic \tiny Tuning
    \score {
      \layout {
        indent = 0.0
      }
      \header {
        piece = "Tuning"
        opus = ""
      }
      \new Staff \with {
        \magnifyStaff #4/7
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
  arranger = \markup { \tiny "(1685 - 1750)" }
  copyright = \markup { \small \italic "Engraving by Mark Tomko" }
}

\paper {
  #(set-paper-size "letter")
}

\include "bass/adagio.ly"
\include "bass/allegro.ly"
\include "bass/andante.ly"
\include "bass/allegro2.ly"

\book {
  \score {
    \layout {
      top-margin = 0.0
    }
    \header {
      piece = "Adagio"
    }
    \new Staff {
      \new Voice {
        \adagioBassNotes
      }
    }
  }

  \score {
    \header {
      piece = "Allegro"
      opus = ""
    }
    \new Staff {
      \new Voice {
        \allegroBassNotes
      }
    }
  }

  \score {
    \header {
      piece = "Andante"
      opus = ""
    }
    \new Staff {
      \new Voice {
        \andanteBassNotes
      }
    }
  }

  \score {
    \header {
      piece = "Allegro"
      opus = ""
    }
    \new Staff {
      \new Voice {
        \allegroIIBassNotes
      }
    }
  }
}
