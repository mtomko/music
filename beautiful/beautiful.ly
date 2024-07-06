\version "2.24.3"

menoF = \markup { \tiny \italic meno \dynamic f }

\header {
  title = "Beautiful Sounds"
  composer = "Arnold Jacobs"
  piece = "Contrabass"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

\layout {
  indent = 0.0
  \context {
    \Score
    \omit BarNumber
  }
}



notes = \relative {
  bes,8 (c bes a) bes (d f a) bes2. r4
  | bes8 (c bes a) bes (g f d) bes2. r4 \break
}

\book {
  \score {
    \new Staff {
      \set Staff.explicitClefVisibility = #end-of-line-invisible
      \new Voice {
        \tempo 4 = 60
        \numericTimeSignature
        \time 4/4
        \key c \major
        \clef bass
        \notes
        \transpose bes ees' { \notes }
        \transpose bes aes' { \notes }
        \transpose bes des' { \notes }
        \transpose bes ges { \notes }
        \transpose bes b { \notes }
        \transpose bes e' { \notes }
        \transpose bes a' { \notes }
        \transpose bes d' { \notes }
        \transpose bes g { \notes }
        \transpose bes c' { \notes }
        \transpose bes f' { \notes } \bar "||" 
        \pageBreak
        \clef treble
        \transpose bes bes' { \notes }
        \transpose bes ees'' { \notes }
        \transpose bes aes'' { \notes }
        \transpose bes des'' { \notes }
        \clef bass
        \transpose bes ges' { \notes }
        \clef treble
        \transpose bes b' { \notes }
        \transpose bes e'' { \notes }
        \clef treble
        \transpose bes a'' { \notes }        
        \transpose bes d'' { \notes }
        \clef bass
        \transpose bes g' { \notes }
        \clef treble
        \transpose bes c'' { \notes }
        \transpose bes f'' { \notes }
        \fine
      }
    }
  }
}
