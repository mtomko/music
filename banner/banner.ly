\version "2.24.3"

piuF = \markup { \tiny \italic "più" \dynamic f }

pocoF = \markup { \tiny \italic "poco" \dynamic f \tiny \italic "molto espressivo" }

\header {
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

\layout {
  indent = 0.0
}

solonotes = \relative {
  \clef bass
  \time 4/4
  \key c \major
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  \set Score.currentBarNumber = #117
  r2^\markup { \small "solo, arco" }_\pocoF d'2
  | e2 fis
  | \mark #119 \clef treble g2 g
  | g1~
  | g2 g
  | a2 b \break
  | g2 fis
  | e1~
  | e1~
  | e2 g
  | a2 b
  | c2 b \break
  | g2 a
  | g2. g4
  | fis1
  | r2 fis_\piuF
  | g2 a
  | \mark #134
  | b2\< b \break
  | e1\!~
  | e2 e
  | d2 b
  | c1
  | b2 a
  | g1~\break
  | g2 g
  | a\< ais
  | b1\!
  | a2 g
  | a1~
  | a2 g
  | g1\> \break
  | c2\! g
  | a1~
  | \mark #150 a1~
  | a1
  | c2 g
  | aes1~
  | aes1~ \break
  | \textMark \markup { \small "(solo) cadenza"} \tuplet 3/2 { aes8^\markup { \small \italic "molto accel...."}\< g f } \repeat unfold 3 { \tuplet 3/2 { aes8 g f} }
  | \tuplet 3/2 { aes8 g f } e'2.\f~
  | e16 f e d dis cis a e g \clef bass ees bes g b aes ees c \break
  | aes1
  | <<
    R1 | s1 \\
    \new CueVoice {
      <<c,4^\markup { \tiny "Vc. (qt.)" } aes' ees' a>> \cueClef "treble" bes'2.~ | bes4~ bes8 b16 g16 \cueClef "bass" g ees bes g aes ges d c \cueClefUnset
    } \\ s1 | R1
  >>
  | \textMark \markup { \small "tutti" }\xNotesOn d4\f\<\accent d4\accent \xNotesOff r2\! \caesura
  \bar "||"
}

tuttinotes = \relative {
  \clef bass
  \time 4/4
  \key c \major
  r2 \xNotesOn e,4^\markup { \small "altri, pizz." }\accent e\accent
  | R1
  | r2 e4\accent e\accent
  | R1
  | r2 e4\accent e\accent
  | R1 \break
  | r2 e4\accent e\accent
  | R1
  | r2 e4\accent e\accent
  | R1
  | r2 e4\accent e\accent
  | R1 \break
  | r2 e4\accent e\accent
  | R1
  | r2 e4\accent e\accent
  | R1
  | r2 e4\accent e\accent
  | R1 \break
  | r2 e4\accent e\accent
  | R1
  | r2 e4\accent e\accent
  | R1
  | r2 e4\accent e\accent
  | R1 \break
  | r2 e4\accent e\accent
  | R1
  | r2 e4\accent e\accent
  | R1
  | r2 e4\accent e\accent
  | R1
  | R1 \break
  | \xNotesOff c'2^\markup { \small \italic "arco" }\mf g
  | \repeat unfold 2 a1~
  | a1
  | c2 g
  | aes1~
  | aes1 \break
}

\book {
  \score {
    \new StaffGroup {
      <<
        \new Staff \solonotes
        \new Staff \tuttinotes
      >>
    }
  }
}
