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

plus = \finger \markup \fontsize #6 "+"

cr = \markup { \small \italic "cr" }
scr = \markup { \small \italic "s.cr" }

bradetichthirdsfourths = \relative c'' {
  \clef treble
  \time 3/2
  \key g \major
  \repeat volta 2 { g8-\plus (b-2-3) b-2-3 (g-\plus) g-\plus (b-2-3) b-2-3 (g-\plus) g-\plus (b-2-3) g-\plus (b-2-3) }
  | g8-\plus (c-3) c-3 (g-\plus) g-\plus (c-3) c-3 (g-\plus) g-\plus (c-3) g-\plus (c-3)
  | \repeat volta 2 { gis-\plus c-2-3 c-2-3 gis-\plus gis c c gis gis c gis c }
  | gis-\plus cis-3 cis-3 gis-\plus gis cis cis gis gis cis gis cis\tweak direction #DOWN \textEndMark \markup { \small "etc" }
  \bar "||"
}

rabbathnotes = \relative c'' {
  \clef treble
  \time 4/4
  \key c \major
  \tempo Presto
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \tuplet 6/4 { g16-\plus (aes-1 g aes bes-3 aes}  \tuplet 6/4 { g16 aes g aes bes aes }) \tuplet 6/4 { g-\plus (a-2 g a bes-3 a} \tuplet 6/4 {g a g a bes a})
  | \tuplet 6/4 { g (a g a c a} \tuplet 6/4 { g a g a c a}) \tuplet 6/4 { g (b g b c b} \tuplet 6/4 { g b g b c b}) \break
  % line 2
  \omit TupletNumber {
    | \tuplet 6/4 { g (bes g bes cis bes } \tuplet 6/4 { g bes g bes cis bes }) \tuplet 6/4 { g (bis g bis cis bis } \tuplet 6/4 { g bis g bis cis bis })
    | \tuplet 6/4 { g (b g b d b } \tuplet 6/4 { g b g b d b }) \tuplet 6/4 { g (cis g cis d cis } \tuplet 6/4 { g cis g cis d cis }) \break
    % line 3
    \bar "||" \tuplet 6/4 { g-\plus (aes-1 g-\plus aes-1 a-2 aes-1 } \tuplet 6/4 { g aes g aes a aes }) \tuplet 6/4 { g-\plus (a-2 g-\plus a-2 bes-3 a-2 } \tuplet 6/4 { g a g a bes a })
    | \tuplet 6/4 { g-\plus (a-1 g-\plus a-1 bes-2 a-1 } \tuplet 6/4 { g a g a bes a }) \tuplet 6/4 { g-\plus (bes-2 g-\plus bes-2 b-3 bes-2 } \tuplet 6/4 { g bes g bes b bes }) \break
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
  \clef bass
  \time 4/4
  \key c \major
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  % line 1 g
  \repeat volta 2 {
    \once \override Staff.TimeSignature.stencil = ##f
    \time 12/8
    \bar ".|:" g8-1\4 (b-4 d-1\3  f-1 g-4 b-2) \clef treble d_\scr-\plus (f-2 g b-3 d-\plus\flageolet f-1)
    | g-3 (f d\flageolet  b-3_\scr g\flageolet f-2) \clef bass d-\plus\flageolet (b-2 g-4 f-1 d\4-4 b-1 ) \break
  }
  % line 2 c
  \repeat volta 2 {
    | <<\parenthesize c,\parenthesize-0 c'-2>>  e,-0 g-4 bes-1 c-4 e g-0 bes-1\2 c-4 \clef treble e g bes
    | c-3 bes g\flageolet \clef bass e-2 c-4 bes-1 g-0 e-2\2 c bes g-4 e-0 \break
  }
  % line 3 f
  \repeat volta 2 {
    |f-1 a-0 c-4\4 ees-1 f-4 a-2 \clef tenor c-4 ees-1 f \clef treble a-\plus_\cr c-3 ees-1
    |f-3 ees c-3\2 a-1\flageolet f-3\2 ees-1 \clef bass c-3\3 a-\plus\flageolet f-4 ees-1 c-4\4 a-1 \break
  }
  % line 4 bes
  \repeat volta 2 {
    | bes-2 d-1 f-4 aes-1 bes-4 d\flageolet \clef treble f-3 aes-1 bes d-\plus f-3 aes-1
    | bes-2 aes-1 f-\plus d\flageolet-1\2 bes-3\1 aes-1 \clef bass f-3\2 d-\plus\flageolet bes-4 aes-1 f-4\3 d\flageolet\2 \break
  }
  % line 5 ees
  \repeat volta 2 {
    | <<\parenthesize ees,-\parenthesize-0 ees'-1>> g,-4 bes-1 des-1 ees-4 g-2 bes-4 des-1 ees-4 \clef treble g\flageolet bes_\cr-3 des_\cr-1
    | ees-3\1 des bes-3\2 g\flageolet\1 ees-4 des-1 \clef bass bes-4 g-2 ees-4 des-1 bes-4 g-1 \break
  }
  % line 6 aes
  \repeat volta 2 {
    | aes-2 c-4 ees-1 ges-1\3 aes-4 c-2\2 \clef treble ees_\scr-\plus ges-2 aes-\plus c-3 ees_\scr-\plus ges-1
    \override TextSpanner.style = #'line
    \override TextSpanner.bound-details.left.text = #"s.cr"
    \override TextSpanner.direction = #DOWN
    | aes-3 ges ees-\plus c-2\1\startTextSpan aes-\plus ges-2 \clef bass ees-\plus\2 c-2 \stopTextSpan aes-4 ges-1 ees-4\4 c-1 \break
  }
  % line 7 des
  \repeat volta 2 {
    \override TextSpanner.style = #'line
    \override TextSpanner.bound-details.left.text = \markup { \draw-line #'(0 . -1) }
    \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -1) }
    \override TextSpanner.direction = #UP
    <<\parenthesize des,\parenthesize-0 des'-2>> f,-1 aes-4 ces-1\3 des-4 f-4 aes-1 ces-1\2 des-4 \clef treble f-2\1 aes-\plus\startTextSpan ces-1
    | des-3\1 ces-1 aes-\plus f-2_\cr\stopTextSpan\2 des-4_"___________" ces-1 \clef bass aes-1 f-4\3 des-4 ces-1 aes-4\4 f-1 \break
  }
  % line 8 fis
  \repeat volta 2 {
    | fis-2 ais-1\3 cis-4 e!-1\2 fis-4 ais-4 \clef treble cis-1 e-1 fis ais-\plus_\cr cis-3 e-1
    | fis-3 e cis-\plus_\cr ais-2 fis-3 e-1 \clef bass cis-3\3_"___________"_\cr ais-\plus fis-4 e-1 cis\4 ais-1 \break
  }
  % line 9 b
  \repeat volta 2 {
    | b-2 dis-1\2 fis-4 a!-1\2_"_______" b-4 dis-\plus_\cr \clef treble fis-3 a-1 b-\plus_\scr dis-3 fis-\plus\startTextSpan a-1
    | b-2 a-1 fis-\plus\stopTextSpan dis-3_\scr b-\plus a\flageolet\2 \clef bass fis-4\1 dis-1 b-2      \2 a-1 fis-4\3 dis-1 \break
  }
  % line 10 e
  \repeat volta 2 {
    | <<\parenthesize e,\parenthesize-0 e'-2>> gis,-4 b d!-1 e-4\3 gis-2\2 b-4 d-1 e \clef treble gis-\plus_\cr b-3 d-1
    | e-3 d b-3 gis-\plus e-1 d\flageolet \clef bass b-1\2 gis-4\3 e-4 d-1 b-4 gis-1 \break
  }
  % line 11 a
  \repeat volta 2 {
    | a-2 cis-1 e-4\3 g!-1\2 a-4 cis-4 \clef treble e-1 g-\plus\flageolet a\flageolet-3_cr cis-\plus e-3 g-1
    | a-2 g-1 e-3_\cr  cis-\plus a\flageolet g\flageolet \clef bass e-1 cis-4 a-4 g-1 e-4 cis-1 \break
  }
  % line 12 d
  \repeat volta 2 {
    | d-2 fis,-1 a-4 c!-1 d-4 fis-4 a-1 c-4 d\flageolet\2 \clef treble fis-2_\cr a-\plus c-1
    | d-3 c a-\plus\1 fis-2\2_\cr d\flageolet-\plus c-1\1 \clef bass a-4 fis-2 d-4 c-1 a-4 fis-1
  }
  | g1.-2 \break
  \bar "|." \textMark \markup { \small (iii) } g8-.\tenuto_\markup { staccato alla punta } b-.\tenuto d-.\tenuto f-.\tenuto g-.\tenuto b-.\tenuto \clef treble d-.\tenuto f-.\tenuto g-.\tenuto b-.\tenuto d-.\tenuto f-.\tenuto
  \bar "||" \textMark \markup { \small (iv) } \clef bass g,,,-._\markup { alla punta } b (d) f-. g (b) \clef treble d-. f (g) b-. d (f)
  \bar "||" \textMark \markup { \small (v) } \clef bass g,,,-. b-. (d-.) f-. g-. (b-.) \clef treble d-. f-. (g-.) b-. d-. (f-.)
  \bar "||"
}

