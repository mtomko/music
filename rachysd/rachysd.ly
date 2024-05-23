\version "2.24.3"

pizz = \markup { \small \italic pizz. }
arco = \markup { \small \italic arco }
dim = \markup { \small \italic dim. }
cresc = \markup { \small \italic cresc. }

\header {
  title = "SYMPHONIC DANCES"
  instrument = "Bass"
  %{copyright = \markup { \small \italic "Engraving Ⓒ Mark Tomko, 2024" }%}
  tagline = #f
}

\paper {
  #(set-default-paper-size '(cons (* 13 in) (* 10 in)))
}

mvtinotes = \relative {
  \set restNumberThreshold = 0
  \override MultiMeasureRest.expand-limit = 2
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  \time 4/4
  \clef bass
  \key ees \major
  \tempo "Non allegro"
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  %{ starts page 1 %}
  \compressMMRests R1*9
  | \mark \default r4 aes8\ff\downbow r g\downbow r ees\downbow r
  | f8 \downbow r des\downbow ees\upbow aes,\downbow r d\downbow r
  | r4 des8\downbow r c\downbow r aes\downbow r \break
  | bes8\downbow r ges\downbow aes\upbow des\downbow r g,\downbow r
  | r2 a8\sff\downbow r r4
  | r4 aes?8 r8 r4 r8 g'16\ff\downbow ees
  | c2.~c8 g'16\downbow ees
  | c2.~c8 g'16\downbow ees\break
  |\mark \default c2.~c8 g'16\downbow ees
  | c2.~c8 r
  | \repeat percent 4 { c8\downbow r r4 c8\downbow r ees\downbow r }
  | c8\downbow r ees\downbow r r4 f8_\markup { \italic \small "dim."}\upbow r \break
  | \repeat percent 2 { g8\mf\downbow r r4 g8\downbow r8 d8\upbow r  }
  | \mark \default g8 r r4 r2
  | R1
  | \repeat percent 2 { f8\mf\downbow r8 r4 f8\downbow r c\upbow r }
  | f8 r r4 r8 a8_\markup { \italic \small "cresc." }-.\downbow a4\tenuto\upbow \break
  | fis8-. d-. d4\tenuto\downbow f\tenuto\upbow g,8\downbow r
  | \repeat percent 2 { c8\ff\downbow r r4 f8\downbow r ees\downbow r }
  | \repeat percent 2 { c8 r r4 f8\downbow r_\markup { \small \italic "dim." } ees8\upbow r }
  | \mark \default c8\p r r4 c4^\markup { \small \italic "pizz." } g'
  | c,4 r c_\markup { \small \italic "dim" } g' \break
  | c,4 r c r
  | c4\pp r r2
  | r2 r4^\markup{ \small \italic "arco" } r8 ees16\f\downbow^\markup { \tiny \italic "bass soli" } c16
  | \repeat percent 2 {aes2~\accent\downbow aes8 bes16\upbow d f8-.\accent\upbow ees16 c}
  | aes8-.\accent bes16\upbow d f8-.\accent g16\downbow ees c8-.\accent des16\upbow f aes8-.\accent g16^\markup { \tiny \italic "celli" }\downbow ees16 \break
  | \mark \default \repeat percent 2 {  c2~\accent c8 des16\upbow g bes8-.\accent g16\downbow ees }
  | c8-.\accent des16\upbow f aes8-.\accent bes16\downbow g ees8-.\accent f16\upbow aes c8-. r8
  | \repeat percent 3 { d,4^\markup {\small \italic pizz. }\p r r2 }
  | \time 2/4 R2
  | \mark \default \time 4/4 e4\p r r2 \break
  | \repeat percent 2 { e4 r r2 }
  | \time 2/4 R2
  | \time 4/4 e4\f r r2
  | \time 2/4 r4^\markup { \small \italic "arco" } r8 ees?16\p\downbow-1 c-4
  | \time 4/4 aes4.\tenuto-4 des8-.\accent\downbow-4 a-.-0 c-.\accent\downbow-2 aes8-.\upbow-4 gis'16\f\downbow-1 e-2
  | \time 3/4 ces8.\accent-2 (ees16-1) c8.\accent-4 (e16-2) b8\accent\downbow-2 f'16\downbow-4 d-0 \pageBreak
  | \time 4/4 bes4.\p  ees8-.\accent\downbow b-. d-.\accent bes8-.\upbow bes'16\f\downbow-2 ges-4
  | \time 3/4 ees8-.-1 a16\upbow-2 f-4 d8-.-0 aes'16\downbow-1 e-2 des8-.-4 g16\upbow-0 e?-1
  | \mark \default \time 4/4 c8-.\upbow-2 r r4 r2
  | R1
  | c4^\markup { \small \italic "pizz." }\p r r2
  | R1 \break
  | \time 3/4 R2.
  | \time 4/4 R1
  | \time 3/4 e8^\markup { \small \italic "arco" }\sf\downbow r r4 r4
  | \time 4/4 R1
  | \time 3/4 R2.
  | \mark \default \time 4/4 r8 des8\p-.\upbow bes4~ bes8 e16\downbow des? bes8-. f'-.\break
  | bes,8-. ges'16-.\downbow d-. bes4~\f\accent\> bes8\! r r4
  | r8 d-.\p\upbow b4.\tenuto f'16_\markup { \small \italic "cresc." }\downbow d b8 fis'
  | b,8 g'16\downbow dis b!4~\f\accent\> b8\! r r4
  | r8 fis'8-._\markup { \small \italic "marcato" }\downbow bes,?-.\upbow d16\downbow b fis2\accent~
  | fis8 aes'-.\upbow c,-.\downbow e16\downbow cis gis2~\accent \break
  | gis8 d'-.\mf\upbow d4\tenuto ees8-._\markup{ \small \italic "cresc." }\upbow e-.\upbow e4\tenuto
  | f8-.\upbow g-.\upbow g4\tenuto\downbow a8\tenuto\upbow r g\downbow r8
  | \mark \default c,8\sff\downbow r r4 f8\downbow r ees\downbow r
  | c8\downbow r r4 f8\downbow r ees\downbow r
  | c8\downbow r r4 r2 \break
  | c4^\markup { \small \italic "pizz." }\p r r2
  | c4 r r2
  | c4 r f_\markup { \small \italic "dim." } ees
  | c4 r f ees
  | \mark \default c4 r c g
  | c4 r c g
  | c4 r c r \break
  | c4 r r2
  | R1
  | \compressMMRests R1*2^\markup { \small \italic "poco a poco rall." }
  \bar "||" \key e \major \compressMMRests R1 * 5
  \bar "||" \compressMMRests R1*4^\markup { Lento }
  | \mark \default \compressMMRests R1*3 \break
  | \compressMMRests R1*4
  | \mark \default
  | \compressMMRests R1*5
  | \time 2/4 R2
  | \time 4/4 \compressMMRests R1*2
  | \mark \default \compressMMRests R1*4
  | \time 3/4 \compressMMRests R2.*3 \break
  | \time 2/4 R2
  | \time 3/4 R2.
  | \time 2/4 R2
  | \time 3/4 R2.
  | \mark \default \time 4/4 \compressMMRests R1*3
  | <<
    \new CueVoice {
      \cueClef "tenor" \stemUp dis'8^"Cello"\tenuto b\tenuto gis2\tenuto \cueClefUnset r4
    } \\
    { r2 r4 fis^\markup{ \tiny "2 bassi" }^\markup{ \tiny \italic "pizz." }\pp }
  >>
  | e4 r d r \break
  | cis4 r r2
  | \compressMMRests R1*2
  | r2^\markup { \tiny "2 bassi" } r4 b'4\p
  | \mark \default a4 r g_\markup { \small "dim." } r
  | fis\pp r r2
  | \compressMMRests R1*2
  | \time 2/4 R2 \pageBreak
  | \time 4/4 \compressMMRests R1*2
  | \mark \default \compressMMRests R1*6
  | \time 2/4 R2
  | \mark \default \time 4/4 r4^\markup { \small \italic "arco" } cis2.^\markup{ \small \italic "tutti"}\pp\downbow~
  | cis1~
  | \time 3/4 cis2.\upbow
  \bar "||" \time 4/4 cis1\tweak X-offset -1 ^\markup{ \small \italic "a tempo piu mosso" }\pp~
  | cis1~ \break
  | cis8 r r4 r2
  | \compressMMRests R1*3
  | cis1^\markup { \small \italic "poco a poco accel." }\tenuto\downbow
  | cis1\tenuto
  | cis1\tenuto~
  | cis4_\markup { \small \italic "cresc." } cis2 cis4~
  | cis4 cis\tenuto\upbow cis\f\tenuto cis\accent \break
  | \key c \major \time 3/4 fis4\tweak X-offset -2 ^\markup { "Tempo I"}\mf\downbow bes d,
  | a'4 cis,_\markup{ \small \italic "cresc." } f
  | c!4 e aes
  | ees4 g b,
  | \time 4/4 ees1\ff~
  | ees2.~ees8_\markup { \small \italic "dim." } \tweak X-offset -3 \upbow  r
  | \mark \default \time 3/4 ees'4^\markup { \small \italic "pizz." }\p r r
  | R2. \break
  | ees4 r r
  | R2.
  | \time 4/4 ees4 r r2
  | ees4 r r2
  | \compressMMRests R1*2
  | \mark \default des,2.^\markup { \small \italic "arco" }\tenuto\accent\mf\>\downbow aes4\upbow
  | f'2.\tenuto\accent\mf\downbow\> c4\upbow\!\break
  | aes4_\markup { \small \italic cresc. } f8\accent\upbow r bes4\downbow fis8\accent\upbow r
  | b!8-.\downbow c4\tenuto\upbow gis\tenuto d'\tenuto bes8~
  | \mark \default bes8\f e-.\upbow e,4\tenuto~ e8 fis-.\upbow e4\tenuto~
  | \time 3/4 e8 [fis-.] e fis e4\tenuto~
  | \time 4/4 e8 e'\accent\upbow e,4\accent~ e8 f!-.\upbow e4\accent~\break
  | e8 [f-.] e-. f-. e4.\tenuto f'8_\markup { \small \italic "cresc."}\accent\upbow
  | f,4.\accent\downbow g'8\accent g,4.\accent f'8\accent
  | f,8-.\ff [f-.] f-. a!-. f-. [a] f-. r
  | \mark \default r4 des'^\markup{ \small \italic "pizz."}\f r des
  | r4 des r des
  | \compressMMRests R1*4 \break
  | \key ees \major R1
  | \time 2/4 R2
  | \time 4/4 r8^\markup {\small \italic "arco" }_\markup{ \small \italic "molto marcato" } aes'!8-.\downbow g-.\downbow ges-.\downbow f-.\downbow [e!]-.\downbow ees-.\downbow aes,-.\downbow
  | d8-.\downbow r r4 des8-.\downbow r g,-.\downbow r
  | r2 a8-.\sff\downbow r r4 \break
  | r4 a8-.\downbow aes-.\upbow r4 r8 g'16\ff\downbow ees
  | \mark \default \repeat percent 3 { c2.\accent~ c8 g'16\downbow ees }
  | c2.~ c8 r
  | \repeat percent 2 { c8\downbow r r4 c8\downbow r ees\downbow r } \pageBreak
  | \repeat percent 2 { c8 r r4 c8\downbow r ees8\downbow r }
  | c8\downbow r ees8\downbow r r4 f8_\markup { \small \italic "dim."}\upbow r
  | \mark \default g8\mf r r4 g8\downbow r d r
  | g8 r r4 g8\downbow r d\upbow r
  | g8 r r4 g8\downbow r d\upbow r
  | g8 r r4 r2 \break
  | R1
  | f8\accent\mf\downbow r r4 f8\downbow r c\upbow r
  | f8\downbow r r4 f8\downbow r c\upbow r
  | f8 r r4 r2
  | r2 r4 g4^\markup { \small \italic "pizz." }\mf
  | e4 fis d f \break
  | \time 2/4 des4 g
  | \mark \default \time 4/4 aes,1^\markup { \small \italic "arco" }\downbow\tweak X-offset 6\upbow~
  | aes2\tweak X-offset -3 _\markup { \small \italic "cresc." } aes'8\downbow r g\accent\downbow r
  | c,8\ff\downbow r r4 f8\downbow r ees\downbow r
  | c8 r r4 f8\downbow r ees\downbow r
  | c8 r r4 r2 \break
  | \repeat percent 2 { c4^\markup { \small \italic "pizz." }\p r r2 }
  | \repeat percent 2 { c4 r f_\markup { \small \italic "dim." } ees }
  | \mark \default c1^\markup { \small \italic "arco" }\p\downbow~
  | c8 r r4 g'^\markup { \small \italic "pizz." } g
  | c,1^\markup { \small \italic "arco" }\p\downbow~
  | c8 r r4 aes'^\markup { \small \italic "pizz." } aes \break
  | c,2^\markup{ \small \italic "arco"}\downbow~ c8 r^\markup { \small \italic "pizz." } aes'4\accent
  | \mark \default c,1:32^\markup { \small \italic "arco" }\pp\accent
  | c1:\accent
  | c1:\accent
  | c1:
  | c1:
  \bar "||" \key c \major c8\pp r r4 r2
  | r2 a'2\p\upbow
  | g1 \break
  | f2.\upbow e?4\upbow
  | \mark \default d1~
  | d2 e2\upbow
  | f1~
  | f1
  | e1~
  | e1
  | d2 des2\upbow
  | g,1
  | \mark \default c8 r r4 r2 \break
  | \startMeasureCount c4^\markup { \small \italic "pizz." }\pp r r2
  | \repeat unfold 5 { c4 r r2 }
  | c4 r r2 \stopMeasureCount
  | \mark \default c4 r r2 \break
  | <<
    { r2 g4 r | c4 r r2 | r2 g4 r | c4 r r2 | c1^\markup { \small \italic arco }\pp\upbow | \once \override Script.script-priority = -100 c1\fermata\downbow }
    \new Staff {
      \key c \major
      \once \omit Staff.TimeSignature
      \clef bass r2 g4 r | c4 r r2 | r2 g4 r | c4 r r2 | c4^\markup { \small \italic "pizz." }\pp r r2  | c4 r r2\fermata
    }
  >>
  \bar "||" \pageBreak
}

mvtiinotes = \relative {
  \set restNumberThreshold = 0
  \override MultiMeasureRest.expand-limit = 2
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  \clef bass
  \key g \minor
  \time 6/8
  \tempo "Andante con moto (Tempo di Valse)"
  \compressMMRests R2.*3^\markup { "Tempo rubato, a tempo"}
  aes,4\tweak X-offset -7 _\pizz\sf r8 aes4 r8
  | aes4_\dim r8 d4 r8
  | aes4\p r8 d4_\dim r8
  | \time 9/8 c4_\cresc  r8 bes4 r8 a4\f r8 \break
  | \time 6/8 R2.^\markup { \small Tempo }
  | \mark 30 \compressMMRests R2.*3^\markup { \small rubato }
  | aes4^\markup { \small \italic "a tempo" }\sfz r8 aes4 r8
  | aes4_\dim r8 d4 r8
  | aes4\p r8 d4 r8
  | \time 9/8 c4_\cresc  r8 bes4 r8 a4\f r8 \break
  | \time 6/8 \compressMMRests R2.*3^\markup { \small "Tempo rubato" }
  | \mark \default \repeat percent 2 { d4^\markup { \small \italic "a tempo" }\f r8 aes4 aes'8 }
  | d,4_\dim r8 d4 r8
  | d4\p r8 r4 r8
  | R2.
  | a4\p r8 r4 r8 \break
  | R2.
  | a'4 r8 r4 r8
  | R2.
  | a,4 r8 r4 r8
  | aes4 r8 r4 r8
  | \compressMMRests R2.*2
  | \mark \default g4 \pp r8 d'4 r8 \break
  | f4 r8 c4 r8
  | a4 r8 d4 r8
  | ees4 r8 e4 r8
  | fis4 r8 f4_\markup { \small \italic "poco cresc." } r8
  | ees4 r8 aes4 r8
  | d4\mf r8 r4 r8
  | R2. \break
  | \time 9/8 \mark \default R4.*3
  | \time 6/8 \compressMMRests R2.*2
  | r4 r8\p a,4 r8
  | d4 r8 c4 r8
  | bes4 r8 a4 r8
  | g4 r8 d'4 r8
  | f4 r8 c4 r8 \break
  | a4 r8 d4 r8
  | ees4 r8 e4 r8
  | \mark \default fis8_\markup { \small \italic "poco cresc." } g fis f4 r8
  | ees4 r8 aes,4 r8
  | d4 r8 r4 r8
  | R2.
  | \time 9/8 g,4\f r8 bes4 r8 ees4 r8 \break
  | \time 6/8 d4\mf r8 bes4 r8
  | f'4\f r8 d4 r8
  | aes4 r8 a8_\dim r d
  | g4\p r8 c,4 r8
  | bes4 r8 a?4_\dim r8
  | aes4 r8 g4 r8
  | \mark \default r4 r8\pp f4 r8 \pageBreak
  | r4 r8 e4 r8
  | b'4.^\arco bes4._\cresc
  | aes4.\f g8 r r
  | r4 r8\p a4^\pizz r8
  | r4 r8 aes4 r8
  | ees'4.^\arco\p d4._\cresc
  | c4. bes4\upbow d8\downbow \break
  | \mark \default fis,4.\f\upbow gis4.\>\downbow
  | a4\!\upbow r8 aes4^\pizz\p r8
  | a4 r8 b4.\f^\arco\downbow\>
  | c4\! r8 b4\p^\pizz r8
  | c4 r8 d4\mf r8
  | g4\p r8 a4 r8
  | bes4 r8 bes,4 r8 \break
  | ees4 r8 f4 r8
  | fis4 r8 fis,4 r8
  | b4\p r8 ees4 r8 fis4 r8 aes4 r8
  | \mark \default \compressMMRests R2.*2
  | r4 r8\f c,4^\arco\upbow r8
  | b4 r8 bes4_\dim r8 \break
  | \tempo "L'istesso tempo" aes4\p^\pizz r8 ees'4 r8
  | fis4 r8 cis4 r8
  | bes4 r8 ees4 r8
  | R2.
  | \mark \default \compressMMRests R2.*4
  | \mark \default \time 9/8 aes,4\f r8 ces4 r8 fes4_\dim r8 \break
  | \time 6/8 ees4 r8 ces4 r8
  | ges'4 r8 ees4_\dim r8
  | a,4 r8 bes [r ees]
  | aes,4\p r8 r4 r8
  | R2.
  \bar "||" \compressMMRests R2.*3^\markup { \small \italic "a tempo meno mosso" }
  | R2._\markup { \small \italic "poco accel." } \break
  | \key c \major \tempo "Tempo precedente" e'4\p r8 r4 r8
  | e4 r8 r4 r8
  | e4_\cresc c4 r8 r8
  | \time 3/8 f4 g8_\dim
  | \time 6/8 e4\p r8 r4 c8
  | \mark \default f4 r8 r4 r8
  | f4 r8 r4 r8
  | f4_\cresc des4 r8 r
  | \time 3/8 fis4 aes8
  | \time 6/8 des,4\f r8 ees4\mf r8
  | des4 r8 c4 r8
  | bes4_\dim r8 aes4 r8
  | ges4\p r8 r4 r8
  | \mark \default bes4\pp r8 r4 r8 \break
  | bes4 r8 r4 r8
  | g4 r8 r4 r8
  | g4 r8 r4 bes8
  \bar "||" \repeat percent 2 { ees4^\markup { \small \italic "a tempo poco meno mosso"} r8 r4 r8 }
  | ees4 r8 r4 r8
  | R2. \pageBreak
  | \mark \default \repeat percent 2 { des4 r8 r4 r8 }
  | des4 r8 r4 r8 
  | \compressMMRests R2.*6 
  \bar "||" \tempo "Tempo primo" r4 r8 b4 r8 
  | e4.^\arco\>\downbow~ e8\! r8 r8
  | r4 r8 b4\f^\pizz r8 \break
}

\book {
  \score {
    \header {
      piece = "I"

    }
    \layout {
      \context {
        \Score
        \consists Measure_counter_engraver
      }
      top-margin = 0.0
    }
    \new PianoStaff {
      \new Voice {
        \mvtinotes
      }
    }
  }
  \score {
    \header {
      piece = "II"
    }
    \layout {
      \context {
        \Score
        \consists Measure_counter_engraver
      }
      top-margin = 0.0
    }
    \new PianoStaff {
      \new Voice {
        \mvtiinotes
      }
    }
  }
}

\book {
  \bookOutputSuffix "no-fingerings"
  \score {
    \header {
      piece = "I"
    }
    \layout {
      \context {
        \Score
        \omit Fingering
        \omit StringNumber
        \consists Measure_counter_engraver
      }
      top-margin = 0.0
    }
    \new PianoStaff {
      \new Voice {
        \mvtinotes
      }
    }
  }
  \score {
    \header {
      piece = "II"
    }
    \layout {
      \context {
        \Score
        \omit Fingering
        \omit StringNumber
        \consists Measure_counter_engraver
      }
      top-margin = 0.0
    }
    \new PianoStaff {
      \new Voice {
        \mvtiinotes
      }
    }
  }
}
