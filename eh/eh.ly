\version "2.24.3"

plus = \finger \markup \fontsize #6 "+"
% mi = \finger \markup { \fontsize #-4 "•" 1 }
mi = \finger "-1"
mii = \finger "-2"
miv = \finger "-4"
mdi = \finger "·1"
mdii = \finger "·2"
mdiv = \finger "·4"

\header {
  title = "Ein Heldenleben"
  composer = "Richard Strauss"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

nine = \new StaffGroup {
  \relative {
    \time 4/4
    \key c \minor
    \clef bass
    \tempo \markup { \small Lebhaft bewegt } 4 = 108
    \romanStringNumbers
    \set stringNumberOrientations = #'(down)
    \set Score.rehearsalMarkFormatter = #format-mark-numbers
    \numericTimeSignature
    \mark 9
    g,2\ff~ (\tupletDown \tuplet 3/2 { g8 bes\upbow ees} \tuplet 3/2 { g bes g' }
    | c,2)\downbow ces4 (bes)
    | a,2~ (\tuplet 3/2 { a8 c f } \tuplet 3/2 { a c a' }
    | d,1)
    | c,2~ (\tuplet 3/2 { c8 ees aes } \clef tenor \tuplet 3/2 { c ees c') } \break
    | b,1\accent
    | c,2~ (\tuplet 3/2 { c8 ees aes } \clef tenor \tuplet 3/2 { c ees c') }
    | f,1\<
    | \mark \default \clef bass \tuplet 3/2 { bes,,8\fff (ees g } bes4~ \tuplet 3/2 { bes8 c bes } ees4~ \break
    | \tuplet 3/2 { ees8) c (d } \clef tenor \tuplet 3/2 { ees8 f fis } g4.) g8 (
    | bes8) a16-. aes16-. g4~8 f16-. e-. ees8-. d16-. c-. \break
    <<
      {  bes2.\> b4 
         | c2 \clef bass f,\accent\f
         | g2\accent aes\accent 
         | \mark \default bes1\startTrillSpan\ff 
         | bes1  
         | bes1 
         | bes2~\acciaccatura a8 bes8\stopTrillSpan bes,8 8 8
      }
      \new Staff {
        \clef tenor
        \key c \minor
        \once \omit Staff.TimeSignature
        bes'2. b4 
        | f2 \clef bass f,\accent 
        | g2\accent a\accent
        | bes1\startTrillSpan 
        | bes1 
        | bes1 
        | bes2~\acciaccatura a8 bes8\stopTrillSpan bes8 8 8
      }
    >> \break
    | ees,2~ (\tuplet 3/2 { ees8 bes' ees } \tuplet 3/2 { g8 bes g' }
    | c,2.) ees8. (bes'16) 
    | bes2. g4 (
    | ees8) ees,8\tenuto\upbow \repeat unfold 6 ees8\tenuto 
    | \mark \default c,2~ (\tuplet 3/2 { c8 g' c } \tuplet 3/2 { ees8 g ees' } \break 
    | aes,2.) c8. (g'16) 
    | g2. ees4 (
    | c8) c g g ees ees c c 
    | aes1\ff\< (
    | aes'8)\! r8 r4 r2 \fine 
  }
}


\book {
  \score {
    \layout {
      \context {
        \override MeasureCounter.font-size = -5
        \consists Measure_counter_engraver
      }
      indent = 0.0
    }
    \nine
  }

}