digitup = \relative c {
  \time 4/4
  \key c \major
  \clef bass
  \tempo 4=124
  \repeat unfold 2 { c16\downbow 16 16 r r4 }
  | \repeat unfold 2 { d16\upbow 16 16 r r4 }
  | \repeat unfold 2 { e16\downbow 16 16 r r4 } \break
  | \repeat unfold 2 { f16\upbow 16 16 r r4 }
  | \repeat unfold 2 { g16\downbow 16 16 r r4 }
  | \repeat unfold 2 { a16\upbow 16 16 r r4 } \break
  | \repeat unfold 2 { b16\downbow 16 16 r r4 }
  | c16\downbow 16 16 r r4 c16\upbow 16 16 r r4
  | b16\downbow 16 16 r r4 b16\upbow 16 16 r r4 \break
  | a16\upbow 16 16 r r4 a16\downbow 16 16 r r4
  | g16\upbow 16 16 r r4 g16\downbow 16 16 r r4
  | f16\upbow 16 16 r r4 f16\downbow 16 16 r r4 \break
  | e16\downbow 16 16 r r4 e16\upbow 16 16 r r4
  | d16\upbow 16 16 r r4 d16\downbow 16 16 r r4
  | c16\downbow 16 16 r r4 c16\downbow 16 16 r r4 \break
  \bar "||" \repeat unfold 2 { c16\downbow 16 16 r } \repeat unfold 2 { d16\upbow 16 16 r }
  | \repeat unfold 2 { e16\downbow 16 16 r } \repeat unfold 2 { f16\upbow 16 16 r } \break
  | \repeat unfold 2 { g16\downbow 16 16 r } \repeat unfold 2 { a16\upbow 16 16 r }
  | \repeat unfold 2 { b16\downbow 16 16 r } c16\downbow 16 16 r c16\upbow 16 16 r \break
  | b16\downbow 16 16 r b16\upbow 16 16 r a16\upbow 16 16 r a16\downbow 16 16 r
  | g16\upbow 16 16 r g16\downbow 16 16 r f16\upbow 16 16 r f16\downbow 16 16 r \break
  | e16\downbow 16 16 r e16\upbow 16 16 r d16\upbow 16 16 r d16\downbow 16 16 r
  | c16\downbow 16 16 r c16\downbow 16 16 r b16\upbow 16 16 r b16\upbow 16 16 r
  | c1%{\downbow%}\fermata_\markup { \small "Center" }\fine \pageBreak
}

