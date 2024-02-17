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
        \relative {
          \clef bass
          \time 6/8
          \key c \major
          \set Score.rehearsalMarkFormatter = #format-mark-alphabet
          g8 c d e4 r8
          | g,8 d' e f4 r8
          | c16 d e f d e c d e f d e
          | c16 d e d e f d e f d e f
          | e8 f,16 g f8 f8 e'16 (d) c e \break
          | d8 g,16 a g8 g f'16 (e) d f
          | e16 f g a f g e f g a f g
          | e16 f g f g a d, e f e f g
          | c,16 d e d e f b, c e c d e \break
          | a,16 b c b c d b8 a16 (g) c8~
          | c8 \acciaccatura c b8.\trill (a32 b) c16 e, f g a g
          | a16 b a g fis e fis8 g16 a b8
          | a16 g \acciaccatura g8 fis8.\trill\tenuto (g16\staccato) g8 g'4~\trill
          | g8 \acciaccatura g8 fis4~\trill fis8 \acciaccatura fis e4~\trill \break
          | e8 \acciaccatura e8 d4~\trill d8 \acciaccatura d8 c4~\trill
          | c16 a b c d c d e \acciaccatura b8 a8.\trill\tenuto (g16\staccato)
        }
      }
    }
  }
}
