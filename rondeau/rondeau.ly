\version "2.24.3"


\header {
  title = "Abdelazer"
  composer = "Henry Purcell"
  instrument = \markup { \tiny "Contrabass" }
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
  system-system-spacing.basic-distance = #20
}

plus = \finger \markup \fontsize #6 "+"
mi = \finger "-1"

luftpause = { \tweak Y-offset 4 \tweak X-offset 3 \breathe }

\book {
  \score {
    \layout {
      %top-margin = 0.0
      indent = 0.0
    }
    \header {
      piece = "II. Rondeau"
    }
    \relative c, {
      \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
      \romanStringNumbers
      \set stringNumberOrientations = #'(down)
      \override Fingering.avoid-slur = #'outside
      \numericTimeSignature
      \time 3/2
      \clef bass
      \key d \minor
      \set Score.currentBarNumber = 49
      \repeat volta 2 {
        d2\f d'2\upbow c\upbow
        | bes g\upbow a\upbow
        | f1 g2
        | e1 f2
        | d2 d' e 
        | cis1 d2 
        | g2 a bes 
        | a1 d,2
      } \break 
      \repeat volta 2 {
        f1^\markup { \tiny \italic "solo, tutti" } e2
        | d2 bes\upbow c\upbow
        | f2 e\upbow d\upbow 
        | c2 bes\upbow a\upbow
        | bes\mp\cresc a g 
        | c2 bes a 
        | d2 c\< bes 
        | c2\f c, f
      }
      \repeat volta 2 {
        d2\f d'2\upbow c\upbow
        | bes g\upbow a\upbow
        | f1 g2
        | e1 f2
        | d2 d' e 
        | cis1 d2 
        | g,2 a bes 
        | a1 d2 \break 

        | a'1\mp^\markup { \tiny \italic "solo, tutti" } a,2 
        | e'1 e,2 
        | a1 d,2 
        | e1 a2
        | a'1 a,2
        | d1 d2 
        | cis1 a2 
        | d4\<\downbow c!\upbow bes2\downbow a
      } \break
      d,2\f d'2\upbow c\upbow
      | bes g\upbow a\upbow
      | f1 g2
      | e1 f2
      | d2 d' e
      | cis1 d2
      | g,2 a bes
      | a1 d,2 \fermata 
      \bar "||"
    }
  }
}