doublestops = \relative c {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \time 3/4
  \key c \major
  \clef bass
  <<
    {
      \bar ".|:-|"
      \repeat volta 2 { e'8 (e d d dis dis) }
      | \repeat volta 2 {  dis (dis cis cis cisis cisis) }
      | \repeat volta 2 {  d (d c c cis cis) } \break
      | \repeat volta 2 {  cis (cis b b c c) }
      | \repeat volta 2 {  c (c bes bes b b) }
      | \repeat volta 2 {  b (b a a ais ais) } \break
      | \repeat volta 2 {  bes (bes aes aes a a) }
      | bes2.
      | a\fermata
    }
    {
      a8 ais ais b b a
      | gis a a ais ais gis
      | g aes aes a a g
      | fis g g gis gis fis
      | f ges ges g g f
      | e f f fis fis e
      | ees fes fes f f ees
      | ees2.
      | d \fine
    }
  >>
}

glowingtones = \relative c {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \time 3/4
  \key c \major
  <<
    {
      \override NoteHead.style = #'harmonic
      \clef treble
      \repeat volta 2 {
        \bar ".|:-|" <<\parenthesize g'2. \parenthesize d'>>
      }
      \repeat volta 2 {
        | \clef bass \parenthesize a,
      }
      \repeat volta 2 {
        \clef treble <<\parenthesize e'' \parenthesize a>>
      }
      \repeat volta 2 {
        \parenthesize d
      }
      \repeat volta 2 {
        \parenthesize b,
      }
      \repeat volta 2 {
        \parenthesize g'
      }
      \repeat volta 2 {
        \clef bass \parenthesize d,
      }
      \repeat volta 2 {
        \clef treble <<\parenthesize a'' d>>
      }
      \repeat volta 2 {
        \parenthesize g
      }
      \repeat volta 2 {
        \clef bass \parenthesize e,,
      }
      \repeat volta 2 {
        \clef treble \parenthesize cis''
      }
      \repeat volta 2 {
        \clef bass \parenthesize g,
      }
      \repeat volta 2 {
        \clef treble \parenthesize d''
      }
      \repeat volta 2 {
        \parenthesize a,
      }
      \repeat volta 2 {
        \parenthesize b
      }
      \repeat volta 2 {
        \parenthesize d
      }
      \repeat volta 2 {
        \parenthesize e
      }
      \repeat volta 2 {
        \parenthesize a
      }
    }
    \new Staff {
      \clef bass
      \romanStringNumbers
      \set stringNumberOrientations = #'(down)
      g,,4 r r
      | a-2\4 r r
      | a\flageolet\3 r r
      | bes r r
      | b r r
      | c r r \break
      | d-2\3 r r
      | d\flageolet r r
      | ees r r
      | e r r
      | fis r r
      | g-2\2 r r \break
      | g\flageolet r r
      | a r r
      | b r r
      | d r r
      | e r r
      | \clef treble a r r\fermata_\markup { \small "Center" }
    }
  >>
}

grodner = \relative c' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \romanStringNumbers
  \time 6/8
  \key c \major
  \clef bass
  \repeat volta 2 {
    b8-4 (bes-2 a-1) f-2 (fis-4 e-1)
    | b-1 (cis-4 c-2) f!-2 (e-1 fis-4)
  }
  \repeat volta 2 {
    | b-4 (bes-2 a-1) fis-4 (e-1 f-2)
    | c'-4 (b!-2 bes-1) g-4 (f-1 fis-2) \break
    | cis'-4 (c-2 b!-1) g-2 (gis-4 fis-1)
    | cis-1 (dis-4 d-2) g!-2 (fis-1 gis-4)
  }
  \repeat volta 2 {
    | cis-4\1 (c-2 b-1) gis-4\2 (fis-1 g-2)
    | d'-4\1 (cis-2 c-1) a-4\2 (g!-1 gis-2) \break
    | dis'-4 (d-2 cis-1) a-2 (ais-4 gis-1)
    | dis-1\3 (f-4 e-2) a!-2\2 (gis-1 ais-4)
  }
  \repeat volta 2 {
    | dis-4\1 (d-2 cis-1) ais-4 (gis-1 a-2)
    | e'-4 (dis-2 d-1) b-4 (a-1 ais-2) \break
    | f'-4\2 (e-2 ees-1) b-2\2 (c-4 ais-1)
    | f-1\3 (g-4 fis-2) b-2\2 (ais-1 c-4)
  }
  \repeat volta 2 {
    | f-4 (e-2 ees-1) c-4 (ais-1 b-2)
    | e!-4 (dis-2 d-1) b-4 (a!-1 ais-2) \break
    | dis-4 (d-2 cis-1) a-2 (ais-4 gis-1)
    | dis-1 (f-4 e-2) a!-2 (gis-1 ais-4)
  }
  \repeat volta 2 {
    | dis-4 (d-2 cis-1) ais-4 (gis-1 a-2)
    | d-4 (cis-2 c-1) a-4 (g!-1 gis-2) \break
    | cis-4 (c-2 b-1) g-2 (gis-4 fis-1)
    | cis-1 (dis-4 d-2) g!-2 (fis-1 gis-4)
  }
  \repeat volta 2 {
    | cis-4 (c-2 b-1) gis-4 (fis-1 g-2) 
    | c!-4 (b-2 bes-1) g-4 (f-1 fis-2) \break
    | b!-4 (bes-2 a-1) f!-2 (fis-4 e-1)
    | b-1 (cis-4 c-2) f!-2 (e-1 fis-4)
  }
  | b-4 (bes-2 a-1) c,!-2 (cis-4 b-1)
  | gis (a4~a4.) \fine
}

