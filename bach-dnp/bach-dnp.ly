\version "2.24.3"

\header {
  title = "Mass in B Minor"
  subtitle = "Dona nobis pacem"
  composer = "J. S. Bach"
  tagline = #f
}

\layout {
  indent = 0.0
}

\paper {
  #(set-paper-size "letter")
}

notes = \relative {
  \time 4/2
  \key d \major
  \clef bass
  \numericTimeSignature
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)

  r2 \set crescendoText = \markup { \small \italic "poco a poco cresc." } \set crescendoSpanner = #'text d2\downbow\ppp\< (e) fis\!
  | g2 fis4\upbow e\upbow fis\downbow d\upbow g2\downbow~
  | 2 fis e1
  | d1\upbow \clef tenor a'1_\markup { \teeny "(senza B.)" }
  | e'2 \clef bass a,1_\markup { \teeny "(col Bassi)" }\downbow gis2
  | a4 g8\downbow fis e fis d e fis e fis g fis g fis e \break

  | d4 b e2 a,2 a'
  | d, d' g, d
  | e2 fis g fis4 e
  | fis4 b, b'2~4 a4~4 d4\upbow
  | g,4 b a g fis1\downbow~
  | 8 e\upbow fis g fis e d cis b2 cis \break

  | d4 fis b1 ais2
  | \mark \default b8 cis a! b cis d b cis d cis d e d e d cis
  | b1~4 cis\downbow d2\upbow
  | a2 g4\upbow fis\downbow e2 a
  | d,2\upbow e a,1\upbow~ \break

  | 2 ais8\downbow b gis ais! b cis ais b cis d b cis
  | d8 cis d e c b c d b cis dis b e2
  | a,2 b e, \clef tenor g''2~_\markup { \teeny "(senza Bassi)" }
  | 2 fis g4 fis8 e b2~ \break

  | 2 ais b4 a8 g \clef bass d2~_\markup { \teeny "(col Bassi)" }\downbow
  | 2 cis d4 cis8\downbow b a b gis a b a b cis b d cis b a4\downbow b\downbow cis2
  | \mark \default fis,4 fis' b2~4 a g fis \break

  |  e2 a2 d,4 d' cis b
  | cis a d1 c2~
  | 2 b <a d,>1^\markup { \teeny "(celli)" }_\markup { \teeny "(bassi)" }
  | e2 fis g fis4\upbow e\upbow
  | fis4\downbow d\upbow g1 fis2
  | e2 a2 d,4 fis b2~
  | 4 cis d b g e a2 \break

  | d,1 a'2_\markup { \teeny "(senza Bassi)" } b  g a b cis
  | \mark \default d2 cis4 b a,1^\markup { \teeny "(col Bassi)" }\f\upbow
  | b2 cis d cis4\upbow b\upbow
  | cis4\downbow a\upbow d1\downbow cis2
  | b1 a2 a'~
  | 2 gis a8 b a g fis g e fis \break

  | gis8 a fis gis ais b gis ais b1~
  | 4 a!8\downbow g! a b cis a d4 a d2~
  | 2 c b1~
  | 2 a\downbow gis1\upbow
  | a2. d,4 g! fis g e
  | fis2. g4 a2 a,
  | \override Staff.NoteHead.style = #'baroque d,\breve\fermata_\markup { \small "Fine." } \fine

}



\book {
  \paper {
    system-system-spacing.basic-distance = #16
  }
  \score {
    \header {
      piece = "24."
    }
    \notes
  }
}
