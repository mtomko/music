\version "2.24.3"

\header {
  title = "Concerto in G minor for Two Cellos"
  composer = "Antonio Vivaldi"
  opus = "RV 531"
  instrument = \markup { \tiny "Cello II (Contrabass)" }
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

mfp = \markup { \dynamic mf - \dynamic p }
plus = \finger \markup \fontsize #6 "+"

\layout {
  \context {
    \Voice
    % 1. Turn on the horizontal bracket tool for this voice
    \consists "Horizontal_bracket_engraver"
  }
}

#(define-markup-command (forked layout props width shift) (number? number?)
   (interpret-markup layout props
     #{
       \markup {
         % 1. Align the peak's left edge to the note center, then push it right
         \translate #(cons shift 0) {
           \path #0.15 #`((moveto 0 0)
                          (lineto ,(/ width 2) 0.5)
                          (lineto ,width 0))
         }
       }
     #}))

celloii = \relative {
  \time 4/4
  \key g \minor
  \clef tenor
  \tempo Allegro
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override DynamicText.font-size = #-2
  \override DynamicTextSpanner.font-size = #-2
  \override HorizontalBracket.padding = #3.0
  \override HorizontalBracket.bracket-flare = #'(0.0 . 0.0)
  \override HorizontalBracket.direction = #UP
  %\override TextScript.padding = #2.5

  R1
  | g8\1\f g'16-2 fis-1 g8-2\upbow g,\upbow bes'-1 c-3 d-1 ees-2
  | g,,8 g'16 fis g8\upbow g,\upbow  \clef treble d''-1 e!-3 fis-2 g-3
  | \clef tenor g,,8 bes'16-2 a-1 bes8-2\upbow g-\plus\upbow g, a'16-3 g-1 a8-3\upbow fis-\plus\upbow \break

  | g,8\p bes'16 a bes8\upbow g\upbow g, a'16 g a8\upbow fis\upbow
  | g,16\1-0\f bes\2-2 d-1 bes-2 g bes d bes g8 bes d-\plus\2\flageolet g-\plus\1\flageolet
  | bes,16-1\3\startGroup d-\plus\flageolet g-\plus\flageolet d bes d g d bes8 d g bes
  | d,16-\plus\2 g-\plus\1 bes-2 g d g bes g d8 g bes \stopGroup d \break

  | \clef treble bes,8 -\plus\3 d'-3\flageolet a,-\plus\3 c'-3 \clef tenor g,-0\1 bes'-3 f,-4\3 a'-2\2\flageolet
  | ees,8-1\3 g'-3\flageolet d,-0\2 fis'-2 g-3\flageolet g,\1-0 g g
  | g8 8 8 8 c c'8 8 8
  | bes8 8 bes\prall a16 (g) a8 f f f
  | f8 8 8 8 bes,8 bes'8 8 8 \break

  | a8 8 8\prall g16 (f) g8 ees8 8 8
  | ees8 8 8 8 a, a'8 8 8
  | g g g\prall fis16 (e) fis8 d d d
  | d8 8 8 8 g,16 g'-3\flageolet f-4 ees-1 d-4 c-1 bes-2 a-1 \break

  | g16 g' f ees d c bes a g bes'-3 a-2 g-\plus\flageolet f-3\2 ees-1 d-\plus\flageolet c-3\3
  | bes16-1 bes'-3\1 a-2 g-\plus\flageolet f-4\1 ees-1 d-4 c-1 bes-1 g-4\2 g g bes g g g
  | \repeat unfold 2 { bes16 g g g } \repeat unfold 2 { b16 g g g } \break

  | \repeat unfold 2 { b16 g g g } \repeat unfold 2 { c g g g }
  | \repeat unfold 2 { c g g g } \repeat unfold 2 { cis g g g }
  | \repeat unfold 2 { cis g g g } d'4 r
  | d4 r d r \break

  | g,8 8 8 8 8 8 8 8
  | g8 8 8 8 d'4 r16 c bes a
  | g8 g' c, d g,4 r
  | R1
  | \clef treble g'16\f a bes c-1 \startGroup d-2 bes-\plus a-3\flageolet\2 g-1 a-3\flageolet bes-\plus\1 c-1 d-2 ees-3 c-1 bes-\plus a-3\flageolet\2 \stopGroup \break

  | bes8-2\1 a16-3 g-1 a8-3 g16-1 fis-\plus g8-1^\markup \forked #2.4 #0.8 d-2 g,4-0
  | c16\mf d ees f g ees d c a'8 c, a c
  | bes16 c d ees f d c bes g'8 bes, g bes
  | a16 bes c d ees c bes a f'4\p r \pageBreak

  | bes,4\upbow r ees r
  | ees4 r f r
  | \clef bass f,4 r \clef treble bes16\p bes' c bes d bes c bes
  | d,16 bes' c bes d bes c bes ees,\cresc bes' c bes d bes c bes \break

  | ees,16 bes' c bes d bes c bes f a bes a c a bes a
  | f16 a bes a c a bes a \clef bass bes,8\f 8 8 8
  | c8 8 8 8 f8 8 8 8
  | bes,8 8 8 8 ees8 8 8 8 \break

  | a,8 8 8 8 d8 8 8 8
  | g,8 8 8 8 c8 8 8 8
  | f,4 r f r
  | f4 r bes8\f\downbow bes' ees, f
  | bes,4 r bes\p r \break

  | \clef treble bes4 r bes'16\f d c bes a bes a g
  | f16 bes a g f\dim g f ees d g f ees d ees d c
  | bes16\p 16 d f bes4 r2
  | R1
  | r2 ees16\f 16 16 16 16 (d) c bes \break

  | c16 c c c c (bes) a g d' d d d d (c) bes a
  | bes16 16 16 16 16 (a) g f c'\dim c c c c (bes) a g
  | a16 a a a a (g) f ees bes'4 r
  | b,2\downbow c4\p\upbow ees\upbow \break

  | f4 d ees c
  | d b c ees8\upbow c\upbow
  | g4 g c8 g''16 f g bes, (aes) g
  | aes8 f'16 ees f aes, (g) f g8 ees'16 d ees g, (f) ees \break

  | f8 d'16 c d f, (ees) d ees\f g a b c ees, d c
  | \clef tenor g c' (d c) g, c' (d b) c8 c,\mf c c
  | \repeat unfold 8 { c8 }
  | \repeat unfold 8 { bes8 } \break

  | \repeat unfold 4 { a8 } \repeat unfold 4 { aes }
  | g16\p ees' ees ees g ees ees ees g e e e g e e e
  | aes16 f f f aes f\cresc f f a fis fis fis a fis fis fis \break

  | bes16 g g g bes g g g b g g g b g g g
  | \clef treble c16 g g g c g g g d' g, g g d' g, g g
  | ees'16\f c c c ees c c c g, b' b b d b b b \pageBreak

  | \clef tenor c,,16\p c'' c c ees c c c g, b' b b d b b b
  | c,,4 r r16 aes''\f aes aes c aes aes aes
  | d8 8 8 c bes16 g g g bes g g g \break

  | c8 8 8 bes aes16 f f f aes f f f
  | bes16 aes g f ees d c bes aes8 g c'16 bes aes g
  | f8 ees c'16\p bes a g f8 ees c'16\f bes aes g f8 ees f d ees ees ees ees \break

  | \repeat unfold 4 { e8 } \repeat unfold 4 { f }
  | \repeat unfold 4 { d } \repeat unfold 4 { ees }
  | \repeat unfold 4 { c } \repeat unfold 4 { d }
  | g,4 r g'16 f ees d c bes a g \break

  | \clef treble g'8\p bes d g \clef tenor g,16 f ees d c bes a g
  | \clef treble d'8 fis a d \clef tenor d,16 c bes a g fis e d
  | \clef treble d'8\p fis a d \clef tenor d,16 c bes a g fis e d
  | g4 r r2 \break

  | \clef treble c16\f c' bes c \repeat unfold 3 { c,16 c' bes c }
  | a8 f a c r f,\upbow a [c]
  | bes,16 bes' a bes \repeat unfold 3 { bes,16 bes' a bes } \break

  | g8 ees g bes r ees,\upbow g [bes]
  | a,16 a' g a \repeat unfold 3 { a,16 a' g a }
  | fis8 d fis a r d,\upbow fis [a] \break

  | g16\f a g a bes c bes c g\p a g a bes c bes c
  | g16\f a g a bes c bes c d,8 bes' d, a'
  | \clef bass g,16 g g g bes g g g b g g g b g g g \break

  | c16 g g g c g g g ces g g g ces g g g
  | d'4 r d r
  | g,8 8 8 8 8 8 8 8
  | g8 8 8 8 d'4 r16 c\upbow^\markup { \tiny \italic "rit." } bes a
  | g8 g' c, d g,2\fermata \fine
}


\book {
  \score {
    \header {
      piece = "Allegro"
    }
    \celloii
  }
}
