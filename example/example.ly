\version "2.24.3"

\layout {
  indent = 0.0
}

\score {
  \new Staff {
    \relative {
      \clef bass
      \time 6/8
      \key c \major
      fis'8 e dis e b <<dis!-3 fis-1>>
      | <<
        \voiceOne {
          g4.-1 g4.-1 (
          | fis4.-1) fis4.-3 (
          | e4.-2) e4.-4 (
          | dis8-2) s8 s8 s4.
        }
        \new Voice {
          \voiceTwo
          e4.-3 c4.~\thumb
          | c4.-\thumb b4.~-1
          | b4.-1 a4.~-1
          | a16-1 b16 c d b c a b c a b c
        }
      >> \oneVoice \break
      | \tieDown fis8 e dis e b <<dis!-3 fis-1>>
      | <<g4.-1  e4.-3>> <<g4.-1 ( c,4.~\thumb>>
      | <<fis4.-1) c4.\thumb>> <<fis4.-3 ( b,4.~-1>>
      | <<e4.-2) b4.-1>> <<e4.-4 ( a,4.~-1>>
      | <<
        \voiceOne {
          \stemDown
          a16-1 b16 c d b c a b c a b c
        }
        \new Voice {
          \voiceTwo {
          \stemUp
           dis8-2) \stemNeutral s8 s8 s4.
          }
        }
      >> \oneVoice 
    }
  }
}

