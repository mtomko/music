\version "2.24.3"

menoF = \markup { \tiny \italic meno \dynamic f }

\include "bass/solo-tuning.ly"

\header {
  title = "SONATA No. 2, Op. 6"
  composer = "Adolf Míšek"
  instrument = "Contrabass"
  copyright = "Engraving Ⓒ Mark Tomko, 2023"
  %{meter = \soloTuning %}
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

\book {
  \score {
    \header {
      piece = "I."
    }
    \new Staff {
      \new Voice {
        \relative {
          \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
          \clef bass
          \time 3/4
          \key d \minor
          \tempo "Con fuoco."

          | d'2.~ \f\>
          | d4 a4_\menoF\! (f'4)
          | f4. e8 d8 cis8
          | d4 a4 (a'4)
          | a4. g8 f8 e8
          | f4\< \clef treble d4 (d'4)
          | d4.\ff (g,8) g8 (bes8) \break
          | bes8 (e,8) e8 (g8) g8 (bes,8)
          | \clef bass bes8 (e8) e8 (g,8) g8 (bes8)
          | bes8 (e,8) e8 (f8) g8-. bes8-.
          | a2 f8-. d8-.
          | bes'2.\<
          | b2.
          | \afterGrace cis2.~\trill\sf{ bes16 [cis] }
          | d2.~\f\>
          | d4 a4_\menoF\! (f'4) \break
          | f4. e8 d8 c8
          | d4 a4 (a'4)
          | a4. g8 f8 e8
          | f4 \clef treble d4\< (d'4)
          | ees4.\ff ees8 d8 cis8
          | d2 d,4
          | e4._\markup {\italic dim. } \clef bass b8 cis8 d8
          | cis4^\markup{ \italic \tiny "poco rit." }\prall\> (b4) a4 \break
          | \mark \default f'2.\mf^\markup { \italic "a tempo" }
          | \afterGrace g2.~\trill { f16 [g] }
          | a2.~
          | a4\< a,4 (a'4)
          | \clef treble bes2\f bes8 (a8)
          | a8 (g8) g8 (f8) f8 (e8)
          | g8 (f8) f8 (e8) e8 (d8)
          | \clef bass e8\< (d8) d8 (c8) c8 (bes8)\! \break
          | a4 bes,8\p bes8 a8 a8
          | \repeat tremolo 2 d8 \repeat tremolo 2 cis8 \repeat tremolo 2 f8
          | \repeat tremolo 2 e8 \repeat tremolo 2 bes'8 \repeat tremolo 2 a8\<
          | \repeat tremolo 2 d8 \repeat tremolo 2 cis8 \repeat tremolo 2 f8
          | \clef treble \repeat tremolo 2 e8\f \repeat tremolo 2 bes'8 \repeat tremolo 2 a8\<
          | \repeat tremolo 2 g8 \repeat tremolo 2 f8 \repeat tremolo 2 e8
          | \mark \default d4\! r4 r4
          | \clef bass d,2.->\ff \break
          | des2.->\<
          | c2.->
          | b2.~->\fff\>
          | b4\! r4 r4
          | c4^\markup { \italic pizz. } r4 r4
          | cis4\> r4 d4
          | g4\! r4 r4
          | \compressMMRests{ R2.*4 }
          |
          <<
            { R2. } \\
            \new CueVoice {
              \cueClef "treble" \stemUp d'4_"piano" e f
            }
          >>
          | <<
            { R2. } \\
            \new CueVoice {
              \stemUp a4 g f
            }
          >>
          | <<
            { R2. } \\
            \new CueVoice {
              \stemUp e4 d c \cueClefUnset
            }
          >> \break
          | \mark \default r4^\markup { \italic arco } c4\p_\markup{ \tiny \italic "tempo tranquillo dolce espress."  }-\upbow (f)
          | e2 (d4)
          | a2 (d4)
          | c2.
          | r4 c (f)
          | e2 (d4)
          | a (f d')
          | cis2.
          | a4 \pp (cis a
          | cis a cis)
          | d (fis d) \break
          | b (fis' b,)
          | e, (d' e,)
          | e'2 (d4)
          | cis2 (a4)
          | e'2.
          | \mark \default r4\p_\markup{ \italic espress. } e4 (a)
          | g2 (f4)
          | c2 (f4)
          | e2.
          | r4 e (a)
          | gis2 (fis4) \break
          | cis (a fis')
          | eis2.
          | f4\pp (des f)
          | des (f des)\<
          | f (\clef treble aes des)
          | c2\>~c4-.
          | bes2.\<
          | c2\! (bes4)\>
          | aes2.\!
          | \clef bass aes,
          | r4\pp <<aes aes,_pizz>> r \break
          | r <<aes' aes,>> r
          | r <<aes' aes,>> r
          | r <<aes' aes,>> r
          | r <<g' g,>> r
          | r g g'
          | r <<g, g'>> r
          | r g, g'
          | c,2.~^arco
          | c2.
          | c'2. (
          | e2.) \pageBreak
          | \mark \default \key c \major a,4-.\pp_\markup{ \italic rubato }^\markup { "tempo giusto" } c8-. b-. b-. a-.
          | a4-. c8-. b-. b-. a-.
          | a4-. a,8-. b-. c-. d-.
          | e-. fis-. gis-. a-. b-. c-.
          | b4-. d8-. c-. c-. b-.
          | b4-. d8-. c-. c-. b-.
          | b4-. b,8-. c-. d-. e-. \break
          | f!-. gis-. a-. b-. c-. d-.
          | c4-. e8-. d-. d-. c-.
          | d4-. f8-. e-. e-. d-.
          | \clef treble e4-. g8-. f-. f-. e-.
          | fis4-. a8-. g-. g-. f-.
          | g4 g'8 (fis) fis (e)
          | e8 (d) d (c) c (b) \break
          | a4 c8 (b) b (a)
          | a8\< (g) g (f) f (e)
          | e4\f \clef bass e,8\downbow (a) a (c)
          | a8\< (c) c (e) e (a)
          | gis4\ff e,,8 gis b e
          | gis8 b e \clef treble g b e \break
          | \mark \default a,4-.\p c8-. b-. b-. a-.
          | a4-. c8-. b-. b-. a-.
          | a4-. \clef bass  a,8-. (b-. c-. d-.
          | e8-. fis-. gis-. \clef treble a-. b-. c-.)
          | b4-. d8-. c-. c-. b-.
          | b4-. d8-. c-. c-. b-.
          | b4-. b,8-. (c-. d-. e-. \break
          | f8-. gis-. a-. b-. c-. d-.)
          | cis4-. e8-. d-. d-. c-.
          | des4-._\markup { \italic "cresc. poco a poco"} f8-. ees-. ees-. des-.
          | d4-. f8-. e-. e-. d-.
          | dis4-. fis8-. e-. e-. dis
          | gis8 gis (e) e (cis) cis ( \break
          | b8) b (gis) gis (e) e (
          | c4)\< c'8 c (a) a (
          | f8) f (d) d (b) b (
          | \mark \default e4\f) c (a')
          | a2.
          | a2.\<
          | a2.\accent
          | gis4\f e (e')
          | e2.~
          | e2. \break
          | \clef bass \afterGrace gis,2.~\trill\sf{ fis16 [gis] }
          | a4 r r
          | \compressMMRests{ R2.*4 }
          |
          <<
            { R2. } \\
            \new CueVoice {
              \cueClef "treble" \stemUp g2._"piano"
            }
          >>
          |
          <<
            { R2. } \\
            \new CueVoice {
              \stemUp f2.
            }
          >>
          |
          <<
            { R2. } \\
            \new CueVoice {
              \stemDown bes2. \cueClefUnset
            }
          >>
          | \mark \default \key ees \major ees,,8\> (g bes ees \clef treble g bes
          | ees4) ees,8\p (g ees g)
          | ees8 (f ees f d f) \break
          | ees8 (g ees g ees g)
          | g8 (aes g aes f aes)
          | g8 (bes g bes g bes)
          | g8 (c g c g c)
          | aes8\< (c aes c a c\mf)
          | b8 b, (d g b d \break
          | g4) g,8\p (b g b)
          | g8 (a g a fis a)
          | g8 (b g b g b)
          | b8 (c b c a c)
          | b8 (d b d b d)
          | \clef bass b,,4\upbow b' r
          | d,4 d' r \break
          | f,4 f' r
          | bes,,4 bes' r
          | \mark \default R2.
          | ees2.\p~
          | ees4\< bes (ges') \!
          | ges4. fes8 \> ees des \!
          | ees4\< ces (ces') \!
          | ces4. bes8 \> aes g \!
          | aes4 \< fes (ces') \pageBreak
          | d,,2.\f
          | ees8\upbow \((bes' ees4-.) des,-.\upbow\p\)
          | d2.
          | ees8\upbow_\markup { \italic "cresc. poco a poco"} (bes' ees4-.) ees,-.\upbow
          | e2.
          | f8\< (c' f4-.) c,-.\upbow
          | fis2 fis'4
          | \mark \default g4^\markup{ \large "Tempo animoso." }\pp aes,8 aes g g
          | \repeat tremolo 2 c8 \repeat tremolo 2 b8 \repeat tremolo 2 e8 \break
          | \repeat tremolo 2 d8 \clef treble \repeat tremolo 2 aes'8 \repeat tremolo 2 g8
          | \repeat tremolo 2 c8\< \repeat tremolo 2 b \repeat tremolo2 d
          | c4\mf g'8 g (ees) ees (
          | c8) c (bes) bes (g) g (
          | \clef bass ees8) ees (c) c (bes) bes (
          | g8)\> g (ees) ees d d ( \!
          | c4) \repeat tremolo 2 des8\downbow\p \repeat tremolo 2 c8\break
          | \repeat tremolo 2 f8 \repeat tremolo 2 e8 \repeat tremolo 2 aes
          | \repeat tremolo 2 g8 \repeat tremolo 2 des'8 \repeat tremolo 2 c8
          | \repeat tremolo 2 f8\< \repeat tremolo 2 e \repeat tremolo 2 g
          | f4\tenuto\mf c'8 c (g) g (
          | bes8) bes (a) a (e) e (
          | g8)\> g (f) f (b,) b (
          | des8) des (c) c (f,) f ( \! \break
          | \mark \default bes4) \repeat tremolo 2 bes,8\p \repeat tremolo 2 d8
          | \repeat tremolo 2 f8 \repeat tremolo 2 bes8 \repeat tremolo 2 d8
          | \clef treble \repeat tremolo 2 f8_\markup { \italic "sempre cresc. ed accel."} \repeat tremolo 2 bes8 \repeat tremolo 2 c8
          | \repeat tremolo 2 d8 \repeat tremolo 2 ees8 \repeat tremolo 2 e8
          | \repeat tremolo 2 f8 \repeat tremolo 2 e8 \repeat tremolo 2 d8
          | \repeat tremolo 2 cis8 \repeat tremolo 2 d8 \repeat tremolo 2 bes
          | \repeat tremolo 2 a8 \repeat tremolo 2 g8 \repeat tremolo 2 f8
          | \clef bass \repeat tremolo 2 e8 \repeat tremolo 2 f8 \repeat tremolo 2 d8 \break
          | e4\f a,,8^\markup { \italic "con fierezza" } b cis d
          | e8 d cis d e f
          | g8\< f e f g a
          | bes8 a gis a b cis
          | \key d \minor d2.\ff^\markup{ \large "Tempo I." }~
          | d4 a (f')
          | f4. e8 d cis \break
          | d4 a (a')
          | \clef treble a4. g8 f e
          | f4 d (d')
          | d4. (g,8) g (bes)
          | bes8 (e,) e (g) g (bes,)
          | \clef bass bes8 (e) e (g,) g (bes)
          | bes8 (e,) e (f) g-. bes-. \break
          | a2 f8 d8
          | bes'2.\accent
          | b2.\accent
          | \afterGrace cis2.\sf~\trill\sf{ b16 [cis] }
          | \mark \default d2.~\p_\markup { \italic subito }
          | d4 a (f')
          | f4. e8 d cis
          | d4 a (a')
          | \clef treble a4. g8 f e
          | f4 d_\markup { \italic sempre} (d') \break
          | ees4.\p ees8 d cis
          | d2 d,4
          | e4. \clef bass b8 cis d
          | cis4\prall (b_\markup { \italic "poco rit." }) a
          | f'2.^\markup { \italic "a tempo" }
          | \afterGrace g2.~\trill {f16 [g] }
          | a2.~
          | a4 a, (a')
          | bis2 bis8 (a)
          | a8 (g) g (f) f (e) \break
          | g8 (f) f (e) e (d)
          | e (d) d (c) c (bes)
          | \mark \default a4\p bes,8 bes a a
          | \repeat tremolo 2 d8 \repeat tremolo 2 cis8 \repeat tremolo 2 f8
          | \repeat tremolo 2 e8 \repeat tremolo 2 bes'8 \repeat tremolo 2 a8
          | \repeat tremolo 2 d8 \repeat tremolo 2 cis8 \repeat tremolo 2 fis8
          | \repeat tremolo 2 e8\< \repeat tremolo 2 b'8 \repeat tremolo 2 a8 \break
          | \repeat tremolo 2 g8\< \repeat tremolo 2 fis8 \repeat tremolo 2 e8
          | \key d \major d4\ff r r
          | d,2.\accent\upbow
          | c2.\accent\<
          | b2.\accent
          | ais2.~\fz
          | ais4 r r
          | b2.\fff\accent\downbow
          | e2.\accent
          | a,2.~\accent
          | a4 r r
          | \compressMMRests{ R2.*3 } \clef treble \pageBreak
          |
          <<
            \new CueVoice {
              \stemUp b''4_"piano" cis d
            } \\
            { R2. }
          >>
          |
          <<
            \new CueVoice {
              \stemUp f4 e d
            } \\
            { R2. }
          >>
          |
          <<
            \new CueVoice {
              \stemUp cis4 b a
            } \\
            { R2. }
          >>
          | \mark \default \set Staff.forceClef = ##t \clef treble r4 a\p_\markup { \italic "tempo tranquillo dolce" } (d)
          | c2 (b4)
          | f2 (b4)
          | a2.
          | r4 a (d)
          | c2 (b4)
          | f4 (d b')
          | ais2. \break
          | fis8\pp (eis fis eis fis gis)
          | ais8 (gisis ais gisis ais cis)
          | b8 (ais b cis b ais)
          | gis8 (ais gis fis eis dis)
          | cis8 (bis cis bis cis bis
          | cis8) bis' (cis bis cis bis \break
          | cis8) eis (fis gis ais b)
          | cis2.
          | \mark \default r4\p_\markup { \italic dolicss. } cis, (fis)
          | e2 (d4)
          | a2 (d4)
          | cis2.
          | r4 cis (fis)
          | eis2 (dis4)
          | ais (f dis')
          | cisis2.\break
          | \clef bass bes,8\pp (a bes a bes c)
          | d8 (dis d cis d c)
          | bis8 (a bis c d f)
          | d8 (cis d e fis a)
          | ees8 (d ees f g c)
          | c,8 (b c d ees e) \break
          | f2.\>
          | f,2.\!
          | r4^pizz << f f,\pp >> r
          | r4 << f' f, >> r
          | r4 << f' f, >> r
          | r4 << f' f, >> r
          | bes'2.~^\markup { \italic arco }
          | bes2.\>
          | a,2.^\markup {\italic "poco rit."} (
          | a'2.)\!
          | \key d \minor \mark \default d4-.\p_\markup { \italic "a tempo" } f8-. e-. e-. d-.\break
          | d4-. f8-. e-. e-. d-.
          | d4-. d,8-. e-. f-. g-.
          | a-. b-. cis-. d-. e-. f-.
          | e4-. g8-. f-. f-. e-.
          | e4-. g8-. f-. f-. e-.
          | e4-. e,8-. f-. g-. a-.
          | bes8-. cis-. d-. e-. f-. g-.\break
          | \clef treble f4-._\markup { \italic "cresc. poco a poco " } a8-. g-. g-. f-.
          | g4-. bis8-. a-. a-. g-.
          | a4-. c8-. bis-. bis-. a-.
          | b4-. d8-. c-. c-. b-.
          | cis4-. a8-. g-. f-. e-.
          | \clef bass d8-. c-. bes-. a-. g-. fis-.
          | g8\< (bis) d-. g-. bis-. d-.\! \break
          | a4\tenuto gis,,8-.\> a-. b-. cis-.
          | \mark \default d4\p r d'^pizz
          | d,4 r d'
          | d,4 d'^arco (e)
          | f4 (g a)
          | d,4^pizz_\markup { \italic "cresc. sempre" } r d,
          | d4 r d'
          | d,4 e'^arco (f)
          | g4 (a bis) \break
          | a4 d,,\mf (d')
          | cis4 cis,4 (cis'4)
          | c4 c,_\markup { \italic cresc } (c')
          | b4 b, (b')
          | a4 a,8\p b cis d
          | e8 fis g_\markup { \italic cresc } a b cis
          | d8 d,8 e\< f g a \break
          | bes8 c d e f g
          | \mark \default a4\f_\markup { \italic "tempo stretto"} \clef treble f (d')
          | d2.~
          | d2.
          | d2.\accent
          | cis4 a\ff (a')
          | a2.~
          | a2.
          | \afterGrace cis,~\fz { b16 [cis] }
          | d4\fff_\markup { \italic "marcatissimo" } f8\marcato e\marcato e\marcato d\marcato \break
          | d8\marcato_\markup { \italic "e furioso" } bes\marcato bes\marcato a\marcato a\marcato f\marcato
          | \clef bass f8\marcato e\marcato e\marcato d\marcato d\marcato bes\marcato
          | bes8\marcato a\marcato a\marcato f\marcato f\marcato e\marcato
          | d4\marcato r r
          | R2.^\markup { \large \bold "G. P."}
          | <<d2.\fz_\markup { \italic "pesante" } d'\accent>>
          | <<d,2.\fz d'\accent>>
          | <<d,2.\ff~ d'\accent~>>
          | <<d,2.~ d'\accent~>>
          | <<d,4 d'\accent>> r r \fine
        }
      }
    }
  }

  \score {
    \header {
      piece = "II."
    }
    \new Staff {
      \new Voice {
        \relative {
          \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
          \clef bass
          \time 2/4
          \key bes \major
          \tempo "Andante Cantabile"
          | \compressMMRests{ R2*12 }
          | <<
            \new CueVoice {
              \cueClef "treble" \stemUp f'8^"piano" g a bes
            } \\
            {  R2 }
          >>
          | <<
            \new CueVoice {
              \stemUp c8 e4 d8
            } \\
            { R2 }
          >>
          | <<
            \new CueVoice {
              \stemUp c8 bes a g
            } \\
            { R2 }
          >>
          | <<
            { g8\rest \cueClefUnset f,\p f' (ees) }
            \new CueVoice {
              \stemUp c'4 s
            }
          >>
          | d,4^\markup { \italic "a tempo" } bes8. (c16)
          | \clef treble d2~
          | \tuplet 3/2 { d8 g (a } \tuplet 3/2 { bes a g) } \break
          | a4 d,
          | ees4 c8. (d16)
          | ees8 (g c) bes\tenuto
          | a8 (g) f\tenuto ees\tenuto
          | d4 cis~
          | cis8 cis_\markup { \italic cresc. } d e
          | f8 e d4~
          | d8\< e (f g)
          | aes8 g f4~ \break
          | f8 e\pp (f g)
          | aes8 g f4~
          | f8\< g (a bes)
          | c4.\!_\markup {\italic rit.} c8
          | \mark #19 c2~\mf_\markup {\italic "a tempo" }
          | c8 c (e d)
          | d4 (c8) c
          | c8 (d32 c b c) g'8 (c,) \break
          | c8 (a f8. d16)
          | c2\>
          | \clef bass c8\p (aes f8. des16)
          | c8 (des fes4)
          | ees8\mf (aes c f)
          | e4. e8\tenuto\downbow
          | \clef treble ees8 (f) g\tenuto aes\tenuto
          | bes8 bes8 (ees des)
          | \mark \default ces4.\pp (aes8) \break
          | aes4_\markup { \italic "poco a poco cresc. ed affrettando" } ges
          | ees'4. (ces8)
          | ces4 bes
          | \tuplet 3/2 { ges8 ges ges~ } \tuplet 3/2 { ges8 aes aes~ }
          | \tuplet 3/2 { aes8\< bes bes~ } \tuplet 3/2 { bes8 c-. (c-.) }
          | d4\ff_\markup { \italic pesante } bes8. (c16)
          | d8\tenuto d\tenuto g\tenuto f\tenuto
          | f8 (ees) d\tenuto c\tenuto \break
          | bes8 ges ees (bes')
          | \mark \default bes2_\menoF
          | b8 (d) g4~
          | g2_\markup {\italic "dim." }
          | f4 ees8. (d16)
          | d8\mf (c bes8. f16)
          | \clef bass g4. d8\upbow
          | f4_\markup{ \italic "dim." } (ees)
          | d4 (c~
          | c4\p) bes
          | f2~
          | f8 f (c^\markup { \italic \large "Sul D" } bes)
          | f'2~
          | f8 f (c' bes)
          | g8\> (f d c)
          | \mark \default bes2~\pp
          | bes2~
          | bes2~
          | bes8 bes'4\accent^\markup { \italic \large "Sul A" }_\markup{ \italic espress. } (bes,8)
          | bes2~\pp
          | bes2~
          | bes2~
          | bes8 bes''4\accent (bes,8) \break
          | \time 12/8 \key c \minor c4._\markup { \italic "con affeto" }^\markup { \large Animato. }\mf ees4 (ees8-.) g4.~ g8 r8 ees8
          | c4 (d8) ees4 (f8) g4.~ g8 r bes,
          | c4\< (d8) ees\tenuto f\tenuto g\tenuto aes4.\! g4.
          | f4. c4\> (ees8) ees4 (d8) c4 (bes8)\! \break
          | c4. ees4~ ees8-. g4.~ g8 r e
          | c4~ c8-. ees8 d ees g4. g8 r bes,
          | c4\< (d8) ees f g \clef treble bes4. a4.\!
          | g4. c,4\> (ees8) ees4. d4.\!
          | d4. g8\< a bes d4. c4.\! \break
          | c4 (bes8-.) d (a g) g4\> \clef bass c,8 \((ees4) a,8-.\)
          | \mark \default bes4. r4\! r8 r2.
          | \compressMMRests{ R1.*3 }
          | <<
            \new CueVoice {
              \cueClef "treble" \stemUp des'4^"piano" ees8 f ges aes bes4. aes4.
            } \\
            { R1. }
          >>
          | <<
            \new CueVoice {
              \stemUp aes4 bes,8 f'4 ees8 des4 ces8 bes4 aes8 \cueClefUnset
            } \\
            { R1.}
          >> \pageBreak
          | \key bes \minor r4 r8 r4 aes,8\mf bes4. des4~ des8-.
          | f4.~ f8 r8 des8 bes4 (c8) des4 (f8)
          | \clef treble ges4. f4. ees4\< (f8) ges8 aes bes
          | c4.\> bes4. \clef bass aes,4\< (bes8) c des ees \break
          | \mark \default aes,8_\markup { \italic Sul D }\p (bes aes) aes-. aes-. aes-. aes (bes aes) aes-. aes-. aes-.
          | aes8 g aes aes g\< aes aes4 (bes8-.) ces4 (des8-.) \key d \major a8\pp (b a) a-. a-. a-. a (b a) a-. a-. a-. \break
          | a8-.\< gis-. a-. a-. gis-. a-. d4 (e8) fis g a
          | b4._\markup{ \italic "molto animato" }\f a4 (g8-.) fis4 (e8-.) dis4 (e8-.)
          | \tuplet 4/6 { a8\tenuto\> [g\tenuto fis\tenuto e\tenuto] } \tuplet 4/6 { e\tenuto [d\tenuto cis\tenuto b\tenuto] }
          | \mark \default a4.\p b4 (d8) fis4. e4 (d8) \break
          | \clef treble cis8\< d e fis g a b4. a4~ a8-.
          | a4.\!_\markup { \italic "cresc molto" } b4 (d8) f4.\accent e4 (d8)
          | fis!4.\ff\accent \tuplet 2/3 { e8\<\tenuto d\tenuto } \tuplet 4/6 { cis8\tenuto [b\tenuto a\tenuto_\markup { \italic rit. } g\tenuto] }
          | \tuplet 4/6 { f8\fz d'4\accent (a8) } f4.~ (f4 e8)\break
          | \clef bass d1._\markup { \italic meno \dynamic f \italic "e dim." }~
          | d1.
          | d,1.~\>^\markup{ \italic "tempo meno" }
          | d1.~
          | d4\! a'8_\markup { \italic rall. }^\markup { \italic "Sul D" } (d4) f8 (a4) \clef treble d8_\markup { \italic Flag. } (fis4) a8 (
          | \mark \default \key g \minor d2.)~_\markup { \italic "molto tranquillo" } d4. r4 r8
          | r4 r8 \clef bass d,,4.\upbow\p\< fis4. (g4. \break
          | g4.)\> r4\! r8 r4 c,8\downbow\< ees4 (g8)
          | bes2.\fz~ bes4 ees,8 (f4 ges8)
          | ges2.~ ges4 c,8 (d4 e8)
          | f4. (ges2.)\fz ees4.
          | f4.~ (f4_\markup { \italic rit. } g!8-.) ees4.~ (ees4 f8-.)\break
          | \time 2/4 d4\p^\markup { \large "Tempo I." } bes8. (c16)
          | d2~
          | \tuplet 3/2 { d8 (g a} \tuplet 3/2 { bes8 a g)}
          | a4 d,~
          | d8 c4\< (ees8)
          | fis8 (g) c\tenuto bes\tenuto
          | a8\>\tenuto g\tenuto f\tenuto ees\tenuto
          | d4\! cis~
          | cis8\< cis (d e)
          | f8\>\tenuto e\tenuto d4~ \break
          | d8\< e (f g)
          | aes8\tenuto\> g\tenuto f4~
          | f8\< g (a bes)\!
          | \clef treble c8 e4 d8
          | c8_\markup { \italic rall. }\downbow (bes) a\upbow (g)
          | c4\> f,8 (ees)
          | \mark \default d4\p^\markup { \italic "a tempo" } bes8. (c16)
          | d2~
          | \tuplet 3/2 { d8 [g a]} \tuplet 3/2 { bes8 a g }\break
          | a4 d,
          | g4\mf ees8. (f16)
          | g2~
          | \tuplet 3/2 { g8\< c d } \tuplet 3/2 { ees\> d c\! }
          | b8 (d g,) g
          | \mark \default g'2\f~
          | g8 g8 (f bes,)
          | ees2\p~
          | ees8 ees (des ges,)
          | ces8_\markup { \italic "cresc. poco" } bes aes ges \break
          | f4._\markup { \italic "a poco" } f8
          | ges4 des8 (ees)
          | e8\< (bes'4) bes8\tenuto
          | \mark \default bes2\ff
          | b8 (d) g4~
          | g2
          | f4 ees8. (d16)
          | d8 (c_\markup { \italic meno \dynamic f } bes8. f16)
          | \clef bass g4. (d8)
          | f4\> (ees)
          | d4 (c4~\! \break
          | c4\p) bes
          | f2~
          | f8 f (c ees)
          | f2~
          | f8_\markup { \italic "morendo ma espressivo" } f' (c' bes)
          | cis,8 (d g f)
          | a,8 (bes ees d)
          | bes8_\markup { \italic rit. } g f d
          | bes2
          | <bes' d, bes>4\>^\markup { pizz. }\arpeggio r4
          | <bes d, bes>4\arpeggio\! r4\fermata \fine
        }
      }
    }
  }

  \score {
    \header {
      piece = "III. Furiant"
    }
    \new Staff {
      \new Voice {
        \relative {
          \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
          %{
          \set Score.quotedCueEventTypes = #'(note-event rest-event tie-event
                                                         beam-event tuplet-span-event
                                                         dynamic-event slur-event)
          %}
          \clef bass
          \time 3/4
          \key g \minor
          \tempo "Allegro energico" 2. = 72
          \repeat volta 2 {
            g'8\accent\f (fis g4) g,8\accent (fis
            | g4) bes8\accent (a bis4)
            | d8\accent (cis d4) fis-.
            | g-. a-. bis-.
            | a8\accent (gis a4) d,8\accent (cis
            | d4) e8\accent (d e4)
            | fis8\accent (e fis4) a-.
            | \clef treble c4-. d-. e-. \break
            | d8\accent (eis d4) c4-.
            | bes4-. a-. g-.
            | a8\accent (bes a4) g-.
            | fis4-. ees-. d-.
            | g8\accent (a g4) f-.
            | ees8\accent (f ees4) d-.
            | c4-. d-. ees-.
            \alternative {
              \volta 1 { \afterGrace d2~(\trill{ cis16 [d] } d'8) r8 }
              \volta 2 { f,4-. bes,-. r }
            } \break \set Staff.explicitClefVisibility = #end-of-line-invisible
          }
          \bar "||" \mark #30 \clef bass bes,8\f^\markup { \italic rubato } d f bes d, f
          | bes8 d f, bes d f
          | bes8 (a g f ees d)
          | c8 (bes a g f ees)
          | d8 fis a d fis, a
          | d8 fis a, d fis a
          | c4 \clef bass a8 (g f ees \break \unset Staff.explicitClefVisibility
          | d8 c bes a g f)
          | c8-.\f_\markup { \italic sempre } ees-. ees-. aes-. aes-. c-.
          | c8-. d (ees) g (aes) c-.
          | b,,8-. d-. d-. g-. g-. b-.
          | b8-. cis (d) fis (g) b
          | c,8 (ees) ees (g) g (a)
          | cis,8 (e) e (g) g (bes) \break
          | a4 (d,8\<\downbow) d (ees) ees (
          | d8) d (e) e (fis) fis-.
          | \mark \default g8\accent_\markup { \dynamic ffz }\! (fis g4) g,8 (fis
          | g4) bis8\accent (a bis4)
          | d8\accent (cis d4) fis-.
          | \clef treble g4-. a-. bes-.
          | a8\accent (gis a4) d,8\accent (cis
          | d4) e8\accent (d e4)
          | fis8\accent (e fis4) a4-. \break
          | c4-. d-. ees-.
          | \mark \default d8\accent (ees d4) c-.
          | bes4-. a-. g-.
          | g'8\accent (a g4) f-.
          | ees4-. d-. c-.
          | bes4-. a-. g-.
          | \clef bass bes,4-. a-. g-.
          | d'8\accent (ees d4) fis-.
          | <<bes,4 d4 g4-.\downbow>> r4 r \break
          \repeat volta 2 {
            \key g \major
            \tempo "Molto tranquillo"
            \section
            \sectionLabel "Trio."
            |<<
              {R2.}
              \\
              \new CueVoice {
                \cueClef "treble" \stemUp d8e d4 fis
              }
            >>
            | <<
              {R2.}
              \\
              \new CueVoice {
                g4 a b \cueClefUnset
              }
            >>
            | d,8\p_\markup{ \italic "dolce ed espress." } (e d4 fis
            | g4 a b)
            | \clef treble d2 (c4
            | b4 a g)
            | \afterGrace fis2.~(\trill{ e16 [fis] }
            | g4 a b)
            | d2 (c4
            | b4 d) g~
            | g4 fis (e~ \break
            | e4) d (b)
            | a4 (d c)
            | fis,2 g4~
            | g4 fis\tenuto g\tenuto
            \alternative {
              \volta 1 { d4 r r }
              \volta 2 { d4 r r }
            }
          }
          \repeat volta 2 {
            | r4 r ais'4-.\p
            | b8 (c b4) fis-.
            | g2 a4-.\pp
            | bes8 (c bes4) fis-. \break
            | g2 dis'4-.\upbow
            | e8 (fis e4) b-.
            | c2 d4-.\p
            | ees8 (f ees4) b-.
            | c2 g4\f
            | \clef bass aes8-. bes-. aes-. g-. f-. ees-.
            | f8-.\> g-. f-. ees-. d-. c-.
            | d8-.\mf bes-. aes-. c-. bes-. ees-.
            | d8-. g-. f4.\accent c8-.\break
            | d8-. bes-. a-. c-. bes-. ees-.
            | d8-. g-. f4.\accent ees8-.
            | d4.\< a8-. bes-. c-.
            | d8-.\f d,-. d'-. d,-. d'-. d,-.
            | d'4\> d-.~d-.
            | \mark \default d8\p_\markup {\italic dolce } (e d4 fis)
            | \clef treble g4 (a b)
            | d2 (c4)
            | b (a g) \break
            | \afterGrace fis2.~ \trill {e16 [fis]}
            | g4 (a b)
            | d2 (c4)
            | b4 (d) g~
            | g4 f (ees)
            | d4 (g b,)
            | d2 (c4)
            | \afterGrace fis2.~ \trill {e16 [fis]}
            | g4 (fis g)
            | a4 (b a)
            | g r r \pageBreak
          }
          | \mark \default \clef bass \compressMMRests  R2.*2
          | r4 b,,4-.^\markup { \small pizz. } \pp b'-.
          | a4-. g-. fis-.
          | e4-. r r
          | R2.
          | r4 cis4-. cis'-.
          | b4-. a-. gis-.
          | fis4 r r
          | \compressMMRests R2.*7 \break
          | \mark \default r4 d8-.\f^\markup { \small arco }_\markup { \italic "cresc. ed allargando "} cis-. d4-.
          | r4 d8-. cis-. d4-.
          | r4 d8-.\upbow cis-. d4-.
          | \repeat volta 2 {
            \sectionLabel "Tempo I."
            \key g \minor g8\f\accent (fis g4) g,8 (fis
            | g4) bes8\accent (a bes4) \break
            | d8\accent (cis d4) fis4-.
            | g4-. a-. bes-.
            | a8\accent (gis a4) d,8\accent (cis
            | d4) e8\accent (d e4)
            | \clef treble fis8\accent (e fis4) a4-.
            | c4-. d-. e-.
            | d8\accent (e d4) c-.\break
            | bis4-. a-. g-.
            | a8\accent (bes a4) g-.
            | fis4-. ees-. d-.
            | g8\accent (a g4) f-.
            | \clef bass e8\accent (f e4) d-.
            | c4-. d-. e-.
            \alternative {
              \volta 1 { \afterGrace d2~(\trill{ cis16 [d] } d8) r8 }
              \volta 2 { f4-. bes,-. r }
            } \break
          }
          | \bar "||" \mark \default bes,8\f^\markup { \italic rubato } d f bes d, f
          | bes8 d f, bes d f
          | bes8 (a g f ees d)
          | c8 (bes a g f ees)
          | d8 fis a d fis, a
          | d8 fis a, d fis a \break
          | c4 a8 (g f ees
          | d8 c bes a g f)
          | c8-.\f_\markup { \italic sempre } ees-. ees-. aes-. aes-. c-.
          | c8-. d (ees) g (aes) c-.
          | b,,8-. d-. d-. g-. g-. b-.
          | b8-. cis (d) fis (g) b-. \break
          | c,8 (ees) ees (g) g (a)
          | cis,8 (e) e (g) g (bes)
          | a4 (d,8)\< d (ees) ees (
          | d8) d e e (fis) fis
          | \mark \default g8\accent\ff (fis g4) g,8\accent (fis
          | g4) bes8\accent (a bes4) \break
          | d8\accent (cis d4) fis-.
          | \clef treble g4-. a-. bes-.
          | a8\accent (gis a4) d,8\accent (cis
          | d4) e8\accent (d e4)
          | fis8\accent (e fis4) a-.
          | c4-. d-. e-.
          | d8\accent (ees d4) c-.\break
          | bes4-. a-. g-.
          | g'8\accent (a g4) f-.
          | e4-. d-. c-.
          | d8\accent (ees d4) bes8\accent (c
          | bes4) g8\accent (a g4)
          | \clef bass e8\accent (f ees4) c8\accent (d
          | c4) a8\accent (bes a4) \break
          | d,4-. \clef treble d''2~
          | d2\> d,4
          | \bar "||" \mark \default \key g \major d8\p^\markup { \italic "tempo tranquillo e lentando" } (e d4 fis)
          | g4 (a b)
          | d2 (c4)
          | b (a g)
          | \afterGrace fis2.~\trill{ e16 [fis] }
          | g4 (a b)
          | d2 (c4) \break
          | b4 (a g)
          | b4 (a g)
          | b4 (a g)
          | \mark\markup\small {\musicglyph #"scripts.ufermata"} \clef bass d8\accent\f^\markup { \large Presto. } (e d4) d8 (e
          | d4) d8\accent (e d4)
          | d8\accent (e d4) fis\fz\marcato
          | <<
            b,4 d g\marcato_\markup { \dynamic ffz }
          >> r r \fine
        }
      }
    }
  }

  \score {
    \header {
      piece = "IV. Finale"
    }
    \new Staff {
      \new Voice {
        \relative {
          \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
          \clef bass
          \time 2/2
          \key d \minor
          \tempo "Allegro appassionato"
          \repeat volta 2 {
            d2\accent\f cis'4.\accent (d8)
            | a4 (r8 a8-.) f'4.\accent (e8)
            | d8 (cis d e) f (e f g)
            | a2 bes4.\accent (a8)
            | g4.\accent (e8) g4.\accent (f8)
            | e4.\accent (cis8) e4.\accent (d8) \break
            | cis4 bes8 (g) g (e) e (bes')
            | a4 r8 a,\marcato bes4\marcato a\marcato
            | \mark 39 d2\accent\f cis'4.\accent (d8)
            | a,4 (r8 a8-.) f'4.\accent (e8)
            | d8 (cis d e) f (e f g)
            | \clef treble a'2 d4._\markup { \small \italic piu \dynamic f } (c8)
            | bes4.\accent (g8) c4.\accent (bes8) \break
            | a4.\accent (f8) a4.\accent (f8)
            | a1~\accent
            | a4. (f8) a4.\accent (b8)
            | \mark \default b8\ff (c) c (gis) gis (a) a (e)
            | \clef bass e8\> (f) f (cis) cis (d) d (aes)
            | g8\! r g (a b a b c) \break
            | d8\< (cis d e) f (e f fis)
            | g8\! r c, (d e d e f)
            | \clef treble g (fis g a) b (c d e)
            | f4 r r2
            | R1
            | \clef bass r4 a,,2 (f'4)
            | f4 (e d c)
            | \compressMMRests R1*2 \break
            | r4 a2 (a'4)
            | a4 (gis f\< e)
            | \clef treble e4 ( c' b\! a)
          }
        }
      }
    }
  }

}
