\version "2.24.3"

rit = \markup { \small \italic rit. }
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
  <<
    \new CueVoice {
      \cueClef "treble" \stemUp r4 c''8-.\pp~ 8-. r4 c8-.~8-. \cueClefUnset
    } \\ R1
  >>
  | \compressMMRests R1*8
  | \mark \default r4 aes,8\ff\downbow r g\downbow r ees\downbow r
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
  | f8-.\upbow g-.\upbow g4\tenuto\downbow aes8\tenuto\upbow r g\downbow r8
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
  \bar "||" \textMark \markup { \magnify #0.9 "Lento" } \compressMMRests R1*4
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
  | \time 4/4 <<
    \new CueVoice {
      \cueClef "tenor" \stemUp r2^"Cello" r4 cis'8 (e)
    } \\ R1
  >>
  | \mark \default \compressMMRests R1*2
  | <<
    \new CueVoice {
      dis8\tenuto b\tenuto gis2\tenuto \cueClefUnset s4
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
  | \time 9/8 c4_\cresc  r8 bes4 r8 a?4\f r8 \break
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
  | ees?4 r8 aes4 r8
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
  | aes4 r8 a8_\dim [r d]
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
  | c4. b4\upbow d8\downbow \break
  | \mark \default fis,4.\f\upbow gis4.\>\downbow
  | a4\!\upbow r8 aes4^\pizz\p r8
  | a!4 r8 b4.\f^\arco\downbow\>
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
  | a,!4 r8 bes [r ees]
  | aes,4\p r8 r4 r8
  | R2.
  \bar "||" \compressMMRests R2.*3^\markup { \small \italic "a tempo meno mosso" }
  | R2._\markup { \small \italic "poco accel." } \break
  | \key c \major \tempo "Tempo precedente" e'?4\p r8 r4 r8
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
  | e4.^\arco~\> e8\! r8 r8
  | R2.
  | \mark \default cis4.\f\downbow~ cis8 r8 r8
  | R2.
  | cis4.\downbow~ cis8 r8 r8
  | cis2.\mf\downbow~\>
  | cis8\p r8 r8 r4 r8 \break
  | \compressMMRests R2.*2
  | \mark \default \time 9/8 \compressMMRests R4.*6
  | \time 6/8 \compressMMRests R2.*2
  | r4 r8\f b4^\pizz r8
  | \mark \default e4.^\arco\>~ e8\! r8 r8
  | r4 r8\f b8^\pizz b8 r8
  | \time 9/8 e4.^\arco\< r4\! r8 r4 r8 \break
  | \time 6/8 R2.
  | a,4^\pizz\f r8 d4 r8
  | a4_\dim r8 d4 r8
  | d4\p r8 r4 r8
  | \compressMMRests R2.*2
  | \mark \default aes4\f r8 d4 r8
  | aes4_\dim r8 d4 r8 \break
  | d4\p r8 r4 r8
  | \compressMMRests R2.*2
  \bar "||" \key g \minor d4\f r8 aes4 r8
  | d4 r8_\dim aes4 r8
  | d4 r8 d4 r8
  | d4\p r8 r4 r8
  | \compressMMRests R2.*2 \break
  | \compressMMRests R2.*2^\markup { \small \italic "rit. _ _ _"}
  \bar "||" \tempo "a tempo come prima" g,8^\arco-.\pp r r d'-. r r
  | f8-. r r c-. r r
  | a8-. r r d-. r r
  | ees8-. r r e-. r r
  | fis8-. r r f-. r r \break
  | ees8-. r r aes,-. r r
  | d-. r r c-. r r
  | bes8-. r r a-. r r
  | \mark \default \time 9/8 g8-. r r bes-. r r c-. [r a-.]
  | \time 6/8 d8-. r r ees-. r r \break
  | \time 9/8 bes8-. r r des-. r r ees8-. [r c-.]
  | \time 6/8 f8-. r r cis4.\f\upbow
  | fis,4. gis
  | a4. b
  | c4. d
  | \time 9/8 ees4^\rit r8 r4 r8 r4 r8 \pageBreak
  | \time 6/8 g,4.^\markup { \small \italic "a tempo" }\ff a4.
  | bes8 r r \bar ";" r a4
  | bes4. c
  | cis8 r r r c4\upbow
  | cis4. ees!
  | \mark \default aes,4.\f bes!
  | b4. d
  | e4. fis \break
  | g4. bes,\>
  | c4.\mf ees8 r r
  | fis,8^\pizz_\dim r r aes r r
  | d8\p r r d' r r
  | \override TextSpanner.bound-details.left.text = #"poco a poco accel."
  \override TextSpanner.after-line-breaking = #ly:spanner::kill-zero-spanned-time
  \repeat percent 3 { d,8 \startTextSpan r r d' r r } \break
  | \mark \default \repeat percent 4 { d,4\pp r8 r4 r8 }
  | g,8\sf r a\mf r bes r
  | b8_\dim r c r d r
  | \repeat percent 2 { f4\p r8 r4 r8 \stopTextSpan }
  \bar "||" \tempo Vivo \repeat percent 2 { f4 r8 r4 r8 } \break
  | \repeat percent 2 { f4_\cresc r8 r4 r8 }
  | bes,8\f r c r des r
  | d8_\dim r ees r f\p r
  | \mark \default \repeat percent 4 { d4\mf r8 r d'4 }
  | R2. \break
  | r4^\arco bes8\downbow r a r
  | g8 r fis r f r
  | e8 r ees r4 r8
  | \mark \default \time 9/8 d8\f\downbow r r r4 r8 d\accent\downbow d r
  | aes8 r r r4 r8 aes8\accent\downbow aes r \break
  | \time 6/8 des8 r bes\downbow r d\upbow r
  | bes8 des r bes\upbow r d16\downbow d
  | \mark \default d8\sf r r r^\pizz g,8\f r
  | a8 r bes r bes b
  | c8 r d r ees r \break
  | ees8 f fis r aes r
  | a!8_\dim [r a] bes c r
  | d8 r ees r4 r8
  | \mark \default g,,8-.^\arco\pp r r bes-.\upbow r r
  | b8-. r r d-. r r
  | g8 -. r r f-. r  r \break
  | ees8-. (r bes-.) d-. r r
  | g4^\pizz r8 r4 r8
  | R2.
  \bar "||" \mark \default g,8^\arco^\markup { \small \italic "a tempo poco meno mosso" }-.\pp r r ees'-. r r
  | fis,8-. r r a-.\upbow [r d-.\upbow]
  | g,8 r r ees' r r \break
  | fis8 r r a,\upbow [r d\upbow]
  | \mark \default g,8\pp r r g4^\pizz\p r8
  | g4_\cresc r8 g4 r8
  | \time 9/8 g4 r8 g4 r8 g4 r8
  | g4\ff g4_\dim g4 g4 r8
  | g4\p r8 g16^\arco-.\pp \downbow g-.\upbow g8-.\downbow r g8^\pizz\accent g-. r \fine \pageBreak
}

mvtiiinotes = \relative {
  \set restNumberThreshold = 0
  \override MultiMeasureRest.expand-limit = 2
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  \clef bass
  \key d \major
  \time 6/8
  \tempo "Lento assai"
  d8\sf\downbow r r r4 r8
  | \compressMMRests R2.*2
  | \time 9/8 \tweak X-offset 18 \textMark \markup \fermata \compressMMRests R4.*6
  | \time 6/8 \compressMMRests R2.*5
  | r4\fermata r8 r4 r8 \break
  | \mark 56 \time 9/8 \tempo "Allegro vivace" d8^\pizz\p r r r4 r8 r4 r8
  | \time 6/8 R2.
  | r4^\arco r8 ees8\sff\downbow r r
  | R2.
  | r4 r8 g,_\cresc (bes) e,-.
  | a\tenuto\f (c) fis,-. r4 r8 \break
  | a8-. cis!-. r b\sff\downbow r r
  | r4 r8 ees4\ff\downbow r8
  | ees4 r8 ees4\downbow r8
  | ees4 r8 ees4 r8
  | \mark \default \compressMMRests R2.*6
  | d8\sff\downbow r r d-.\ff\downbow d-.\upbow r \break
  | d8-. d-. r d-. d-. r
  | \mark \default \time 9/8 d8 r r r4 r8 r4 r8
  | R4.*3
  | d8\sfz\downbow r r r4 r8 r4 r8
  | \compressMMRests R4.*9
  | c4._\markup { \small \italic "sempre" }\accent b8-.\f\upbow c-8\upbow b\tenuto\downbow (bes\>) a\upbow aes\! \break
  | \mark \default \time 6/8 g8-. r r r4 r8
  | R2.
  | \time 9/8 f4.\accent\downbow e'8\upbow f\upbow e\tenuto (ees) d-. des-.
  | \time 6/8 c8\f r r r4 r8
  | R2.
  | \time 9/8 bes8\sf\downbow r8 r8 r4 r8 r4 r8 \break
  | bes8\f\downbow r r bes\downbow r r bes\downbow r r
  | R4.*3
  | \mark \default a8\sf\downbow r r r4 r8 r4 r8
  | \compressMMRests R4.*6
  | g8^\pizz\sf r r r4 r8 r4 r8
  | b8\p r r r4 r8 r4 r8 \break
  | ees8 r r r4 r8 r4 r8
  | \compressMMRests R4.*6
  | \mark \default \time 6/8 f4\sf r8 r4 r8
  | \compressMMRests R2.*3
  | \time 9/8 \compressMMRests R4.*9
  | \mark \default \time 6/8 e4\sf r8 r4 r8
  | \compressMMRests R2.*3 \break
  | \time 9/8 R4.*3
  |  c8^\arco\f r r r4 r8 r4 r8
  | c8\f r r r4 r8 r4 r8
  | r8 f-.\p\downbow g-. e-. f-._\cresc d-. e-. c-. d-.
  | \mark \default \repeat percent 2 { b8-.\f r r r4 r8 r4 r8 }
  | r8\p e-.\downbow fis-. d-. e-. c-. d-._\dim b-. c-.
  | a8\pp r r r4 r8 r4 r8
  | a8^\pizz\p r r r4 r8 r4 r8
  | R4.*3
  | \mark\default \repeat percent 2 { g8\p r r r4 r8 r4 r8 } \break
  | \compressMMRests R4.* 12
  | \time 6/8 \compressMMRests R2.*2
  | \mark \default \time 9/8 R4.*3
  | \time 6/8 R2.
  | \time 9/8 R4.*3
  | \time 6/8 \compressMMRests R2.*2
  | \time 9/8 R4.*3
  | \time 6/8 R2. \pageBreak
  | \mark \default \time 9/8 b'8^\arco-.\accent\mf\upbow a16 g f8\tenuto~ f g e\tenuto~ e f-. d-.
  | g-.\accent\upbow f16_\cresc e d8\tenuto~ d e c\tenuto~c d-. b-.
  | e8-.\f d-. c-. b-._\dim a-. g-. f-. e-. d-.
  | e8-. r r r4 r8 r4 r8 \break
  | e'4^\pizz\p r8 \bar ";" r e4 \bar ";" r8 e4
  | e4 r8 r e4 r8 e4
  | \time 6/8 e4 r8_\dim b8 e4
  | \mark \default \time 9/8 e4\p r8 r e4 r8 e4
  | e4 r8 r8^\arco b8-.\mf\downbow c-. d-. c-. b-.
  | a8-.\upbow b-. c-. e-. d-. c-. b-. c16 b a8
  | g8-.\upbow a-. b-. d-. c-. b-. c-. b16 a g8
  | \time 6/8 a-._\dim g-. f-. r4 r8
  | r4 r8 b-.\mf\upbow c-. b-.
  | \mark \default \time 9/8 a8-._\dim g-. d'-. r4 r8 r4 r8 \break
  | d8-._\cresc\upbow g-. d-. e-. a-. e-. fis-. b-. fis-.
  | g8-.\f a,-. b-. c-. d-. e-. b4.\accent
  | e8\upbow r r r4 r8 r4 r8
  | e8-.\f\downbow d-. c-. b-. a-. g-. fis-. e-.\upbow d'-.\upbow
  | e2.\mf\downbow~ e4. \break
  | e2.\mf\upbow~ e4.
  | \mark \default \time 6/8 e4._\dim\downbow b8-.\downbow e4\tenuto \upbow
  | \time 9/8 e2.\mf\downbow~ e4.
  | e2.~ e4.
  | \time 6/8 a,4\tenuto\downbow b8\tenuto\upbow~ b c des
  | \time 9/8 aes4\tenuto a8\tenuto~a8 b-._\dim c-. b-. e4\tenuto\upbow \break
  | \time 6/8 e4.\f\downbow~ e8 bes'4\tenuto\upbow
  | e,4.~ e8 bes'4\tenuto
  | e,4.~ e8 bes4\tenuto
  | e4.~ e8 bes4\tenuto
  | \mark \default e8-.\downbow dis4\accent\upbow e8-.\downbow bes'4\accent\upbow
  | e,8-. dis4\accent e8-. bes4\accent \break
  | e8-.\downbow dis-. d\tenuto~ d dis-. e\tenuto~
  | e8 d!-. cis-. c-. b-. bes-.
  | e8-. r r r4 r8
  | r4\fermata r8 r4 r8
  \bar "||" \tempo "Lento assai. Come prima" R2.
  | \time 9/8 R4.*3
  | r2. r4\fermata r8 \break
  | \time 6/8 \compressMMRests R2.*6
  \bar "||" \time 9/8 \tempo "L'istesso tempo" e4^\pizz\p r8 r4 r8 r4 r8
  | \repeat unfold 2 { e4 r8 r4 r8 r4 r8 }
  | e4\sf r8 r4 r8 r4 r8
  | \mark \default e4\p r8 r4 r8 r4 r8 \break
  | \repeat unfold 2 { e4 r8 r4 r8 r4 r8 }
  | e4\sf r8 r4 r8 r4 r8
  | \time 6/8 e4\p r8 r4 r8
  | \repeat unfold 2 { e4 r8 r4 r8 } \break
  | e2.\mf^\arco\downbow
  | e2.
  | e2.~
  | \mark \default e8 r r r4 r8
  | \compressMMRests R2.*3
  | \once \set restNumberThreshold = 2 R2.\fermata
  \bar "||" \time 9/8 \key c \major \textMark \markup { \small "Celli" } \compressMMRests R4.*12 \pageBreak
  | \mark \default \tweak X-offset -0.0 \textMark \markup { \tiny "Bass" } cis4.:32^\markup { \small tremolo. }\pp c2.:
  | c4.:32\< ces4.:\! bes4.: \tweak X-offset -5 \tweak direction #DOWN \textMark \markup { \small \italic "poco"}
  | bes4.:32\> a4.:\! aes4.:
  | aes2.:32 aes8 r r
  | r4 r8 aes4^\pizz\p r8 r4 r8
  | \tuplet 2/3 { aes8 aes8 } r4 r8 r4 r8 \break
  | \key des \major \tempo "L'istesso tempo, ma agitato" \compressMMRests R4.*6
  | \time 6/8 \compressMMRests R2.*6
  | <<
    \new CueVoice {
      \cueClef "treble" \stemUp r8^\markup { \tiny "1st Vlns."} r des''8 d4 (des8) \cueClefUnset
    } \\
    R2.
  >>
  | f,,,2.\f\downbow
  | \mark \default \time 9/8 fis2._\dim (aes4.)
  | des!2.\p~ des8 r r \break
  | \time 6/8 \compressMMRests R2.*5
  | \mark \default \time 9/8 gis,2.\f\downbow g4.\upbow
  | a2. b4._\dim\downbow
  | e2._\cresc\upbow~ e4.
  | \repeat percent 3 { des?2.\f\downbow~ des4._\> <>\! } \break
  | des4._\dim~ des8 r r r4 r8
  | \mark \default des2.\f~ des4.
  | \repeat unfold 2 { des2.~ des4. }
  | des2.\>~ des4.\!~
  | \time 6/8 des4.\pp r4 r8 \break
  | <<
    { r4^\pizz r8 a'4\f r8 | aes!4\mf r8 r4 r8 | r4 r8 a4\f r8 | \mark \default \time 9/8 a8\p r r r4 r8 r4 r8 | R4.*3 }
    \new Staff {
      \key des \major
      \once \omit Staff.TimeSignature
      \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
      \clef bass r4^\pizz r8 d,4\f r8 | des!4\mf r8 r4 r8 | r4 r8 d4\f r8 | des8\p r r r4 r8 r4 r8 | R4.*3
    }
  >> \break
  | \textMark \markup { \tiny unis } d2.\p^\arco_\cresc~ d8 r r
  | fis,4.\f\downbow~ fis4 f8\upbow fis4.\downbow
  | bes?4\upbow a8\downbow~ a8_\dim bes\upbow (b) d4.\downbow
  | ges?8\p r r r4 r8 r4 r8
  | \mark \default \time 6/8 ges2.\p\<\upbow~
  | ges4.\! g4.\>\downbow \break
  | <<
    { ges!2.\<~ | ges4.\! g4.\> | ges!2.\p\<~ | ges4.\f g4.\> | ges!2.\p\<~ | ges4.\! g4.\> | \mark \default des?8\sf r r r4 r8 }
    \new Staff {
      \key des \major
      \once \omit Staff.TimeSignature
      \once \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
      \clef bass
      ges!2.\<~ | ges4.\! g4.\> | ges,!2.\p\< | ges4.\f g4.\> | ges!2.\p\<~ | ges4.\! g4.\> | des'?8\sf r r r4 r8
    }
  >> \pageBreak
  | r4^\markup {\small unis. } r8^\pizz g4\f r8
  | des4 r8 r4 r8
  | r4 r8 e4 r8
  | bes4 r8 r4 r8
  | r4 r8 des4_\dim r8
  | \time 9/8 R4.*3 \break
  | \mark \default \time 6/8 des2.^\arco\p \tweak X-offset -5.9 \tweak direction #DOWN \textMark \markup { \small \italic "poco cresc" }
  | des2.\!
  | des2.\mf
  | des2._\dim
  | des2.\pp\downbow~
  | des2.\upbow
  | des2._\markup { \small \italic "poco cresc." }~
  | des4. aes4._\dim\upbow \break
  | des2.\pp
  | des2.\tenuto
  | des2._\dim~ (
  | des4. aes4.)
  | \mark \default des2.\p\upbow
  | des2.
  | des2._\markup { \small \italic "poco a poco dim." }
  | des2. \break
  | des4.~ des8 r r
  | des4.\downbow~ des8 r r
  | des2.\upbow
  | \tieUp des2.\downbow~
  | \key c \major \time 9/8 \tempo "Allegro vivace" des!8 \tieNeutral r r r4 r8 r4 r8
  | \compressMMRests R4.*12
  | \time 6/8 R2.\break
  | \mark \default \time 9/8 \compressMMRests R4.*6
  | \time 6/8
  <<
    \new CueVoice {
      \time 6/8 \stemUp <<bes'8^\markup { \tiny "Bsns." } f8>> <<a des,>> <<aes' e>> <<g c,>> <<ges' ees>> <<g e>>
    } \\
    R2.
  >>
  | \time 9/8 r4^\markup { \tiny "Bassi" } r8 e8-.\pp\upbow r ees-. r des-. r
  | a8\accent r r r4 r8 r4 r8
  | R4.*3
  | a8\accent\f\downbow r r r4 r8 r4 r8 \break
  | R4.*3
  | \mark \default \time 6/8 gis8-.\accent\f gis-. r gis-.\accent gis-. r
  | \time 9/8 gis8-. gis-. r r4 r8 gis\accent\downbow [r gis\accent]
  | \time 6/8 r8 d'-._\dim\downbow r f-. r e-.
  | \time 9/8 c8\pp r r r4 r8 cis4^\pizz r8 \break
  | c4 r8 r4 r8 des4 r8
  | c4 r8 r4 r8 des4 r8
  | \time 6/8 e4_\cresc e e
  | \mark \default \time 9/8 f4 r8 r4 r8 fis4\mf r8
  | f!4 r8 r4 r8 ees4 r8
  | \time 6/8 f4 r8 r4 r8 \break
  | \compressMMRests R2.*3
  | \time 9/8 R4.*3
  | \time 6/8 R2.
  | \mark \default \time 9/8 R4.*3
  | \time 6/8 R2.
  | f8^\arco\f r r r4 r8
  | R2. \break
  | \time 9/8 e8 r r r2.
  | \time 6/8 f8\accent\downbow r r r4 r8
  | R2.
  | d8\accent r r r4 r8
  | \mark \default \time 9/8 b?8\sff r r r4 r8 r4 r8
  | \compressMMRests R4.*6 \pageBreak
  | \time 6/8 \compressMMRests R2.*2
  | \time 9/8 aes4^\pizz\mf r8 aes4 r8 a4 r8
  | aes4 r8 aes4 r8 ges4 r8
  | aes4_\dim r8 aes4 r8 r4 r8
  | \time 6/8 c4\sf r8 r4 r8
  | R2. \break
  | \mark \default \time 9/8 aes'4\p r8 d,4 r8 r4 r8
  | aes'4 r8 f4 r8 r4 r8
  | fis4 r8 d4 r8 r4 r8
  | aes2.\mf~ aes4.~
  | aes4. bes8 r r r4 r8 \break
  | a4^\pizz r8 r4 r8 r4 r8
  | \time 6/8 R2.
  | \time 9/8 a4 r8 r4 r8 r4 r8
  | \time 6/8 R2.
  | \mark \default \time 9/8 \repeat percent 2 { a4\mp r8 a4 r8 r4 r8 } \break
  | a8\mf a r a a r r4 r8
  | a8\f a r a a r r4 r8
  | a4\p^\arco\downbow a8\upbow~a4 a8\downbow~a4 a8\upbow~
  | a4 8\downbow~4 8\upbow~4 8\upbow~
  | \time 6/8 a4_\cresc 8\upbow~ 4 8\upbow~ \break
  | a4 8\upbow~ 4 8\upbow
  | \mark \default \time 9/8 a8\accent\f\downbow r r a4.\accent\downbow~ 8 4\tenuto\upbow
  | \time 6/8 a4.\accent\downbow~ 8 4\tenuto\upbow
  | \time 9/8 a8\downbow r r a4.\accent\downbow~ 8 4\tenuto\upbow
  | a4.\accent\downbow~ 8 4\tenuto\upbow 4\accent\downbow 8\upbow \break
  | a8\sf r r r4 r8 r4 r8
  | a8\accent\downbow r r r4 r8 r4 r8
  | \time 6/8 bes8\accent\downbow r r r4 r8
  | R2.
  | \mark \default \time 9/8 b!8\sf r r r4 r8 r4 r8
  | \compressMMRests R4.*12 \break
  | \mark \default f'8^\pizz\f f r f f r ges ges r
  | g!8 g r g g r aes aes r
  | \time 6/8 a!8 r a, r bes r
  | bes' r bes, r b r
  | c8 r r fis16\f^\arco 16 16 16 8 \break
  | cis8\accent r r g'16 16 16 16 8
  | \mark \default \time 9/8 d-.\ff a-. d\tenuto~ d4.~ d8 r r
  | a8-. d-. a\tenuto~ a d4\upbow~d8 r r
  | \time 6/8 a8-. d-. g,-. a-.\upbow d4\downbow~
  | \time 9/8 d8 r r r4 r8 r4 r8 \break
  \bar "||" e8-.\ff\downbow b-. e\tenuto~ 4.~8 r r
  | b8-.\downbow e-. b\tenuto~b e4\tenuto\upbow~e8 r r
  | \time 6/8 b8-.\downbow e-. a,-. b-.\upbow e4\tenuto~
  | \time 9/8 e8 r r r4 r8 r4 r8
  | \mark \default fis8-.\ff [r g] fis4.\tenuto~ 4 g8-. \break
  | fis8-. g-. fis\tenuto\downbow~ 4 g8\downbow fis4.\tenuto
  | \repeat percent 2 { d4.\downbow d4\upbow d8\downbow~ 8 4 }
  | c4. 4\upbow 8\downbow~ 8 4\upbow
  | bes4. 4 8~ 8 4
  | \mark \default a8 ees'-. a16\downbow 16 16 16 8-. ees8-. a16 16 8-. ees\tenuto\upbow ~ \pageBreak
  | ees8 a,-.\downbow ees'-.\upbow a16 16 8-. ees-. a4.\downbow
  | d,8\sf\downbow r r r2.
  | R4.*3
  | \time 6/8 \tuplet 2/3 { ees8\f^\pizz bes' } r4 r8
  | \time 9/8 r4r 8 r4 r8 ees,8 r r
  \bar "||" d8^arco\sf r r r4 r8 r4 r8
  | R4.*3
  | \mark \default \time 6/8 \tuplet 2/3 { g8^\pizz\f d' } r4 r8
  | \time 9/8 r4 r8 r4 r8 g,8 r r
  | \time 6/8 f2.\f^\arco
  | ees2.\< \break
  | \time 9/8 \key d \minor d8\ff r r r4 r8 r4 r8
  | R4.*3
  | f8-.\upbow e-. d-. c-. bes-. a-. g-. f-. e-.
  \bar "||" \mark \default \tempo "Poco meno mosso" d8 r r r4 r8 r4 r8
  | R4.*3 \break
  | d'8\f^\pizz r r d [r d] \bar ";" r d r
  | d8 d r d r r d [r d]
  | \time 6/8 r8 d r a d4
  | \time 9/8 d8\f r r d [r d] \bar ";" r d r \break
  | d8 d r d r r f [r e]
  | \time 6/8 r d r c f4
  | \mark \default \time 9/8 c8\f r r c [r c] \bar ";" r bes r
  | c8 c r d r r bes8\accent c4\accent \break
  | a8 r r a [r a] \bar ";" r bes r
  | \time 6/8 r8\ff \tweak direction #DOWN \textMark \markup { \small \italic "molto sfortz."} g4 g g8
  | r8 g4 a8_\dim d4
  | \mark \default \time 9/8 c8^\arco-. d-. c\tenuto\accent~ 8\< a-.\upbow (c-.\upbow)\! f4\accent\>\downbow c8\tenuto~
  | c8\< d-.\upbow g\tenuto\accent~\! g d-.\>\upbow (f-.\!\upbow) a,-.\accent\! d4\tenuto\accent \break
  | f8-. g-. f\tenuto\accent 8\< d-.\upbow (f-.\upbow\!) bes4\tenuto\accent\> f8~
  | \time 6/8 f8\< d-.\upbow f-.\!\upbow a4\accent\> d,8~
  | d\!_\cresc d-.\downbow e-. f-. g-. a\tenuto\downbow~
  | a8 g4\accent a8 bes4
  | \mark \default \time 9/8 g,4\f\accent ges8\accent~ 8 f-. g-. a-. d4\tenuto \break
  | \compressMMRests R4.*6
  | \time 6/8 g8-.^\markup { \small \italic "marcato" }\f\downbow f e\tenuto\downbow~ 8 g-.\upbow f\tenuto~
  | \time 9/8 f8 r r r4 r8 a,-.\accent\downbow d4\tenuto\accent\upbow
  | d4^\pizz\f r8 r4 r8 r4 r8
  | d4 r8 r4 r8 r4 r8 \break
  | \mark \default \time 6/8 g8-.\f\downbow f e~8 g-.\upbow f~
  | \time 9/8 f8 f-.\upbow g-. gis-.\upbow a-. bes-. a,-.\accent\downbow d4\tenuto\accent\upbow
  \bar "||" \time 6/8 d4.^\markup { \small \italic "a tempo" }\ff\downbow~ 8 a4\tenuto\upbow
  | d4.~ 8 aes4\tenuto
  | d4.~ 8 a!4\tenuto \break
  | d4.~ 8 aes4\tenuto
  | \repeat unfold 2 { d8-. a!4\accent d8-. aes4\accent }
  | \mark \default d8-. ees-. d-. fis,-. g-. aes-.
  | d8-. fis,-. g-. aes-. g-. fis-.
  | d'8-.\sff r r d4.:16 \break
  | d2.:
  | d2.:
  | \compressMMRests R2.*4
  | d8\sff\downbow r r d\downbow r r
  | r4 r8 d-.\downbow d-.\downbow r
  | r4 r8 d8\downbow\sff r r \fine
}

\book {
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
  \score {
    \header {
      piece = "III"
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
        \mvtiiinotes
      }
    }
  }
}