simandlVISeven = \relative c' {
  \romanStringNumbers
  \time 4/4
  \key g \major
  \clef bass
  g8_0^\markup { "I" } a_1 b_4 c_1 d4_4 c8_1 b_4
  | a8_1 b_2 c_4 d_1 e4_4 r
  | a,8_1^\markup { "I" } b_2 c_4 d_1 e4_4 d8_1 c_4 
  | b8_2 c_1 d_4 e_1 fis4_4 r 
  | b,8_4^\markup { "I" } c_1 d_4 e_1 fis4_4 e8_1 d_4 \break 
  
  | c8_1 d_1 e_4 fis_2 g4_3_\flageolet r4 
  | c,8_4^\markup { "II" } d_1 e_4 fis_2 g4_3_\flageolet fis8_2 e_4 
  | d8_4 c_1 b_4 a_1 g4_0 r4 
  \bar "||" g'8_3_\flageolet fis_2 e_4 d_1 c4_1 d8_4 e_1 
  | fis8_4 e_1 d_4 c_1 b4 c8_4 d_1 \break 

  | e8_4 d_1 c_4 b_2 a4_1 r4 
  | e'8_4 d_1 c_4 b_2 a4_1 b8_4 c_1 
  | d8_4 c_1 b_4 a_1 g4_0 r4 
  | d'8_4 c_1 b_4 a_1 g4_0 a8_1 b_2 
  | c8_4 b_2 a4_1 g_0 r4 \fine
}

