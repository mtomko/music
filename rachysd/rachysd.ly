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
      \time 4/4
      \clef bass
      \key ees \major
      %{ starts page 1 %}
      c4 r c r
      | c4\pp r r2
      | r2 r4 r8 ees16\f\downbow^\markup { \tiny \italic "bass soli" } c16
      | \repeat percent 2 {aes2~\accent aes8 bes16\upbow d f8-.\accent ees16\downbow c}
      | aes8-.\accent bes16\upbow d f8-.\accent g16\downbow ees c8-.\accent des16\upbow f aes8-.\accent g16^\markup { \tiny \italic "celli" }\downbow ees16 \break
      | \mark 5 \repeat percent 2 {  c2~\accent c8 des16\upbow g bes8-.\accent g16\downbow ees }
      | c8-.\accent des16\upbow f aes8-.\accent bes16\downbow g ees8-.\accent f16 aes c8-. r8
      | \repeat percent 3 { d,4^\markup {\small \italic pizz. }\p r r2 }
      | \time 2/4 R2
      | \mark \default \time 4/4 e4\p r r2 \break
      | \repeat percent 2 { e4 r r2 }
      | \time 2/4 R2
      | \time 4/4 e4\f r r2
      | \time 2/4 r4 r8 ees?16\p c
      | \time 4/4 aes4.\tenuto des8-.\accent\downbow a-. c-.\accent\downbow aes8-.\upbow gis'16\f\downbow e
      | \time 3/4 ces8.\accent (ees16) c8.\accent (e16) b8\accent\downbow f'16\downbow d \break
      | \time 4/4 bes4.\p  ees8-.\accent\downbow b-. d-.\accent bes8-.\upbow bes'16\f\downbow ges
      | \time 3/4 ees8-. a16\upbow f d8-. aes'16\downbow e des8-. g16\upbow e
      | \mark \default \time 4/4 c8 r r4 r2
      | R1
      | c4\p r r2
      | R1 \break
      | \time 3/4 R2.
      | \time 4/4 R1
      | \time 3/4 e8\sf\downbow r r4 r4
      | \time 4/4 R1
      | \time 3/4 R2.
      | \mark \default \time 4/4 r8 des8\p-.\upbow bes4~ bes8 e16\downbow des? bes8-. f-.\break
      | bes8-. ges'16-.\downbow d-. bes4~\f\accent\> bes8\! r r4
      | r8 d-.\p\upbow b4. f'16_\markup { \small \italic "cresc." }\downbow d bes8 fis'
      | b,8 g'16\downbow dis b4~\f\accent\> b8\! r r4
      | r8 fis'8-._\markup { \small \italic "marcato" }\downbow bes,-.\upbow d16\downbow b fis2\accent~
      | fis8 aes'-.\upbow c,-.\downbow e16\downbow cis gis2~\accent \break
      | gis8 d'-.\mf\upbow d4\tenuto ees8-._\markup{ \small \italic "cresc." }\upbow e-.\upbow e4\tenuto
      | f8-.\upbow g-.\upbow g4\tenuto\downbow a8\upbow r g\downbow r8
      | \mark \default c,8\sff\downbow r r4 f8\downbow r ees\downbow r
      | c8\downbow r r4 f8\downbow r ees\downbow r
      | c8\downbow r r4 r2
    }
  }
}

