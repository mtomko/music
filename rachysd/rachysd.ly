\version "2.24.3"

\header {
  title = "SYMPHONIC DANCES"
  instrument = "I"
  %{copyright = \markup { \small \italic "Engraving Ⓒ Mark Tomko, 2024" }%}
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

notes = \relative {
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  \time 4/4
  \clef bass
  \key ees \major
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  %{ starts page 1 %}
  \compressMMRests R1*9^\markup { "Non allegro" }
  | \mark \default r4 a8\ff\downbow r g\downbow r e\downbow r
  | f8 \downbow r des\downbow ees\upbow aes,\downbow r d\downbow r 
  | r4 des8\downbow r c\downbow r aes\downbow r \break
  | bes8\downbow r ges\downbow aes\upbow des\downbow r g\downbow r 
  | r2 a8\sff\downbow r r4 
  | r4 aes8 r8 r4 r8 g16\ff\downbow ees 
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
  | \repeat percent 2 { c8\ff\downbow r r4 f\downbow r ees\downbow r }
  | \repeat percent 2 { c8 r r4 f8\downbow r_\markup { \small \italic "dim." } ees8\upbow r }
  | \mark \default c8\p r r4 c4^\markup { \small \italic "pizz." } g'
  | c,4 r c_\markup { \small \italic "dim" } g' \break
  | c,4 r c r
  | c4\pp r r2
  | r2 r4 r8 ees16\f\downbow^\markup { \tiny \italic "bass soli" } c16
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
  | \mark \default \time 4/4 c8\upbow-2 r r4 r2
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
    { r2 r4 f^\markup{ \tiny "2 bassi" }^\markup{ \tiny \italic "pizz." }\pp }
    >>
  | e4 r d r \break 
  | c4 r r2 
  | \compressMMRests R1*2 
  | r2^\markup { \tiny "2 bassi" } r4 b'4\p
  | \mark \default a4 r g_\markup { \small "dim." } r  
  | fis\pp r r2 
  | \compressMMRests R1*2 
  | \time 2/4 R2 \pageBreak
  | \time 4/4 \compressMMRests R1*2
}

\book {
  \score {
    \header {
      piece = "Bass"
    }
    \layout {
      top-margin = 0.0
    }
    \new Voice {
      \notes
    }
  }
}

\book { 
  \bookOutputSuffix "no-fingerings"
  \score {
    \layout {
      \context {
        \Score
        \omit Fingering
        \omit StringNumber
      }
      top-margin = 0.0
    }
    \new Voice {
      \notes
    }
  }
}
