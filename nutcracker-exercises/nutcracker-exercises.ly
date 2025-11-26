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
  title = "The Nutcracker (exercises)"
  composer = "Peter Ilyich Tchaikovsky"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

sceneiii = \relative c' {
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \clef "bass"
  \key c \major
  \time 3/4
  \set Score.currentBarNumber = 52
  \tempo 4 = 84
  g4\sf (g,16)
  a'16\ff-2 g-0 f-4 e-2 f-4 e-2 d
  | \mark 2 c16-4 b-2 c-4 d e-2 dis-1 e-2 c-4 b-2 fis-2 g-4 b-2 
  | c16-4 d e-2 e, f-1 a g-4 a ais-1 b-2 c-4 a-0 
  | d16 b-2 e-2 c-4 f-4 d g e-2 a-2 a, a a'
  | g16 g,-4 g g' g a-2 g f-4 e-2 f e d 
  | c16-4 b-2 c d e-2 dis-1 e c-4 b-2 fis-2 g b-2 
  | c16-4 d-0 e-2 e,\ff-0 f-1 a-0 g-2 b-1 gis-4 b-1 a-0 c-2 
  | b16 d c e d f e g f a f a 
  | fis16 a fis a g a g g, c r16 c' r16 
  \bar "||"

}

sceneviing = \relative c {
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \clef "bass"
  \key c \major
  \time 4/4
  \set Score.currentBarNumber = 63
  \tempo 4=144
  r2 r4 dis8\ff-1 eis-4 
  | fisis4-4 gis-2 ais\1-4 b8-2 cis-4
  | dis4-4 e-4 dis8 [dis]\sff (e) dis\sff (
  | e8) [dis]\sff (e) [dis]\sff (e) r8 r4 
  \break

  | r8 c8~8 gis~4 dis8\ff-1 eis-4 
  | fisis4-4 gis-2 ais-4 b8-4 cis-4
  | dis4-4 e-4 dis8 [dis]\sff (e) dis\sff (
  | e8) [dis]\sff (e) [dis]\sff (e) r8 r4 
  
  \bar "||"

}

scenevii = \relative c {
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \clef "bass"
  \key c \major
  \time 4/4
  \set Score.currentBarNumber = 63
  \tempo 4=144
  r2 r4 \acciaccatura cisis8\ff-0 dis8-1 \acciaccatura dis8 eis-4 
  | \acciaccatura eis8-1 fisis4-4 \acciaccatura fisis8 gis4-2 \acciaccatura gis8\1-1 ais4-4 \acciaccatura ais8-1 b8-2 \acciaccatura b8 cis-4
  | \acciaccatura cis8 dis4-4 \acciaccatura dis8 e4-4 \acciaccatura cisis8 dis8 [dis]\sff (e) dis\sff (
  | e8) [dis]\sff (e) [dis]\sff (e) r8 r4 
  \break

  | r8 c8~8 [gis]\ff~4 \acciaccatura cisis,8 dis8-4 \acciaccatura dis8 eis-4 
  | \acciaccatura eis8 fisis4-4 \acciaccatura fisis8 gis4-2 \acciaccatura gis8 ais4-4 \acciaccatura ais8 b8-4 \acciaccatura b8 cis-4
  | \acciaccatura cis8 dis4-4 \acciaccatura dis8 e4-4 \acciaccatura cisis8 dis8 [dis]\sff (e) dis\sff (
  | e8) [dis]\sff (e) [dis]\sff (e) r8 r4 
  
  \bar "||"

}

\book {
    \score {
    \layout {
      \context {
        \Staff
        \override MeasureCounter.font-size = -5
        \consists Measure_counter_engraver
      }
      indent = 0.0
    }
    \header {
      piece = "No.3 Petit Galop des Enfants et Entrée des Parents"
    }
    \sceneiii
  }

  \score {
    \layout {
      \context {
        \Staff
        \override MeasureCounter.font-size = -5
        \consists Measure_counter_engraver
      }
      indent = 0.0
    }
    \header {
      piece = "No.7 Scène (no grace notes)"
    }
    \sceneviing
  }

  \score {
    \layout {
      \context {
        \Staff
        \override MeasureCounter.font-size = -5
        \consists Measure_counter_engraver
      }
      indent = 0.0
    }
    \header {
      piece = "No.7 Scène"
    }
    \scenevii
  }

}
