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

cr = \markup { \small \italic "cr" }
scr = \markup { \small \italic "s.cr" }

rabbathnotes = \relative c'' {
  \clef treble
  \time 4/4
  \key c \major
  \tempo Presto
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \tuplet 6/4 { g16\thumb (aes-1 g aes bes-3 aes}  \tuplet 6/4 { g16 aes g aes bes aes }) \tuplet 6/4 { g\thumb (a-2 g a bes-3 a} \tuplet 6/4 {g a g a bes a})
  | \tuplet 6/4 { g (a g a c a} \tuplet 6/4 { g a g a c a}) \tuplet 6/4 { g (b g b c b} \tuplet 6/4 { g b g b c b}) \break
  % line 2
  \omit TupletNumber {
    | \tuplet 6/4 { g (bes g bes cis bes } \tuplet 6/4 { g bes g bes cis bes }) \tuplet 6/4 { g (bis g bis cis bis } \tuplet 6/4 { g bis g bis cis bis })
    | \tuplet 6/4 { g (b g b d b } \tuplet 6/4 { g b g b d b }) \tuplet 6/4 { g (cis g cis d cis } \tuplet 6/4 { g cis g cis d cis }) \break
    % line 3
    \bar "||" \tuplet 6/4 { g\thumb (aes-1 g\thumb aes-1 a-2 aes-1 } \tuplet 6/4 { g aes g aes a aes }) \tuplet 6/4 { g\thumb (a-2 g\thumb a-2 bes-3 a-2 } \tuplet 6/4 { g a g a bes a })
    | \tuplet 6/4 { g\thumb (a-1 g\thumb a-1 bes-2 a-1 } \tuplet 6/4 { g a g a bes a }) \tuplet 6/4 { g\thumb (bes-2 g\thumb bes-2 b-3 bes-2 } \tuplet 6/4 { g bes g bes b bes }) \break
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
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  % line 1 g
  \repeat volta 2 {
    \once \override Staff.TimeSignature.stencil = ##f
    \time 12/8
    \bar ".|:" g8-1\4 (b-4 d-1\3  f-1 g-4 b-2) \clef treble d_\scr\thumb (f-2 g b-3 d\flageolet f-1)
    | g-3 (f d\flageolet  b-3_\scr g\flageolet f-2) \clef bass d\flageolet (b-2 g-4 f-1 d\4-4 b-1 ) \break
  }
  % line 2 c
  \repeat volta 2 {
    | <<\parenthesize c,\parenthesize-0 c'-2>>  e,-0 g-4 bes-1 c-4 e g-0 bes-1\2 c-4 \clef treble e g bes
    | c-3 bes g\flageolet \clef bass e-2 c-4 bes-1 g-0 e-2\2 c bes g-4 e-0 \break
  }
  % line 3 f
  \repeat volta 2 {
    |f-1 a-0 c-4\4 ees-1 f-4 a-2 \clef tenor c-4 ees-1 g \clef treble a_\cr\thumb c-3 ees-1
    |f-3 ees c-3\2 a\flageolet f-3\2 ees-1 \clef bass c-3 a\flageolet f-4 ees-1 c-4\4 a-1 \break
  }
  % line 4 bes
  \repeat volta 2 {
    | bes-2 d-1 f-4 aes-1 bes-4 d\flageolet \clef treble f-3 aes-1 bes-1 d\thumb f-3 aes-1
    | bes-2 aes-1 f\thumb d\flageolet-1\2 bes-3\1 aes-1 \clef bass f-3\2 d\flageolet bes-4 aes-1 f-4\3 d\flageolet\2 \break
  }
  % line 5 ees
  \repeat volta 2 {
    | <<\parenthesize ees,-\parenthesize-0 ees'-1>> g,-4 bes-1 des-1 ees-4 g-2 bes-4 des-1 ees-4 \clef treble g\flageolet bes_\cr-3 des_\cr-1
    | ees-3\1 des bes-3\2 g\flageolet\1 ees-4 des-1 \clef bass bes-4 g-2 ees-4 des-1 bes-4 g-1 \break
  }
  % line 6 aes
  \repeat volta 2 {
    | aes-. c-4 ees-1 ges-1\3 aes-4 c-2\2 \clef treble ees_\scr\thumb ges-2 aes\thumb c-3 ees_\scr\thumb ges-1
    \override TextSpanner.style = #'line
    \override TextSpanner.bound-details.left.text = #"s.cr"
    \override TextSpanner.direction = #DOWN
    | aes-3 ges ees\thumb c-2\1\startTextSpan aes\thumb ges-2 \clef bass ees\thumb\2 c-2 \stopTextSpan aes-4 ges-1 ees-4\4 c-1 \break
  }
  % line 7 des
  \repeat volta 2 {
    \override TextSpanner.style = #'line
    \override TextSpanner.bound-details.left.text = \markup { \draw-line #'(0 . -1) }
    \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -1) }
    \override TextSpanner.direction = #UP
    <<\parenthesize des,\parenthesize-0 des'-2>> f,-1 aes-4 ces-1\2 d-4 f-4 aes-1 ces-1\2 des-4 \clef treble f-2\1 aes\thumb\startTextSpan ces-1
    | des-3\1 ces-1 aes\thumb\stopTextSpan f-2_\cr des-4\2_"___________" ces-1 \clef bass aes-1 f-4\3 des-4 ces-1 aes-4\4 f-1 \break
  }
  % line 8 fis
  \repeat volta 2 {
    | fis-2 ais-1\3 cis-4 e-1\2 fis-4 ais-4 \clef treble cis-1 e-1 fis ais\thumb_\cr cis-3 e-1
    | fis-3 e cis\thumb_\cr ais-2 fis-3 e-1 \clef bass cis-3\3_"___________"_\cr ais\thumb fis-4 e-1 cis\4 ais-1 \break
  }
  % line 9 b
  \repeat volta 2 {
    | b-2 des-1\2 fis-4 a-1\2_"_______" b-4 dis\thumb_\cr \clef treble fis-3 a-1 b\thumb_\scr dis-3 fis\thumb\startTextSpan a-1
    | b-2 a-1 fis\thumb\stopTextSpan dis-3_\scr b\thumb a\flageolet\2 \clef bass fis-4\1 dis-1 b-2      \2 a-1 fis-4\3 dis-1 \break \pageBreak
  }
  % line 10 e
  \repeat volta 2 {
    | <<\parenthesize e,\parenthesize-0 e'-2>> gis,-4 b d-1 e-4\3 gis-2\2 b-4 d-1 e \clef treble gis\thumb_\cr b-3 d-1
    | e-3 d b-3 gis\thumb e-1 d\flageolet \clef bass b-1\2 gis-4\3 e-4 d-1 b-4 gis-1 \break
  }
  % line 11 a
  \repeat volta 2 {
    | a-2 cis-1 e-4\3 g-1\2 a-4 cis-4 \clef treble e-1 g\flageolet a\flageolet-1_cr cis\thumb e-3 g-1
    | a-2 g-1 e-3_\cr  cis\thumb a\flageolet g\flageolet \clef bass e-1 cis-4 a-4 g-1 e-4 cis-1 \break
  }
  % line 12 d
  \repeat volta 2 {
    | d-2 fis,-2 a-4 c-1 d-4 fis-4 a-1 c-4 d\flageolet\2 \clef treble fis-2_\cr a\thumb c-1
    | d-3 c a\thumb\1 fis-2\2_\cr d\flageolet\thumb c-1\1 \clef bass a-4 fis-2 d-4 c-1 a-4 fis-1
  }
  | g1.-2 \break
  \bar "|." \textMark \markup { \small (iii) } g8-.\tenuto_\markup { staccato alla punta } b-.\tenuto d-.\tenuto f-.\tenuto g-.\tenuto b-.\tenuto \clef treble d-.\tenuto f-.\tenuto g-.\tenuto b-.\tenuto d-.\tenuto f-.\tenuto
  \bar "||" \textMark \markup { \small (iv) } \clef bass g,,,-._\markup { alla punta } b (d) f-. g (b) \clef treble d-. f (g) b-. d (f)
  \bar "||" \textMark \markup { \small (v) } \clef bass g,,,-. b-. (d-.) f-. g-. (b-.) \clef treble d-. f-. (g-.) b-. d-. (f-.)
  \bar "||" \pageBreak
}


glowingtones = \relative c {
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
      } \break
      \repeat volta 2 {
        \clef bass \parenthesize d,
      }
      \repeat volta 2 {
        \clef treble <<\parenthesize a'' d>>
      }
      \repeat volta 2 {
        \parenthesize g
      }
    }
    \new Staff { 
      \clef bass 
      \romanStringNumbers
      \set stringNumberOrientations = #'(down)
      g,,,4 r r 
      | a-2\4 r r
      | a\flageolet\3 r r
      | bes r r
      | b r r
      | c r r
      | d-2\3 r r
      | d\flageolet r r
      | ees r r
      }
  >>
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
      composer = "Franco Petracchi"
      piece = \markup { 17. \italic "Dominant Sevenths" }
    }
    \new Staff {
      \petracchiscalenotes
    }
  }
  \score {
    \header {
      piece = "Glowing Tones"
    }
    \layout {
      \context {
        \Score
      }
    }
    \new PianoStaff {
      \new Voice {
        \glowingtones
      }
    }
  }
}


