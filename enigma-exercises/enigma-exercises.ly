\version "2.24.3"

plus = \finger \markup \fontsize #6 "+"

\header {
  title = "Enigma Variations"
  subtitle = "Bowing Exercises"
  composer = "Edward Elgar"
  %opus = "K. 550"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

kbI = \relative {
  \time 1/1
  \key c \major
  \clef bass
  \tempo "Presto"
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override DynamicText.font-size = #-2
  \override DynamicTextSpanner.font-size = #-2
  \override TextSpanner.style = #'line
  \override TextSpanner.to-barline = ##f
  \override TextSpanner.bound-details =
  #`(
      (left
       (text . ,#{ \markup { \draw-line #'( 0 . -.5) } #})
       (Y . 0)
       (padding . 0.25)
       (attach-dir . -3)
       )
      (right
       (text . ,#{ \markup { \draw-line #'( 0 . -.5) } #})
       (Y . 0)
       (padding . 0.25)
       (attach-dir . 3)
       )
      )
  \relative {
    \mark 23
    r4 c-. g'-. g,-.
    | c-.\cresc g'-. g,-. c-.
    | g' g, c g'
    | g,\< c g' g,
    | c8\p g g'4 g, c8 g
    | g'4 g,\< c8 g g'4\! \break

    | g,4\p c8 g g'4 g,
    | c8 g g'4\< g, c8 g
    | g'4\f g, c8 g g'4
    | g,4 c8 g g'4 g,
    | c8 g g'4\dim g, c8 g \break

    | g'4 g, c8 g g'4
    | \mark \default g,4\p c g' g,
    | c4\cresc g' g, c
    | g'4 g, c g'
    | g,4\< c g' g,
    | c8-.\pp g-. g'4-. g,-. c8-. g-. \break

    | g'4\< g, c8 g g'4
    | g,4\p c8 g g'4 g,
    | c8\< g g'4 g, c8 g
    | g'4\f g, c8 g g'4
    | g,4 c8 g g'4 g, \break

    | c8 g g'4 g, c8 g
    | g'4 g, c8 g g'4
    | \mark \default c,2\ff d4\< ees\!
    | g4-. r r2
    | d2-^ ees4\< f\!
    | aes4-. r r2
    | ees2-^ f4\< g\! \break

    | c4 r r2
    | aes4-! r r2
    | \compressMMRests R1*2
    | R1
    | \mark \default c4\ff c,8-> g-> g'4 g, \bar "||"
  }
}

zimI = \relative {
  \time 1/1
  \key c \major
  \clef bass
  \tempo "Presto"
  \relative {
    r4 a ees' e,,
    | a ees'' e,, a
    | ees'' e,, a ees''
    | e,, a ees'' e,,
    | a8 e ees''4 e,, a8 e
    | ees''4 e,, a8 e ees''4

    | e,, a8 e ees''4 e,,
    | a8 e ees''4 e,, a8 e
    | ees''4 e,, a8 e ees''4
    | e,,4 a8 e ees''4 e,,
    | a8 e ees''4 e,, a8 e

    | ees''4 e,, a8 e ees''4
    | e,,4 a ees'' e,,
    | a4 ees'' e,, a
    | ees''4 e,, a ees''
    | e,, a ees'' e,,
    | a8 e ees''4 e,, a8 e

    | ees''4 e,, a8 e ees''4
    | e,,4 a8 e ees''4 e,,
    | a8 e ees''4 e,, a8 e
    | ees''4 e,, a8 e ees''4
    | e,,4 a8 e ees''4 e,,

    | a8 e ees''4 e,, a8 e
    | ees''4 e,, a8 e ees''4
    | a,,2 a'4 4
    | ees'4 r r2
    | a,2 4 4
    | ees'4 r r2
    | a,2 a4 ees'

    | ees4 r r2
    | ees4 r r2
    | \compressMMRests R1*2
    | R1
    | ees4 a,,8 e ees''4 e,, \bar "||"
  }
}

\book {
  \score {
    \layout {
      indent = 0.0
    }
    \header {
      piece = "VII. Troyte"
    }
    \new StaffGroup {
      \set Score.rehearsalMarkFormatter = #format-mark-numbers
      <<
        \new Staff \kbI
        \new Staff \zimI
      >>
    }
  }
}
