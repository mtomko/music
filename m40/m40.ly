\version "2.24.3"

plus = \finger \markup \fontsize #6 "+"

\header {
  title = "Symphony no. 40"
  composer = "Wolfgang Amadeus Mozart"
  opus = "K. 550"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

kb = \relative {
  \time 4/4
  \key g \minor
  \clef bass
  \tempo "Allegro Molto"
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
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
    b,4\p r^\markup { "U.H."} r c'8\downbow-2\2 (b-1)
    | b4\upbow c8\downbow (b) b4\upbow c8\upbow (b)
    | b4-1\downbow (g'-3) r g8\upbow (fis-2)
    | e4-4 e8 (d-1) c4-4 c8-4 (b-2)
    | a8-.-1 b-.-2 c-.-4 b-.-2 a-.-1 bes-.-2 g-.-0 a-.-1 \break
    | f8-.-2 a-.-4 d-.-4 f,-.-2 e-.-1 g-.-2 cis-.-4 e,-.-1
    | d8-0 a-0 b-1 cis-2 d-4 a-0 d-0 e-1
    | f8-2 d-0 e-1 fis-2 g-4 d-0 g-0 a-1
    | bes4-2\downbow g,-2\downbow r^\markup { "U.H." } a'8-4\downbow\2 (g-1) \break
    | g4\upbow a8\downbow (g) g4\upbow a8\upbow (g)
    | g4-1\downbow (e'-4) r e8-4\upbow (d-1)
    | c4-4 c8 (bes-1) a4-1 a8 (g-0)
    | f8-.-2 g-.-1 a-.-4 g-.-1 f-.-1 g-.-4 ees-.-1 f-.-4
    | d8-.-0 f-.-4 bes-.-4 d,-.-0 c-.-4 ees-.-1 a-.-2 c,-.-4 \break
    | bes8-.-1 f-.-1 g-.-4 a-.-0 bes-.-1 a-.-0 bes-.-1 c-.-1
    | d8-4 bes-1 c-4 d-0 ees-1 d-0 ees-1 f-1
    | g8-4 ees-1 f-4 g-0 a-2 g-0 a-2 bes-1
    | c8-4 a-1 bes-2 c-1 d-4 cis-2 d-4 e-1 \break
    | fis8-3 d-\plus e-1 fis-3 g-3\flageolet ees-2 d-1 c-4
    | bes8-1 c-4 bes-2 a-1 g-4 f-1 g-1 gis-2
    | a8-4 8 8 8 8 8 8 8 \break
    | \mark 3 a8 8 8 8 8 8 8 8
    | a8 8 8 8 8 8 8 8
    | a8 8 8 8 8 8 8 8
    | a2 r2 \fine
  }
}

zim = \relative {
  \time 4/4
  \key c \major
  \clef bass
  \tempo "Allegro Molto"
  \relative {
    a,4\p r r a'4
    | a4 4 4 4
    | a4 (e') r e4
    | e4 4 4 4
    | e8 8 8 8 8 8 8 8 \break
    | a,8 a e' a, a a e' a,
    | a8 a, a a a a a' a
    | a a a a a a e' e
    | e4 e,, r a'4 \break
    | a4 a4 a4 a4
    | a4 (e') r e4
    | e4 4 4 4
    | a,8 8 8 8 8 8 8 8
    | a8 8 e'8 a, a, a' e' a,, \break
    | a8 e e a a a a a
    | a8 a a a' a a a a
    | a8 a a e' e e e e
    | e8 e e e e e e e \break
    | e8 8 8 8 8 8 8 8
    | e8 8 8 8 a,8 8 8 8
    | a8 8 8 8 8 8 8 8 \break
    | \mark 3 a8 8 8 8 8 8 8 8
    | a8 8 8 8 8 8 8 8
    | a8 8 8 8 8 8 8 8
    | a2 r2 \fine
  }
}

\book {
  \score {
    \layout {
      indent = 0.0
    }
    \header {
      piece = "I"
    }
    \new StaffGroup {
      \set Score.currentBarNumber = 114
      \set Score.rehearsalMarkFormatter = #format-mark-alphabet
      <<
        \new Staff \kb
        \new Staff \zim
      >>
    }
  }
}
