\version "2.24.3"

menoF = \markup { \tiny \italic meno \dynamic f }

\header {
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

\layout {
  indent = 0.0
}

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative {
          \clef bass
          \time 2/4
          \key g \minor
          \sectionLabel "Solo mineur"
          \set Score.currentBarNumber = #38
          \repeat volta 2  {
            \partial 8 d8
            | g8 g16. a32 fis8 fis 
            \grace { \bar "" bes8 \bar "|" } bes8. a16 g8 d16. g32
            | bes8 bes16. c32 a8 a 
            \grace { \bar "" d8 \bar "|" } d8. c16 bes8 g16. d'32
            | g8 g f f
            | ees8. d16 c8 f \break
            | d16 bes g c bes8 a
            | a4 (bes8)
          }
          \repeat volta 2 {
            \partial 8 d,16. bes'32
            | d8 d16. ees32 c8 c16. d32 \noBreak
            | b16. (f'32) f8~f16 aes (g f)
            | ees8 ees16. f32 d8 d16. e32
            | cis16. (g'32) g8~ g16 bes (a g) \break
            | fis16 a8 [d, g] f16
            | f16 (ees d c) bes16. c32 a8
            | \partial 4. a4 (g8) \noBreak
          }
          | \partial 8 r8 
          | \sectionLabel Majeur \key g \major g8_\markup { \italic Pizzicato } r d r
          | r16 g e cis d8 r
          | r8 r16 e'16 c,8 r
          | r8 d'8 d,8 r 
        }
      }
    }
  }
}
