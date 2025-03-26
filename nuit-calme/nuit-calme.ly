\version "2.24.3"

\include "bass/solo-tuning.ly"

\header {
  title = "NUIT CALME"
  instrument = "Contrabass"
  meter = \soloTuning
  composer = \markup { \bold "Henriëtte Bosmans" }
  arranger = \markup { \tiny "Mark Tomko" }
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
  %#(set-default-paper-size '(cons (* 13 in) (* 10 in)))
}

sempref = \markup { \small \italic sempre \dynamic f }

semprep = \markup { \small \italic sempre \dynamic p }

semprepp = \markup { \small \italic sempre \dynamic pp }

notes = \relative {
  \clef bass
  \key fis \major
  \tempo \markup { \small "Très lent" }
  \compressMMRests R2.*2
  | fis,2\pp\<^\markup { \italic \tiny "tendre et doux" } (gis4)
  | ais2 (b4)
  | bis4 (cis\! dis)
  | eis4 (fis gis)
  | a4. gis8 (a gis)
  | fis2 (e4) \break
  % line 2
  | cis2.~\>
  | cis4\! dis (cis)
  | b2 (a4)
  | b2 (cis4)
  | cis2.
  | dis4\< (e fis)\!
  | b2. ( \break
  % line 3
  | ais!4.) gis8\< (ais [gis])\!
  | e2.
  | d2\< (e4)
  | c4.\pp r8 g'4~\mf
  | g4\> fis\! (g)
  | aes4\< (bes c)\!
  | bes4\> (c aes)\! \break
  % line 4
  | g2 g4~
  | g4 fis\< g\!
  | aes2.\>
  | aes4.\! g8\< (aes [g])\!
  | f2.~
  | f2 des4
  | c2.\> \break
  | \compressMMRests R2.*6 \!
  | \clef treble r4 \once \override TextScript.X-offset = 3 \once \override TextScript.Y-offset = -4 f4\pp_\markup { \tiny \italic "espr." } (c')
  | \clef treble ees2\< ges4
  | f4.\> f,8\mp\< (a [c])
  | ees2 ges4~\!
  | ges4_\cresc^\markup { \tiny \italic "poco animato" } aes8\! (bes) ges4 (
  | fis!4) gis!8 (ais!) fis4~ \break
  | fis4^\markup { \small \italic "rit." } gis\tenuto a\tenuto
  | cis2.~\>
  | cis2\! r4
  | \compressMMRests R2.*2
  | a4.\p_\markup { \tiny \italic "dolce" } gis8\< (a [gis])\!
  | fis2.~
  | fis4. e8 (fis [e]) \break
  %line 5
  | d4 (e) fis!\<
  | gis!2.\tenuto\>
  | f4.\! e8\< (f [e])\!
  | d2.~
  | d4 e\< d
  | a2.\> \break
  | %{\clef bass %} r4\! r a\upbow
  | g2 (c4)
  | d2 (a4)
  | c4 bes8 (a g4~)
  | g4 f8 (g ees4~
  | ees4) d2~ \pageBreak
  % page 2
  % line 1
  | d2 d'4\upbow\<
  | \clef treble c2^\markup { \tiny \italic animato }\! (ees4)
  | d2 \once \override TextScript.X-offset = 2 a'4\p\<_\markup { \tiny \italic "molto espr." } (
  | c4) bes8\! (a) g4~
  | g4 f8^\markup { \tiny \italic "piû animato" } (g) ees4~
  | ees4 a8\< (bes g4)
  | c2.\! \break
  % line 2
  | c,2 %{ maybe keep this down the octave %} (\ottava 1 c'4)_\markup { \tiny \italic "8va ad lib" }
  | ees4.\ff^\markup { \tiny \italic "molto espr."} d8 (e [d])
  | des2_\sempref c4~
  | c4. b8 (c [b])
  | bes2 aes4~
  | aes4 g^\markup { \tiny \italic rit } (f~) \break
  % line 3
  | f4\> ees\tenuto d\tenuto\!
  | c4.\tenuto r8 g'4~^\markup { \tiny \italic "a tempo" }\<
  | g4\! fis (g)
  | aes4 (bes c)
  | bes4 (c aes)
  | g2 g4~ \break
  % line 4
  | g4 fis\< g
  | aes2.~\!
  | aes2_\semprep bes4
  | b2.~\tenuto
  | b2 c4\tenuto
  | des2.~\tenuto^\markup { \tiny \italic rit. }
  | des2 des4\ppp^\markup { \tiny \italic "très doux" } \break
  % line 5
  | ees4 (f g)
  | f (g ees)
  | des2_\semprepp des4~
  | des2 des4
  | ees4 (f g)
  | f (g ees) \break
  % line 6
  |  des4 (ees f)
  | ees ( f des\<)
  | ces2.
  | \once \override TextScript.X-offset = 2 \once \override TextScript.Y-offset = -6 b4.\p\<_\markup { \tiny \italic "espr." } a8 (b [a])
  | g2. \!
  | g4. f8 (g [f])
  | e2. %{ to maybe here %} \break
  % line 7
  | d2\< (cis!4)\!
  | \clef bass b2 a4~\>
  | a4 g^\markup { \tiny \italic "rit." }\! (e)
  | c2.\>
  | c4\! \ottava 0 r r
  | fis,2\pp^\markup { \tiny \italic "molto tranquilo" } (gis4)
  | a2 (b4) \break
  % line 8
  | bis4 (cis dis)
  | e4\< (fis gis)\!
  | a2.
  | gis4\tenuto (a\tenuto gis)
  | fis2.
  | e2.
  | cis2.
  | b4\tenuto (cis\tenuto b\tenuto) \break
  % line 9
  | a2.
  | g2.
  | fis2.\<
  | e2.\tenuto\>
  | fis2.\<\tenuto
  | e2.\>\tenuto
  | cis2.\pp\tenuto~
  | cis2.~
  | cis2.\fermata \fine
}

\book {
  \score {
    \layout {
      \context {
        \Score
        \consists Measure_counter_engraver
      }
      top-margin = 0.0
    }
    \new StaffGroup {
      \new Voice {
        \set countPercentRepeats = ##t
        \set restNumberThreshold = 1
        \override MultiMeasureRest.expand-limit = 2
        \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
        \set Staff.ottavationMarkups = #ottavation-ordinals
        \numericTimeSignature
        \time 3/4
        \transpose fis e' {
          \notes
        }
      }
    }
  }
}
