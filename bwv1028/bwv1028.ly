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
          | a16 g \acciaccatura g8 fis8.\trill\tenuto (g16-.) g8 g'4~\trill
          | g8 \acciaccatura g8 fis4~\trill fis8 \acciaccatura fis e4~\trill \break
          | e8 \acciaccatura e8 d4~\trill d8 \acciaccatura d8 c4~\trill
          | c16 a b c d c d e \acciaccatura b8 a8.\trill\tenuto (g16-.)
          | \mark 14 g8 d16 e d8 d b'16 (a) g b
          | a8 d,16 e d8 d c'16 (b) a c
          | b16 c d e c d b c d e c d \break
          | b16 c d b c d c4 r8
          | e,8 a b c4 r8
          | e,8 b' c d4 r8
          | a16 b c d b c a b c d b c
          | a8 e' b' \acciaccatura g8 fis4~\trill fis16 (e32 fis)
          | g4.~ g8 g16 (a) bes8 \break
          | a8. g16 f e f g \acciaccatura f8 e8.\trill\tenuto (d16-.)
          | \mark \default d2.~
          | d2.~
          | d2.~
          | d4.~ d8 g 16 f e d
          | c8 g16 a g8 g e'16 (d) c e
          | d8 g,16 a g8 g f'16 (e) d f \break
          | e16 f g a f g e f g a f g
          | e16 f g e f g a, b c a b c
          | d4.~ d16 e f d e f
          | b,16 c d b c d g,4.~ \break
          | g16 a b g a b e, f g e f g
          | c,4. (c'16) d e c d e
          | a,16 b c a b c d e f d e f
          | b,16 c d b c d e f g e f g \break
          | c,16 d e c d e  f4.~
          | f16 e f g e f d e f g e f
          | \mark \default d8 g,16 a g8 g f'16 (e d f)
          | \appoggiatura f8 e2.~\trill
          | e8 f,16 g f8 f e'16 (d) c e \break
          | \appoggiatura e8 d2.~\trill
          | d8 e,16 f e8 e d'16 (c) b d
          | \appoggiatura d8 c2.~\trill
          | c8 d,16 e d8 d c'16 (b) a c
          | \appoggiatura c8 b2.\trill
          | \mark \default r8 g16 a g8 g e'16 (d) c e \break
          | d8 g,16 a g8 g f16 (e) d f
          | e16 f g a f g e f g a f g
          | e16 f g e f g f g a f g a
          | d4.~ d16 e f d e f \break
          | b,16 c d b c d g,4.~
          | g16 a b g a b e, f g e f g
          | c,4.~ c16 d e c d e
          | f16 g a f g a d, e f d e f
          | g16 a b g a b e, f g e f g \break
          | a bes c d bes c  a bes c a bes c
          | f,16 g a bes g a f g a f g a
          | d,16 e f d e f e8 g c
          | b8 d b g b d g2.~
          | g8 e c f d b \break
          | e8 c a d b g
          | c8 a f  b16 c d8 g,
          | c16 d \acciaccatura c8 b8.\trill\tenuto (c16-.) c8 e,16 f e8
          | \mark \default e8 c'16 (b) a c b8 e,16 f e8
          | e8 d'16 (c) b d c d e f d e \break
          | c16 d e f d e c b a g fis e
          | fis8 b fis g c g
          | a8 a'4~ a16 (g\tenuto) fis e f8~
          | f8 e dis e b, <<dis' fis>>
          | <<
            \voiceOne {
              g4. g4. (
              | fis4.) fis4. (
              | e4.) e4. (
              | dis8) s8 s8 s4.
            }
            \new Voice {
              \voiceTwo
              e4. c4.~
              | c4. b4.~
              | b4. a4.~
              | a16 b16 c d b c a b c a b c
            }
          >>
          | fis,16 g a b g a fis g a fis g a
        }
      }
    }
  }
}
