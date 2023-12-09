\version "2.24.3"

menoF = \markup { \tiny \italic meno \dynamic f }

\header {
  title = "SONATA No. 2"
  composer = "Adolf Míšek, Op. 6"
  instrument = "Contrabass"
  copyright = "Engraving Ⓒ Mark Tomko, 2023"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
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
          | e4._\markup {\italic dim. } \clef bass b8 c8 d8
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
            \new CueVoice {
              \cueClef "treble" \stemUp d'4_"piano" e f
            }
            { R2. }
          >>
          | <<
            \new CueVoice {
              \stemUp a4 g f
            }
            { R2. }
          >>
          | <<
            \new CueVoice {
              \stemUp e4 d c \cueClefUnset
            }
            { R2. }
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
          | b4-. b,8 c-. d-. e-. \break
          | f-. gis-. a-. b-. c-. d-.
          | c4-. e8-. d-. d-. c-.
          | d4-. f8-. e-. e-. d-.
          | \clef treble e4-. g8-. f-. f-. e-.
          | fis4-. a8-. g-. g-. f-.
          | g4 g'8 (fis) fis (eis)
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
            \new CueVoice {
              \cueClef "treble" \stemUp g2._"piano"
            }
            { R2. }
          >>
          |
          <<
            \new CueVoice {
              \stemUp f2.
            }
            { R2. }
          >>
          |
          <<
            \new CueVoice {
              \stemUp bes2. \cueClefUnset
            }
            { R2. }
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
          | ees8\upbow (bes' ees4-. des,-.\upbow\p)
          | d2.
          | ees8_\markup { \italic "cresc. poco a poco"} (bes' ees4-. ees,-.\upbow)
          | e2.
          | f8\< (c' f4-. c,-.\upbow)
          | fis2 fis'4
          | \mark \default g4\pp aes,8 aes g g
          | \repeat tremolo 2 c8 \repeat tremolo 2 b8 \repeat tremolo 2 e8 \break
        }
      }
    }
  }
}


