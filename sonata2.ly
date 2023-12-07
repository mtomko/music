\version "2.24.3"

menoF = \markup { \tiny \italic meno \dynamic f }

\header {
  title = "SONATA No. 2"
  composer = "Adolf Míšek, Op. 6"
  instrument = "Contrabass"
  copyright = "Ⓒ Mark Tomko, 2023"
  tagline = #f
}

\book {
  \score {
    \new Staff {
      \new Voice {
        \relative {
          \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
          \clef bass
          \time 3/4
          \key d \minor
          \tempo "Con fuoco"

          | d'2.~ \f\> | d4 a4_\menoF\! (f'4) | f4. e8 (d8 cis8)
          | d4 a4 (a'4) | a4. g8 f8 e8 | f4\< \clef treble d4 d'4 \break
          | d4.\ff (g,8) g8 (bes8) | bes8 (e,8) e8 (g8) g8 (bes,8) | \clef bass bes8 (e8) e8 (g,8) g8 (bes8)
          | bes8 (e,8) e8 (f8) g8-. bes8-. | a2 f8-. d8-. | bes'2.\< \break
          | b2. | \afterGrace cis2.\trill\sf{ (bes16 [cis]) } | d2.~\f
          | d4 a4_\menoF (f'4) | f4. e8 d8 c8 | d4 a4 (a'4) \break
          | a4. g8 f8 e8 | f4 \clef treble d4\< (d'4) | ees4.\ff ees8 d8 cis8
          | d2 d,4 | e4._\markup {\italic \tiny dim. } \clef bass b8 c8 d8 | cis4\prall\> (b4) a4 \break
          | \mark \default f'2.\mf^\markup { \italic \tiny "a tempo" } | \afterGrace g2.\trill { (f16 [g]) } | a2.~
          | a4\< a,4 (a'4) | \clef treble bes2\f bes8 (a8) | a8 (g8) g8 (f8) f8 (e8) \break
          | g8 (f8) f8 (e8) e8 (d8) | \clef bass e8\< (d8) d8 (c8) c8 (b8)\! | a4 bes,8\p bes8 a8 a8
          | \repeat tremolo 2 d8 \repeat tremolo 2 cis8 \repeat tremolo 2 f8 | \repeat tremolo 2 e8 \repeat tremolo 2 bes'8 \repeat tremolo 2 a8
          | \repeat tremolo 2 d8 \repeat tremolo 2 cis8 \repeat tremolo 2 f8 \break
          | \clef treble \repeat tremolo 2 e8 \repeat tremolo 2 bes'8 \repeat tremolo 2 a8\< | \repeat tremolo 2 g8 \repeat tremolo 2 f8 \repeat tremolo 2 e8
          | \mark \default d4\! r4 r4 | \clef bass d,2.->\ff | des2.->\< | c2.-> | b2.->\fff\> | b4\! r4 r4 \break
          | c4 r4 r4 | cis4\> r4 d4 | g4\! r4 r4 | \compressMMRests{ R2.*3 }
          | <<
            \new CueVoice {
              \cueClef "treble" \stemUp d'4^"piano" e4 f
            }
          >>
        }
      }
    }
  }
}


