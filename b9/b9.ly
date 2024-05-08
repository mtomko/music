\version "2.24.3"


\header {
  title = "Ode to Joy"
  composer = "Ludwig van Beethoven"
  instrument = "Violoncello"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

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
      \time 4/4
      \clef bass
      \key d \major
      | fis4 fis4 g4 a
      | a4 g fis e
      | d d e fis
      | fis4. (e8) e2 \break
      | fis4 fis g4 a
      | a4 g fis e
      | d4 d e fis
      | e4. (d8) d2 \break
      | e4 e fis d
      | e4 fis8 g fis4 d
      | e4 fis8 g fis4 d
      | d4 e a, fis'~ \break
      | fis4 fis g a
      | a4 g fis g8 e
      | d4 d e fis
      | e4. (d8) d4 a'^\markup { \italic "solo" } \break
      | g4. (fis8) fis4 d'
      | c4. (b8) b4 g'8 (e)
      | d8 (cis? e cis) b (a b cis)
      | d8 (fis e cis) d4 r \break
      | fis,4^\markup { \italic "tutti" } fis4 g4 a
      | a4 g fis e
      | d d e fis
      | fis4. (e8) e2 \break
      | fis4 fis g4 a
      | a4 g fis e
      | d4 d e fis
      | e4. (d8) d2 \break
      | e4 e fis d
      | e4 fis8 g fis4 d
      | e4 fis8 g fis4 d
      | d4 e a, fis'~ \break
      | fis4 fis g a
      | a4 g fis g8 e
      | d4 d e fis
      | e4. (d8) d2 \fine
    }
  }
}

