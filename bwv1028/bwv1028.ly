\version "2.24.3"

\include "bass/solo-tuning.ly"
\include "bass/adagio.ly"
\include "bass/allegro.ly"
\include "bass/andante.ly"
\include "bass/allegro2.ly"

\header {
  title = "Sonata II in D major"
  opus = "BWV 1028"
  composer = "Johann Sebastian Bach"
  instrument = "Contrabass"
  meter = \soloTuning
  arranger = \markup { \small "(1685 - 1750)" }
  copyright = \markup { \tiny \italic "Engraving Ⓒ Mark Tomko, 2024" }
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

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
