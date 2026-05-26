\version "2.26.0"

\header {
  title = "CAPRIOL"
  subtitle = "Suite para orquesta de cuerdas arreglada para orquesta clásica"
  composer = "Peter Warlock"
  tagline = #f
}

\layout {
  indent = 0.0
}

\paper {
  #(set-paper-size "letter")
}

bassedanse = \relative {
  \time 3/4
  \key d \minor
  \clef bass
  \numericTimeSignature
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override DynamicText.font-size = #-2
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  \tempo "Allegro moderato" d4\mf r r
  | a'4\downbow r a
  | d4 c2
  | f,2\accent 4
  | \compressMMRests R2.*2
  | r2 c'4\upbow
  | f,2\accent 4 \break

  | d4 r g
  | r4 a\upbow r
  | d4 c2
  | a2\accent 4
  | d4 r d
  | c4 r d
  | bes4 c2
  | f,2\accent 4 \break

  | \mark \default R2.
  | f4\f e\upbow d\upbow
  | c4 r r
  | \compressMMRests R2.*4
  | d2\mf 4
  | R2.
  | f4 e\upbow d\upbow
  | c4 r r
  | \compressMMRests R2.*4 \break

  | d2\mf 4
  | \mark \default \compressMMRests R2.*8
  | d4\mf^\markup { \tiny \italic "pizz" } r g
  | a4 r c
  | d4 r b
  | a4 r a
  | d,4 r <g d'>4
  | c4 r d
  | r4 e e, \break

  | a4 r r
  | d,4\ff^\markup { \tiny \italic "arco" } bes g
  | d'4 e a,
  | d4 c2
  | f2 4
  | d4 r bes
  | a4 r d
  | g,4 r c
  | f2 4 \break

  | \compressMMRests R2.*4
  | f4\mf r d
  | r4 g r
  | r4 a2
  | d,2 4
  | \compressMMRests R2.*2
  | a'4-. r a-.
  | d,4-. r r\fermata \fine
}

pavane = \relative {
  \time 2/4
  \key d \minor
  \clef bass
  \numericTimeSignature
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override DynamicText.font-size = #-2
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
  \set Score.currentBarNumber = 69
  \override DynamicTextSpanner.style = #'none

  \tempo "Allegretto, ma un poco lento" 4=69
  g,2~\p
  | 2~
  | 2
  | 2
  | g4 d
  | g4\< f\!
  | bes2
  | bes4 4
  | c4 d8 8
  | ees4\> f8 8\!
  | bes,2
  | g'2
  | g4 d4
  | g4\< f\! \break

  | bes,2
  | bes4 4
  | c4 d
  | ees4\> f4\!
  | bes,2
  | bes'2\mf
  | f4 d4
  | g4 c,4
  | d2
  | bes4\> 8 8
  | c4 g8 8
  | d'4 8 8\!
  | g,4 8 8 \break

  | \compressMMRests R2*7
  | g2~\p
  | 2~
  | 2
  | \mark 3
  | g'4\mp 8 8
  | g'4 d8 8
  | g4 f8 8
  | bes,4 8 8
  | bes4 8 8
  | c4 d8 8
  | ees4 f8 8 \break

  | bes,4 8 8
  | g4 8 8
  | g'4 d8 8
  | g4 f8 8
  | bes,4 8 8
  | bes4 8 8
  | c4 d8 8
  | f4 8 8
  | bes,4 8 8 \break

  | \clef tenor \mark \default
  | bes'4 8 8
  | f4 d8 8
  | g4 c,8 8
  | \clef bass d4 8 8
  | bes4 8 8
  | c4 g8 8
  | d'4 8 8
  | g,4 8 8 \break

  | \tempo \markup { \small "Poco piú lento" } bes2
  | d4 f
  | c ees
  | \tempo \markup { \small"rallentando molto" } \once \override Hairpin.to-barline = ##f bes4\> 8 8
  | bes4 8 8
  | a4 g
  | d2\! \break
  | \tempo "a tempo" g,2~\p
  | 2~_\markup { \tiny \italic "dim." }
  | \repeat unfold 2 { 2~ }
  | 2~\pp
  | 2~
  | 2
  | R2\fermata \fine

}

mattachins = \relative {
  \time 2/4
  \key d \minor
  \clef bass
  \numericTimeSignature
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override DynamicText.font-size = #-2
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
  \set Score.currentBarNumber = 353
  \set Timing.beatBase = 2

  \tempo "Allegro con brio" 2=80
  f4\mf 8 8
  | f4 8 8
  | f4 8\> 8
  | f4 8 8
  | f4\p 8 8
  | \repeat unfold 6 { f4 8 8 } \break

  | \repeat unfold 7 { f4 8 8 }
  | c4 8 8
  | f4 8 8 \break

  | f4\p 8 8
  | \repeat unfold 5 { f4 8 8 }
  | c4\< 8 8
  | f4 bes8-.\! c-. \break

  | \mark 19 f,8\f 8 8 8
  | bes,8 8 8 8
  | f'8 8 8 8
  | c8 8 8 8
  | f8 8 8 8
  | ees8 8 8 8 \break

  | f8 8 c8 8
  | f4\accent f4\accent
  | f4 8-. 8-.
  | bes,4 c4
  | f4 8-. bes,-.
  | a4 g
  | f4\ff bes'8-. a-.
  | g4 ees
  | d c8-. 8-.
  | f,4\accent f4\accent \break

  | \mark \default R2
  | a'4\ff 8-. 8-.
  | R2
  | ges4\accent ges4\accent
  | \compressMMRests R2*3
  | f4\accent f4\accent
  | \compressMMRests R2*3
  | ges4\accent ges4\accent
  | \compressMMRests R2*4 \break

  | \mark \default f,4\accent\ff f4\accent
  | R2
  | f4\accent f4\accent
  | R2
  | f4\accent f4\accent
  | \compressMMRests R2*3
  | \tempo \markup { \small "Con tutta forza" } R2
  | f4\accent f4\accent
  | R2
  | f4\accent f4\accent
  | \compressMMRests R2*2
  | f4\accent f4~\accent
  | 4\marcato r4 \fine

}

\book {
  \paper {
    system-system-spacing.basic-distance = #16
  }
  \score {
    \header {
      piece = "1. Basse-danse"
    }
    \bassedanse
  }
  \score {
    \header {
      piece = "2. Pavane"
    }
    \pavane
  }
  \score {
    \header {
      piece = "6. Mattachins (Sword dance)"
    }
    \mattachins
  }
}
