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
  \bookOutputSuffix "edited"
  \score {
    \layout {
      top-margin = 0.0
    }
    \header {
      piece = "Adagio"
    }
    \new Staff {
      \new Voice {
        \romanStringNumbers
        \set stringNumberOrientations = #'(down)
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
        \romanStringNumbers
        \set stringNumberOrientations = #'(down)
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
        \romanStringNumbers
        \set stringNumberOrientations = #'(down)
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
        \romanStringNumbers
        \set stringNumberOrientations = #'(down)
        \allegroIIBassNotes
      }
    }
  }
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
        \omit Voice.StringNumber
        \omit Staff.Fingering
        \set scriptDefinitions = #(cons*
                                   `(upbow . ,(acons 'stencil #f (assoc-get 'upbow default-script-alist)))
                                   `(downbow . ,(acons 'stencil #f (assoc-get 'downbow default-script-alist)))
                                   default-script-alist)
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
        \set scriptDefinitions = #(cons*
                                   `(upbow . ,(acons 'stencil #f (assoc-get 'upbow default-script-alist)))
                                   `(downbow . ,(acons 'stencil #f (assoc-get 'downbow default-script-alist)))
                                   default-script-alist)
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
        \set scriptDefinitions = #(cons*
                                   `(upbow . ,(acons 'stencil #f (assoc-get 'upbow default-script-alist)))
                                   `(downbow . ,(acons 'stencil #f (assoc-get 'downbow default-script-alist)))
                                   default-script-alist)
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
        \set scriptDefinitions = #(cons*
                                   `(upbow . ,(acons 'stencil #f (assoc-get 'upbow default-script-alist)))
                                   `(downbow . ,(acons 'stencil #f (assoc-get 'downbow default-script-alist)))
                                   default-script-alist)
        \allegroIIBassNotes
      }
    }
  }
}
