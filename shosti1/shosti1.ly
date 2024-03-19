\version "2.24.3"

\header {
  copyright = \markup { \small \italic "Engraving Ⓒ Mark Tomko, 2024" }
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

\book {
  \score {
    \layout {
      \context {
        \Score
        \omit BarNumber
      }
      top-margin = 0.0
      indent = 0.0
    }
    \relative {
      \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
      \time 3/8
      \clef bass
      \key des \major
      %{ starts page 10 %}
      \mark 54 \compressMMRests { R4.*13 }
      | \mark \default \compressMMRests { R4.*13 }
      | \mark \default \compressMMRests { R4.*9 }
      | \mark \default \compressMMRests { R4.*13 }
      | \mark \default r8 e16\p\parenthesize\upbow (fis g8) \break
      | dis8-. fis-. cis-.
      | e-. dis16 (cis b8-.)
      | fis8-. b-. e-.
      | dis16\accent (cis b a b8-.) \break
      | fis8-. b-. e-.
      | dis16\accent (cis b a b8-.)
      | g8-. fis-. e-.
      | dis'8-. cis16 (dis e8-.) \break
      | dis16 (e fis e fis g)
      | a8-. e-. g-.
      | dis8-. fis-. cis-.
      | fis,16 (g a g a ais) \break
      | \mark \default b4.~
      | b4.
      | gis4.
      | cis4.
      | b4.
      | cis4 (gis8-.) \break
      | b8-. b-. cis-.
      | d4.
      | e4.
      | cis4.
      | b-. \break
      | d4 fis8\< (
      | c'8) r8\! c8 (
      | \mark \default b8-.) f!4
      | b8_\markup { \italic cresc. } d,4
      | b'8-. des,!4 \break
      | r8 c16 (des ees8-.)
      | ges4 (aes8-.)
      | r8 a16\mf (aes ges8-.)
      | r8 a16 (bes c8-.) \break
      | aes!4 (c,8-.)
      | des'4 (c,8-.)
      | r8 g16 (aes bes8-.)
      | r8 aes16 (bes b8-.) \break
      | r8 ais16 (b16 cis8-.)
      | \mark \default d4.~
      | d4.
      | b4.
      | e4. \break
      | fis8-._\markup { \italic "cresc. poco a poco" }  g-. a-.
      | b8-. c-. d-.
      | ees!4 f8
      | fis8 g,16 (a bes!8) \break
      | a8-. bes16 (c des!8-.)
      | b,8-. c16 (d ees8-.)
      | d8-. b-. aes'!-. \pageBreak
      | g16\accent (f ees d ees8-.)
      | c8-. f-. b-.
      | a16\accent (g f ees f8-.)
      | d8-. g-. c-. \break
      | \mark \default des,!4\accent\ff c8\accent-.
      | f,4.~\accent
      | f4.
      | des?4.~\accent
      | des8 g4\accent \break
      | <<des4.\accent~ des'4.~>>
      | <<des8 des,8>> <<g4 g'4\accent>>
      | r8 r8 c,8
      | <<f4.~ f,4.~>>
      | <<f'4. f,4.>>
    }
  }
}