\book {
    \score {
    \header {
      composer = "Franz Simandl"
      piece = "Exercises in the VI. Position, no. 7"
    }
    \new Staff {
      \simandlVISeven
    }
  }
  \score {
    \header {
      subtitle = "Thumb Position Exercises"
      composer = "Jeff Bradetich"
      piece = "I. 3rd/4ths"
    }
    \new Staff {
      \bradetichthirdsfourths
    }
  }
  \score {
    \header {
      subtitle = "Nouvelle Technique de la Contrabass 2"
      composer = "François Rabbath"
      piece = "Ex. 5"
    }
    \new Staff {
      \rabbathnotes \pageBreak
    }
  }
  \score {
    \header {
      subtitle = "Simplified Higher Technique"
      composer = "Franco Petracchi"
      piece = \markup { 17. \italic "Dominant Sevenths" }
    }
    \new Staff {
      \petracchiscalenotes
    }
  }
  \score {
    \header {
      subtitle = "Dig It Up"
      composer = "Dennis Whitaker"
    }
    \new Staff {
      \digitup
    }
  }
  \score {
    \header {
      subtitle = "Double Stops"
      composer = "Dennis Whitaker"
    }
    \new Staff {
      \doublestops
    }
  }
  \score {
    \header {
      subtitle = "Glowing Tones"
      composer = "Dennis Whitaker"
    }
    \new PianoStaff {
      \new Voice {
        \glowingtones \pageBreak
      }
    }
  }
  \score {
    \header {
      composer = "Murray Grodner"
      subtitle = "Serial Control"
    }
    \new Staff {
      \grodner
    }
  }
}


