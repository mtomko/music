\version "2.24.3"

\header {
  title = "LA MER"
  subsubtitle = \markup { \tiny \italic "Trois esquisses symphoniques pour orchestre" }
  instrument = \markup { \small "CONTREBASSES" }
  composer = \markup { \bold "Claude Debussy" }
  arranger = \markup {
    \tiny \column \right-align \string-lines
    "edited by Clinton F. Nieweg
     and Nancy Bradburd"
  }
  tagline = #f
}

\paper {
  #(set-default-paper-size '(cons (* 13 in) (* 10 in)))
}

piupp = \markup { \small \italic più \dynamic pp }


\book {
  \score {
    \header {
      piece = \markup { \large "No 1._ De l'aube à midi sur la mer" }
    }
    \layout {
      \context {
        \Score
        \consists Measure_counter_engraver
      }
      top-margin = 0.0
    }
    \new StaffGroup {
      \new Voice {
        \relative {
          \set countPercentRepeats = ##t
          \set restNumberThreshold = 1
          \override MultiMeasureRest.expand-limit = 2
          \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
          \numericTimeSignature
          \time 6/4
          \clef bass
          \key b \minor
          \tempo \markup { \small "Très lent" }
          <<
            { R1. | \repeat unfold 4 { b,4-. r r b4-. r r } s1 }
            \new Staff {
              \time 6/4
              \clef bass
              \key b \minor
              \clef bass
              b1.\pp~
              | \repeat unfold 3 { b1.~ }
              | b1. \time 4/4 
              \bar "||" s1 \bar ""
            }
          >> \break
          << R1 b1~\pp>>
          | <<R1 b1>>
          | <<R1 b1~\tenuto>>
          | <<R1 b1>>
          | \compressMMRests R1*2
          | \mark \default b4:32\pp^\markup { \small UNIS } a:32 b:32 a:32
          | b4:32\< a:32 b:32 a:32
          | aes4:32\> g:32 fis:32 g:32 \! \break
          | fis!2:32 g:32 _\piupp
          | ges4:32\> f:32 e:32 ees:32 \!
          | d1~
          | d1~
          | d4 r r2
          | \compressMMRests R1*2
          | b'4:32\pp\> a:32 b:32 a:32 \! \break
          | \mark \default \tempo \markup {
            \small { "Animez peu a peu jusqu'à l'entrée du 6/8" }
          } \repeat percent 6 { b:32 a:32 b:32 a:32 }
          | b:32\pp\< a:32 b:32 a:32
          | b:32 a:32 b:32 a:32 \!
          \bar "||" \tempo \markup { \small "Modéré, sans lenteur" \small "(dans un rythme très souple)" } \time 6/8 \key des \major \compressMMRests R2.*4
          | \mark \default \compressMMRests R2.*6
          | \new CueVoice {
            \override TupletBracket.bracket-visibility = ##f
            \cueClef "treble" \tuplet 3/2  { bes'''16\p^\markup { Htb } \< (aes f } ees8~ \tuplet 3/2 { ees16 f aes } \tuplet 3/2 { bes aes f } aes8 bes~ \! \break
            | bes8^\markup { Fl. }\mf\> aes ees) bes'\> (aes ees) \! \cueClefUnset
          }
          | \mark \default bes,,4\pp^\markup { pizz. } aes8~aes8 ces\< des
          | bes4\pp 8 r4 bes8
          | bes4\p aes8~8\< aeses ges
          | ces4\p r8 ces4 r8
          | \compressMMRests R2.*4
          | \tempo \markup { \small "Un peu animé" } g2.\p\<^\markup { arco }\upbow
          | e2.\p \< \downbow \break
          | \tempo \markup { \small "au Mouvt" } \mark \default \repeat percent 3 { r16\pp^\markup { pizz. } f [r aes r ces] r f, [r aes r ces] }
          | r16 f, [r aes r ces] r f, [r aes] r8
          | fes2._\piupp^\markup { arco } (
          | f!4.\> g) \break
          | \tempo \markup { \small "Cédez un peu " } \mark \default aes2.\pp
          | ces4^\markup { pizz. } r8 r4 r8
          | aes2.\pp^\markup { arco } \downbow
          | aes4\p\< \upbow (b8 aes4 e8) \!
          | r4 r8 r4 bes'8-.\tenuto\p^\markup { pizz }
          | \tempo \markup { \small "au Mouvt" } \mark \default \compressMMRests R2.*3 \pageBreak
          \bar "||" \time 9/8 s2.
        }
      }
    }
  }
}
