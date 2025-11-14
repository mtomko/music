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
    \override Fingering.avoid-slur = #'outside
    \set stringNumberOrientations = #'(down)
    \set Score.rehearsalMarkFormatter = #format-mark-numbers
    \numericTimeSignature
    \mark 9
    g,2\ff~-1 (\tupletDown \tuplet 3/2 { g8 bes-2\upbow ees-2} \tuplet 3/2 { g-1 bes-\miv g'-3\flageolet }
    | c,2\2-4)\downbow ces4-2 (bes-1)
    | a,2~-0 (\tuplet 3/2 { a8 c-2 f-2 } \tuplet 3/2 { a-1 c-\miv a'-\mi\flageolet }
    | d,1-1) \break 
    | c,2~\4-4 (\tuplet 3/2 { c8 ees-1 aes-2 } \clef tenor \tuplet 3/2 { c-1 ees-\plus c'-3) } 
    | b,1-1\accent
    | c,2~-4 (\tuplet 3/2 { c8 ees-1 aes-2 } \clef tenor \tuplet 3/2 { c-1 ees-\plus c'-3) }
    | f,1-1\< \break 
    | \mark \default \clef bass \tuplet 3/2 { bes,,8\fff-1 (ees-1 g-4 } bes4~-1\upbow \tuplet 3/2 { bes8 c-4\downbow bes-1 } ees4~-4
    | \tuplet 3/2 { ees8) c-1\upbow (d-4 } \clef tenor \tuplet 3/2 { ees8-1 f-4 fis-2 } g4.-3\downbow) g8-\plus\flageolet\upbow (
    | bes8-3) a16-.-3 aes16-.-2 g4-1~8 f16-.-4 e-.-2 ees8-.-1 d16-.-4 c-.-1 \break
    <<
      {  
         | \once \omit Staff.TimeSignature bes2.\> b4 
         | c2\! \clef bass f,\accent\f \cresc
         | g2\accent\! aes\accent 
         | \mark \default bes1\startTrillSpan\ff 
         | bes1  
         | bes1 
         | bes2~\acciaccatura a8\downbow bes8\stopTrillSpan bes,8 8 8
      }
      \new Staff {
        \clef tenor
        \key c \minor
        \once \omit Staff.TimeSignature
        \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
        bes'2. b4 
        | f2 \clef bass f,\accent 
        | g2\accent a\accent
        | bes1\startTrillSpan 
        | bes1 
        | bes1 
        | bes2~\acciaccatura a8 bes8\stopTrillSpan bes8 8 8
      }
    >> \break
    | ees,2~\ff (\tuplet 3/2 { ees8 bes'-2 ees-2 } \tuplet 3/2 { g8-1 bes-\miv g'-3\flageolet }
    | c,2.\2-4) ees8.-1 (bes'16-3) 
    | bes2. g4\upbow (
    | ees8) ees,8\tenuto\upbow \repeat unfold 6 ees8\tenuto \break
    | \mark \default c,2~\ff (\tuplet 3/2 { c8 g'-1 c-1 } \tuplet 3/2 { ees8-2 g-1 ees'-\miv } 
    | aes,2.-1) c8.-1 (g'16-3) 
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
