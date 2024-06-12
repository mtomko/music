\version "2.24.3"

\header {
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
  print-all-headers = ##t
}

\layout {
  indent = 0.0
}

rabbathnotes = \relative c'' {
  \clef treble
  \time 4/4
  \key c \major
  \tempo Presto
  \tuplet 6/4 { g16 (aes g aes bes aes}  \tuplet 6/4 { g16 aes g aes bes aes }) \tuplet 6/4 { g (a g a bes a} \tuplet 6/4 {g a g a bes a})
  | \tuplet 6/4 { g (a g a c a} \tuplet 6/4 { g a g a c a}) \tuplet 6/4 { g (b g b c b} \tuplet 6/4 { g b g b c b}) \break
  % line 2
  \omit TupletNumber {
    | \tuplet 6/4 { g (bes g bes cis bes } \tuplet 6/4 { g bes g bes cis bes }) \tuplet 6/4 { g (bis g bis cis bis } \tuplet 6/4 { g bis g bis cis bis })
    | \tuplet 6/4 { g (b g b d b } \tuplet 6/4 { g b g b d b }) \tuplet 6/4 { g (cis g cis d cis } \tuplet 6/4 { g cis g cis d cis }) \break
    % line 3
    \bar "||" \tuplet 6/4 { g (aes g aes a aes } \tuplet 6/4 { g aes g aes a aes }) \tuplet 6/4 { g (a-2 g a bes-3 a } \tuplet 6/4 { g a g a bes a })
    | \tuplet 6/4 { g (a-1 g a bes-2 a } \tuplet 6/4 { g a g a bes a }) \tuplet 6/4 { g (bes g bes b bes } \tuplet 6/4 { g bes g bes b bes }) \break
    % line 4
    | \tuplet 6/4 { g (bes g bes b bes } \tuplet 6/4 { g bes g bes b bes }) \tuplet 6/4 { g (b g b c b } \tuplet 6/4 { g b g b c b })
    | \tuplet 6/4 { g (b g b c b } \tuplet 6/4 { g b g b c b }) \tuplet 6/4 { g (c g c des c } \tuplet 6/4 { g c g c des c }) \break
    % line 5
    | \tuplet 6/4 { g (c g c des c } \tuplet 6/4 { g c g c des c }) \tuplet 6/4 { g (cis g cis d cis } \tuplet 6/4 { g cis g cis d cis })
    \bar "||" \repeat unfold 2 { \tuplet 6/4 { g (a g a b a} \tuplet 6/4 { b c b a b a }) } \break
    | \repeat unfold 2 { \tuplet 6/4 { b (c b a b a } \tuplet 6/4 { g a g a b a}) }
    | \tuplet 6/4 { g (a b c b a } \tuplet 6/4 { g a b c b a }) \tuplet 6/4 { c (b a g a b } \tuplet 6/4 { c b a g a b }) \fine
  }
}

petracchiscalenotes = \relative c {
  \autoBreaksOff
  \clef bass
  \time 4/4
  \key c \major
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  % line 1
  \repeat volta 2 {
    \once \override Staff.TimeSignature.stencil = ##f
    \time 12/8
    \bar ".|:" g8-1\4 (b-4 d-1\3  f-1 g-4 b-3) \clef treble d_\markup { \small \italic "s.cr" }\thumb (f-2 g b-3 d\flageolet f-1) 
    | g-3 (f d\flageolet  b-3 g\flageolet f-2) \clef bass d\flageolet (b_\markup { \small \italic "s.cr" }-3 g-4 f-1 d\4-4 b-1 ) \break
  }
  % line 2
  \repeat volta 2 {
    | <<\parenthesize c,\parenthesize-0 c'-3>>  e,-0 g-4 bes-1 c-4 e g-0 bes-1\2 c-4 \clef treble e g bes
    | c-3 bes g\flageolet \clef bass e-3 c-4 bes-1 g-0 e-3\2 c bes g-4 e-0 \break
  }
  % line 3
  \repeat volta 2 {
    |f-1 a-0 c-4\4 ees-1 f-4 a-3 \clef tenor c-4 ees-1 g \clef treble a_\markup { \small \italic cr }\thumb c-3 ees-1 
    |f-3 ees c-3\2 a\flageolet f-3\2 ees-1 \clef bass c-3 a\flageolet f-4 ees-1 c-4\4 a-1 \break
  }
  % line 4
  \repeat volta 2 {
    | bes-3 d-1 f-4 aes-1 bes-4 d\flageolet \clef treble f-3 aes-1 bes-1 d\thumb f-3 aes-1 
    | bes-2 aes-1 f\thumb d\flageolet-1\2 bes-3\1 aes-1 \clef bass f-3\2 d\flageolet bes-4 aes-1 f-4\3 d\flageolet\2 \break
  }
}

\book {
  \score {
    \header {
      composer = "François Rabbath"
      subtitle = "Nouvelle Technique de la Contrabass 2"
      piece = "Ex. 5"
    }
    \new Staff {
      \rabbathnotes \pageBreak
    }
  }
  \score {
    \header {
      subtitle = "Simplified Higher Technique"
      composer = "Petracchi"
      piece = \markup { 17. \italic "Dominant Sevenths" }
    }
    \new Staff {
      \petracchiscalenotes
    }
  }
}


