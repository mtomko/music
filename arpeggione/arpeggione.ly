\version "2.24.3"

% dynamics
crescM = \markup { \small \italic "cresc." }
dimM = \markup { \small \italic "dim." }
decrescM = \markup { \small \italic "decresc." }

rit = \markup { \small \italic "rit." }
atempo = \markup { \small \italic "a tempo" }

% fingerings
plus = \finger \markup \fontsize #4 "+"
mplus = \finger \markup \fontsize #4 "-+"
mi = \finger "-1"
mii = \finger "-2"
miii = \finger "-3"
miv = \finger "-4"

% other


\header {
  title = "Arpeggione Sonata"
  subtitle = \markup { \small "in a minor, D. 821" }
  composer = "Franz Schubert"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

mvtI = \relative {
  \numericTimeSignature
  \time 4/4
  \key g \minor
  \clef bass
  \tempo "Allegro moderato" 4=100
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override Fingering.avoid-slur = #'outside

  \repeat volta 2 {
    \compressMMRests R1*9
    g2\mf a4. (bes8)
    | g2~\> g8 \! a\1 (bes c)
    | d4. (g,8) ees'4. (g,8)
    | d'2-2 \clef treble r8 d8\upbow (g ees-4) \break

    % line 2

    | d4-4 (cis-2 c8-1) a'-3 (g16-1 fis-\plus ees\2-2 d-1)
    | c4-4_\markup { \small \italic "non dim." } (bes) r8 bes (d-\plus\flageolet [g])
    | bes8-3\< aes-1 g2-\mi fis4-\plus
    | d'4.\> bes8-2\upbow (g-\plus) \clef bass d\2-3\downbow (bes-\mi g-4)
    | c,4\4-1\pp\upbow \clef treble ees'2.-1~\downbow \break

    % line 3

    | ees2~\< ees8 aes-\plus (c-3 aes-\plus)
    | ees'2-3~\fp\> ees8 c-3 (aes-\plus ees-4)
    | \afterGrace d2\!-2 ({ ees16 d cis d) } bes'4.-3 (a?8-3)
    | g4-1\flageolet d'8-2\p (ees\accent) ees (d) fis,-\plus (a-3)
    | a8\accent (g) d-1 (f!-4) f-4\accent (ees-1) c-1-. (a-4-.) \break

    % line 4

    | g4-1 d''16-2\pp (ees d ees) ees8\accent (d) fis,16-\plus (g fis a)
    | a8\accent (g) d16-1 (ees d f!) f8\accent (ees) c-. (a-.)
    | g8-1 (d') a-1_\crescM (d) bes-2 (d) a (d)
    | bes8 (d-\plus\flageolet) a'-1 (d,) bes'-2 (d,) a' (d,) \break

    % line 5

    | bes'8 (d,) d'\flageolet_\dimM (d,) d' (d,) d'-.\upbow d-.\upbow
    | g1~\!-3\flageolet\pp\>
    | g4 r4\! r \clef bass g,,4\2-1\f\upbow
    | a2-4~ a16 c\1-1\upbow^\markup { \small "M." }(ees c) a\2\downbow f c\3-. a-.
    | f4 r r \acciaccatura bes'16 a8.\trill (g32 a) \break

    % line 6

    | bes2~ bes16 f (d f) bes f d' bes \clef treble
    | f'2.-4 ees8-2 (d-1)
    | c16-2\p (b d c ees d f ees) g4-\plus\flageolet\upbow bes-2\accent\downbow (
    | a8) f (e) bes' (a) f\< (e) bes' ( \break

    % line 7

    | a8 f) d \! (g) g\> (ees) c (f)
    | f8 (d) \! \clef bass bes16\2-1_\decrescM (c-4 bes ees) ees8 (c) a16-1 (bes-2 a d)
    | d8 (bes) fis (bes) g8^\rit (bes) \tuplet 3/2 { a8-1\upbow g'-3\flageolet\downbow (f-1) }  \break

    % line 8

    | bes,16-2\upbow\pp^\atempo (a c bes) \repeat unfold 3 { bes (a c bes) }
    | g8\flageolet\upbow(g'-3\flageolet) g4\accent g,8 (g') g4\accent \pageBreak

    % page 2 line 1

    | a,16\upbow (gis bes a) \repeat unfold 3 { a16 (gis bes a) }
    | f8\upbow (f') f4\accent f,8 (f') f4\accent
    | ees16-2\upbow (d-1 f-4 ees-1 g-3_\crescM f-1 ees-2 d-1) c-1\downbow (d-4 ees-4 c-\mi a\2-4) f\upbow (g ees \break

    % line 2

    | d16-.\parenthesize\upbow) f'-1\downbow\p (g-3 f) f,\3\plus-.\upbow f' (g f) bes,-.\2-\plus f' (g f) d-3\flageolet-. f (g f)
    | ees16-2\upbow (d-1 f-4 ees-1 g-3_\crescM f-1 ees-2 d-1) c-1\downbow (d-4 ees-4 c-\mi a\2-4) f\upbow (g ees
    | d16-.) f'-1\downbow\p (g-3 f) f,\plus-.\upbow f' (g f) bes,-.-\plus f' (g f) d-3\flageolet-. f (g f) \break

    % line 3

    | g,16\upbow (fis g a bes a bes d) \clef treble ees-2\downbow\< (d ees-1 fis-4 g-\plus a-1 bes-2 c-1)
    | des2.-2\f\>\upbow c8-3 (bes-1)
    | bes2\p\upbow \acciaccatura bes16\downbow \once \slurDown \afterGrace a2-1 ( \trill { g16 a }
    | bes8) bes,-1\<\upbow (c-4 d-1 f-4\>) ees-2\downbow (\tuplet 3/2 { d8 ees c) } \! \break

    % line 4

    | \afterGrace bes2.\upbow ({ c16 bes a bes) } d8 (c)
    | \clef bass bes16\pp\upbow (a) c-. bes-. \repeat unfold 3 { bes16 (a) c-. bes-. }
    | g8 (g') g4\accent g,8 (g') g4\accent \break

    % line 5

    | \repeat unfold 4 { a,16 (gis) bes-. a-. }
    | f8 (f'8) f4-4\accent f,8 (f'8) f4\accent
    | \clef treble ees8\1-1\upbow (ees'-2) \breathe ees4\accent~\> 16 d-1 (c-\plus bes-2\!) a-1 (g-\plus f-4 ees-1) \break

    % line 6

    | d8-1 (d'-3) d4\accent~\> 16\! c-1\upbow (bes-3 a-2) g-\plus\downbow (f-3 ees-1 d)
    | \clef bass c16\upbow (bes a g f ees d c) des8-. bes-. g-. e-.
    | f16-.\p bes bes-. d-. d-. f-. f-.\accent g-. f-. bes-. bes-. d\2-\plus-. d-. f-1-. f-.\accent g-3-. \break

    % line 7


    | \clef treble f16-. bes-.-2 bes-. d-.-\plus d-. f-.-1 f-. g-.-\plus bes4-1 des-2
    | f,,8\2-2-.\f g16-\plus (a-1) bes-2-. c-. d!-. ees-. f4.\accent (a,8)
    | bes4\upbow des,2-2\p\downbow c8-4 (bes-1)
    | bes2 \acciaccatura bes16 \afterGrace a2 ( \trill { g16 a }
    | bes4\<) c8 (d f) ees\upbow \> ( \tuplet 3/2 { d8 ees c }) \! \break

    % line 8

    | \afterGrace bes2. ({ c16 bes a bes) } d8 (c)
    | bes4\downbow des'2\downbow\> c8 (bes)
    | bes2\! \acciaccatura bes16 \once \slurDown \afterGrace a2~ \trill { g16 a }
    | bes4\< (c8 d g-3\flageolet\>) ees-2\upbow (d-1 c-\plus)\!
    | g4~-\plus\flageolet (g16 a bes c) \afterGrace bes4\upbow ( {c32 bes a bes) } d8.\downbow (c16) \break

    % line 9

    | bes4\upbow \clef bass <<a,\f f'^\markup { \small "pizz." } >> <<d bes>> <<a f'>>
    \alternative {
      \volta 1 {
        | <<d bes>> r4 <<fis'\fz d,>> r4
        | R1
      }
      \volta 2 {
        <<bes'4 d>> r4 \clef treble <<d bes'\fz>> r4
      }
    }
  }
  | R1 \pageBreak

  % page 3 line 1

  | \clef bass r8 g,8\p^\markup { \small "pizz." } bes [ees] r8 aes, bes [d]
  | r8 g, [bes ees] g d, [ees f]
  | g8 g [bes ees] aes, aes [c ees]
  | r8 g, bes ees r ees, bes' ees \break

  % line 2

  | r8 f, c' ees r f, aes d
  | r8 g,,16\f\upbow (b\3 d\flageolet g\2-2 b\1-1 d-4) \clef treble g2~\downbow\>
  | g1~\p\upbow
  | g4 f8-4 (ees-1) des-1\upbow (f-4 g-2 aes-3)
  | \afterGrace c,2 ( { d!16 c b c) } ees4.\upbow (d8) \break

  % line 3

  | d1~
  | d4\< d'2.-2\upbow
  | ees4\downbow\> (d8 c) bes-3 (aes-1 g-\plus\flageolet f-4)\!
  | f8 (ees f-1 g-3) g4.\>\upbow (b,8-1) \break

  % line 4

  | \clef bass c16\p\1-2 (g\2-2) aes-.-4 g-.-2 \repeat unfold 3 { g (fis) aes-. g-. }
  | g8 (g'16) r g,8\flageolet (f'16) r g,8 (ees'16) r g,8 (d'16\2-2\flageolet) r \break

  % line 5

  | \clef treble c16-\plus\2 (g'-2) aes-3-. g-2-. \repeat unfold 3 { g (fis) a-. g-. }
  | g8 (g,16) r f'!8 (g,16) r ees'8 (g,16) r d'8 (g,16) r
  | c16\2-1\mf (b-\plus) d-.-3 c-. c16 (b) d-. c-. aes'2-3\accent\downbow \break

  % line 6

  | bes,16\2-1\upbow (a-\plus) c-.-3 bes-. bes16 (a) c-. bes-. g'2\accent\upbow
  | \clef bass aes,16\2-2\downbow (g-1) bes-4-. aes-. aes16 (g) bes-. aes-. f'-4_\crescM\downbow ees-2 d-1 c-2 b-1 aes!\2-4 g-2 f-4
  | ees!16-1\f\< c'-4 e, c' f, c' g\flageolet c-2 aes-4 c-2 bes!-1 c-\mii aes-4 c-2 g\flageolet c-2 \! \break

  % line 7

  | fis,8-1 r ees'2.~\fz\>
  | ees4\! ees2.~\p
  | ees4 ees2.~\accent\pp
  | ees1~ \tweak X-offset 6 \upbow
  | ees4 d8\downbow (ees) f\accent\upbow_\crescM (ees\! c aes) \break

  % line 8

  | aes8-2\downbow (g aes bes d\accent\flageolet) c-4\accent (aes-1 f\3-4)
  | ees16-1\mf (bes'\2-4) c-.-\miii bes-.-1 bes-1 (a!-\plus) c-.-3 bes-.-1 bes (a) c-. bes-. bes (a) c-.-2 bes-.-\mplus
  | \clef treble bes8-\plus\mf (bes'16-\miii) r bes,8-\plus (aes'16-3) r bes,8-\plus (g'16-3\flageolet) r bes,8-1 (f'16-4) r \pageBreak

  | % page 4 line 1

  | ees16-2\pp (bes) ces-. bes-. \repeat unfold 2 { bes (a) ces-. bes-. } bes (a) ces-.-1 bes-.-\plus
  | bes8 (bes'16) r bes,8 (aes'16) r bes,8-1 (ges'16-4) r bes,8 (f'16) r
  | ges1~
  | ges1\upbow (
  | g!1~\downbow_\crescM) \break

  % line 2

  | g1\!\upbow
  | \afterGrace a2-1\downbow ( { bes16 a g a) } bes4-2\upbow (g-\plus\flageolet)
  | d'2.-2\f ees8.-3 (d16)
  | d2. c16-1 (bes-\plus a\2-2 g-1)
  | d'2.\ff ees8. (d16)
  | d2. c16 (bes a g) \break

  % line 3

  | d'4 c16 (bes a g) d'4 c16 (bes a g)
  | d'1~-2\flageolet\fz\>
  | d1~ \tweak X-offset 4 \upbow
  | d2_\dimM\! \once \set fingeringOrientations = #'(left) <\parenthesize a' a,\harmonic-3 d,\harmonic\2-\plus>2\downbow
  | d,2\1-3\flageolet\upbow a2\2\flageolet\upbow
  | d,2\flageolet \clef bass a4. (fis8)
  | d1~ \break

  % line 4

  | \tuplet 3/2 { d8 fis,\tweak Y-offset 5 \upbow (a } \tuplet 3/2 { c ees! fis } \tuplet 3/2 { a) c\tenuto\downbow d\tenuto\upbow } ees4~-2\fp
  | ees1~\upbow
  | ees4 d (cis8-.) c\2-.\upbow^\rit (bes!-. a-.)
  | g2-1\pp\downbow^\atempo a4.-2\upbow (bes8)
  | g2~ g8 a (bes c)
  | d4.\accent (g,8) ees'4.\accent (g,8) \break

  % line 5

  | d'2 r8 \clef treble d8 (g ees)
  | d4 (cis c8) a' (g16 fis ees d)
  | c4 (bes) r8 bes8 (d g)
  | bes8\< aes g2 fis4
  | d'4.\> bes8\upbow (g8) \clef bass d-1 (bes-2 g\2-4) \break

  % line 6

  | c,16\pp\3-1 (ees-4 aes\2-4 c\1) ees2.~\downbow
  | ees2~ ees8\< \clef treble aes (c aes)
  | ees'2~\fp\downbow\> ees8 c (aes ees)\!
  | \afterGrace d2\downbow ({ ees16 d cis d) } bes'4.\upbow (a8)
  | g4 d'8\p (ees) ees\accent (d) fis, (a) \break

  % line 7

  | a8\accent (g) d (f) f\accent (ees) c (a)
  | g4 r r2
  | R1
  | r4 a'8-1\upbow (bes-2) bes\accent (a) cis, (e) \break

  % line 8

  | e8\accent (d) \clef bass a ([c]) c\accent (bes) g (e)
  | d4 r r2
  | R1 \pageBreak

  % page 5 line 1

  | r4 e'8-4\accent\downbow (a-1\flageolet_\crescM) f-4\accent\upbow (a-1\flageolet) e\accent (a)
  | f8\accent (a) r <<a,, cis' e\downbow>> r <<d f\downbow>> r <<a,, cis' e\downbow>>
  | r8 <<d f\downbow>> \clef treble a,-\plus\flageolet_\dimM\upbow ([a'-2\flageolet]) a, (a') a-.\pp\upbow~ a-.\upbow
  | d1~-2\flageolet
  | d4 r r \clef bass d,-1\upbow\f \break

  % line 2

  | ees?2~\downbow-1\> ees16\! ees (fis-4 ees) c\2-4 a-1 fis-1 ees-4
  | d4-2 r r \acciaccatura g16\upbow fis8.\trill (e32 fis)
  | g2~g16 \clef treble bes-2\< (d-1 bes) g'-\plus\flageolet d bes'-2 g d'2.-3\> c8-3\upbow (bes-1) \break

  % line 3

  | aes16\p-1\downbow (g-\plus\flageolet bes-3 aes-1 c-1 bes-\plus d-2 c-1) ees4-3\upbow g,-2\2\downbow
  | fis8-1\upbow (d'-3\flageolet bes-\plus g-2) fis-1 (d'-3\flageolet bes g)
  | fis8\upbow (d'-3\flageolet b_\decrescM-2 gis-\plus) e-1 (c'-3 a-1 fis!-3)
  | d-\plus\flageolet^\rit\upbow (b' g!-1\flageolet e-3) cis-\plus (a'-3 fis-\plus d-1\flageolet) \break

  % line 4

  | g16\1-1\pp\upbow^\atempo (fis-\plus a-3 g) \repeat unfold 2 { g (fis a g) } g\downbow (fis a g\flageolet)
  | e8\3-1\flageolet\upbow (e'16-2) r e4\accent e,8-1\flageolet (e'16-2) r e4\accent
  | fis,16\1-1\upbow (eis-\plus g-2 fis) \repeat unfold 3 { fis (eis g fis) } \break

  % line 5

  | d8-\plus\flageolet\upbow (d'16)-3\flageolet r d4\accent d,8-\plus (d'16) r d4\accent\flageolet-2
  | c16-1\upbow (b-\plus d-2 c-1 e-3 d-2 c-1 b-\plus) a-1\downbow \< (b-2 c-3 a-1 fis\2-3) d-\plus\upbow (e-1 c\3-2
  | \stemDown b16-.-1\3) d'\1-1\flageolet\p\downbow (e-2 d-1) d,-.\2-\plus\upbow d'\1-1\flageolet\downbow (e-2 d-1) \stemNeutral g,-.\2-\plus\upbow d'\1-1\downbow (e-2 d-1) b-.\2-2\upbow d-1\downbow (e-2 d-1) \break

  % line 6

  | c16\upbow_\crescM (b d c e d c b) a\downbow\< (b c a fis) d\upbow (e c
  | \stemDown b16-.) d'\p\downbow (e d) d,-. d'\downbow (e d) \stemNeutral g,-. d'\downbow (e d) b-. d\downbow (e d) \break

  % line 7

  | \clef bass e,,16\3-1\upbow_\crescM (fis-2 g-4\< fis g b\2 c b) \clef treble c\downbow (dis e dis) e-1\upbow (fis-4 g-\plus a-1)
  | bes2.-2\f\> a8-3 (g)\!
  | g2 \grace g32\upbow ( \afterGrace fis2-1\trill { e16-\plus fis) }
  | g4\< a8\upbow (b d\flageolet) c\>\downbow (\tuplet 3/2 { b8 c a }) \! \break

  % line 8

  | \afterGrace g2.\upbow ( { a16 g fis g)} b8. (a16)
  | \clef bass g,16\2-2\p\upbow (fis-1) a-.-4 g-. \repeat unfold 3  { g (fis) a-. g }
  | c,8 (e'16) r e4\accent e,8 (g'16) r g4\accent \pageBreak

  % page 6 line 1

  | \repeat unfold 4 { fis,16 (eis) g-. fis-. }
  | b,8\upbow (d') d4\accent d,8 (fis'-1) fis4\accent
  | \clef treble c8\f\2-\plus\upbow (c'16) r c4~\accent c16 b-3\upbow (a-1 g-\plus\flageolet) fis\2-3\downbow (e-1 d\2-3\flageolet c-1) \break

  % line 2

  | b8-\plus\upbow (b'16-3) r b4~\accent b16 a-1\upbow (g-\plus fis-4) e-1\downbow (d c b)
  | \clef bass a16\upbow (g fis e d c b a) g8 g' e cis
  | d16-.\p g,-.\4-2 g-. b-.\3-1 b-. d-.-1 d-.\accent e-.-4 d-. g-.\2-1 g-. b\2-4-. b-. d-.\1-1 d-.\accent e-. \break

  % line 3

  | \clef treble d16_\crescM\1-1 g-\plus\flageolet g b-3 b d-\plus d e-1 g4-1 bes!-2
  | d,,8-\plus\flageolet\f e16 (fis) g a b c d4.-3 (fis,8\1-1)
  | g4-2 bes!2\>\downbow a8-2\p (g-1)
  | g2 \grace g16 (\afterGrace fis2-1\trill { e16-\plus fis) }
  | g4\< (a8 b d-3\flageolet)\> c8-3 (\tuplet 3/2 { b8-2 c a}) \! \break

  %line 4

  | \afterGrace g2.-1 ( { a16 g fis-\plus g)} b8.-3\upbow (a16)
  | g4-\plus\flageolet \clef bass bes,2\2-2\fp\downbow a8-4\> (g-1)\!
  | g2 \grace g16 (\afterGrace fis2-2\trill { \stemDown e16 fis) } \stemNeutral
  | g4\< (a8 b e\>) c (b a)\!
  | e4~ (16 fis g a) \afterGrace g4 ({ a32 g fis g)} b8. (a16) \break

  % line 5

  | g4 r r \clef treble d''8.-2\p\upbow (ees!16)
  | ees4 (d) r fis,8.-1\upbow (a16-3)
  | a4 (g) r d8.-1\upbow\< (f!16-4)
  | f2~\> 8 (ees-1 c-1 a\2-4) \!
  | g2 r4 d'16-1\pp\upbow (ees d ees) \break

  % line 6

  | ees4 (d) r \clef bass fis,16-1\upbow (g fis a) a4-4 (g) r d16\flageolet\upbow\< (ees d f!)
  | f2~\> 8 ees (c a) \!
  | g2 r2
  | R1
  | r2 a'4_\dimM\upbow (d8-3\flageolet) r \break

  % line 7

  | bes4 (d8) r a4 (d8) r
  | g,,2~-1\f\>\downbow \tuplet 3/2 { 8 \once \override Fingering.extra-offset = #'(0.0 . 1.8) bes-2 (d-1} \tuplet 3/2 { g-1 bes-2 d-1) } \!
  | \clef treble g2-3\flageolet\downbow_\decrescM bes4-2\upbow (d-\plus\flageolet) \break

  % line 8

  | g1~-3\p\flageolet
  | g1~_\decrescM
  | g4 r\f \clef bass <<\acciaccatura <<d,,8-0 a'-2>> d4-2\flageolet fis-1>> r
  | <<\acciaccatura <<g,8-0 d'-3>> bes4_1 g'-4\flageolet>> r r2 \fine
}

mvtII = \relative {
  \numericTimeSignature
  \time 3/4
  \key d \major
  \clef treble
  \tempo "Adagio"
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override Fingering.avoid-slur = #'outside
  \compressMMRests R2.*3
  | a4\p d e
  | fis2.
  | a4 fis (d)
  | e2 ( \grace { d16 cis b )} a4
  | a4 d e
  | fis2.\< \break

  % line 2

  | ais4\> (b8) g (fis e) \!
  | d2.
  | e4-. e4-. e4-.
  | \tuplet 3/2 { e8 (f g) } f2
  | g4\< (a) c8\> (bes) \!
  | a2.
  | e4-.\pp (e4-. e4-.)
  | \tuplet 3/2 { e8 (f g) } f2 \break

  % line 3

  | f8 (bes) f4 g
  | a4. g8 ( \tuplet 3/2 { e) cis (b) }
  | a4\mf d e
  | fis2.
  | a4 fis (d)
  | e2 ( \grace { d16 cis b )} a4
  | a4\p (d\tenuto e\tenuto)
  | fis2._\crescM \break
  | fis2.
  | fis4.\f\> gis8 (ais b) \!
  | ais8 ( \once \override TupletBracket.bracket-visibility = ##f \tuplet 3/2 { gis16 e cis) } b4\p (cis)
  | dis2.
  | fis2.
  | fis2\< a8 (d)
  | cis16\> (b g e) a4. (cis,8) \!
  | d2. \break

  % line 4

  | \clef bass f,4\p (g a)
  | bes4..\accent (a16 g4_\crescM)
  | bes4..\accent (a16 g4)
  | b?2.~\fp\>
  | b4 \! a (gis
  | a8) d, (fis a) \tuplet 3/2 { d\> (e fis) } \!
  | fis8.\> (e16) \! d4 (cis)
  | d2. \break

  % line 5

  | f,4\p (g a)
  | g4.._\crescM (a16 bes4)
  | a4.. (g16 f4)
  | d'2.~\fp\>
  | d4 e-. (f-.) \!
  | a,,8\< (d) fis! (a) \clef treble \tuplet 3/2 { d fis! (a)}
  | a8.\> (g16) \afterGrace fis4 ( { g32 fis e fis) } g8. (e16) \! \break

  % line 6

  | d2.~
  | d2.
  | ees2.
  | bes'2.~
  | bes2.~
  | bes4 a8 (g16) r f8 (ees16) r
  | d2.
  | a2.
  | \clef bass d,2.~\pp
  | d2. \break

  % page 8 line 1

  | ees2.
  | bes'2.~
  | bes2.~
  | bes2.~
  | bes2.~
  | bes4 a8 (g16) r e8 (bes16) r
  | a2.~
  | \afterGrace a4 ({ bes32 a gis a) } bes!4. (a8) \break

  % line2

  | d2.~
  | d8 fis, (a d fis a)
  | \clef treble d8 (cis e d) g (fis
  | b) a (e' d) cis (c)
  | a8-.^\rit (fis-.) ees-. d-. \tuplet 3/2 { cis!8 (c a_\markup { \tiny \italic "attacca" }) }
  \bar "||" \clef bass \time 2/4 s

}

mvtIII = \relative {
  \numericTimeSignature
  \time 2/4
  \key g \major
  \clef bass
  \tempo "Allegretto"
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override Fingering.avoid-slur = #'outside
  g4.\accent\p (a8)
  | b4.\accent (g8)
  | a4.\accent (d8)
  | d4.\accent (b8)
  | e4.\accent (cis8)
  | d4.\accent (b8)
  | a8 [(g a \acciaccatura c8 b)]
  | a4. (d,8)
  | g4.\accent (a8) \break

  % line 4

  | b4.\accent (g8)
  | a4.\accent (d8)
  | d4.\accent (b8)
  | g'4._\crescM (fis8)
  | g4.\> (fis8)
  | e8\pp (dis e \acciaccatura g8 fis)
  | e2
  \repeat volta 2 {
    | f4. (gis,8)
    | f'4.\< a,16 (c
    | e8\> [d bes g]) \! \break

    % line 5
    | a2
    | \clef treble a'4. (c,8)
    | a'4.\< (cis,8)
    | a'8\> ([fis e fis]) \!
    | d2
    | e4.\accent (b16 f')
    | e4.\accent (c'8)
    | d,4.\accent (a16 e')
    | e4.\accent (b'8)
    | g4.\< (d'8) \break

    % line 6

    | \clef bass g,,4.\> (e'8)
    | a,2~\p
    | a8 [b (c a)]
    | g4. (a8)
    | b4. (g8)
    | a4. (d8)
    | d4. (b8)
    | g'4.\< (bes,8)
    | g'4.\! b,16\> (d
    | fis8 [e c a]) \! \break

    % line 7

    | g2
  }
  | a8\p [(g a \acciaccatura c8 b)]
  | a4. (g8)
  | a8 [(g a \acciaccatura c8 b)]
  | g4. (b8)
  | a8\pp [(g a \acciaccatura c8 b)] \break

  % line 8

  | a4. (g8)
  | a8\pp [(g a \acciaccatura c8 b)]
  | g2~
  | g2~
  | g2
  | g'8\fz r r4 \break

  % page 9 line 1

  | r4 r8 g,8
  \bar "||" \key c \minor c16\mf (g) c-. ees-. c16 (g) c-. ees-.
  | c16 (g) c-. ees-. c16 (g) c-. ees-.
  | d16 (g,) d' (g) g-. g-. g-. g-.
  | g4.\accent ees8
  | c16 (g) c-. ees-. c16 (g) c-. ees-. \break

  % line 2

  | c16 (g) c-. ees-. c16 (g) c-. ees-.
  | \clef treble ees16 (d) d-. d-. d-. d-. fis-. a-.
  | g4. d'8 ( \>
  | cis16 d c d bes c a bes) \!
  | g4 (g'8) d\pp (
  | cis16) d-. c-. d-. bes-. c-. a-. bes-. \break

  % line 3

  | g4.\< \clef bass g,8\>
  | c16\mf (g) c-. ees-. c16 (g) c-. ees-.
  | c16 (g) c-. ees-. c16 (g) c-. ees-.
  | d16 (g,) d' (g) g-. g-. g-. g-.
  | g4.\accent ees8
  | c16 (g) c-. ees-. c16 (g) c-. ees-. \break

  % line 4

  | c16 (g) c-. ees-. c16 (g) c-. ees-.
  | ees8\p [(bes\<) g bes]
  | \clef treble ees8\> [(g) c8. (bes16)] \!
  | aes8 [(f) c d]
  | ees4. (bes8)
  | a16 (bes) d-. f-. aes (bes) c-. bes
  | bes4. g8 \break

  % line 5

  | aes!16 (f) d-. bes-. \clef bass a (bes) f-. aes-.
  | g4. bes8
  | \clef treble a16 (bes) d-. f-. aes (bes) c-. bes-.
  | bes4. g8
  | aes!16 (f) d-. bes-. \clef bass a (bes) f-. g-.
  | ees4. g8 (
  | f'4.\accent) g,8 ( \break

  % line 6

  | ees'4.\accent) g,8 (
  | d'8) \clef treble g16 (aes g8) g-.
  | d'8\accent [(g,) g-. g-.]
  | f4.\accent g,8 (
  | ees'4.) g,8 (
  | d'8) \clef bass g,16 ([aes] g8) g-.
  | d8\accent [(g) g-. g-.]
  | g16 (d) g_\crescM-. a-. b (g) b-. c-. \break

  % line 7

  | d16-.\< g,-. d'-. ees-. \clef treble f-.\> g-. a-. b-.
  | c16\p (g,) c-. ees-. c (g) c-. ees-.
  | c16 (g) c-. ees-. c (g) c-. ees-.
  | d (g,) d' (g) g-. g-. g-. g-.
  | g4.\> ees8 \! \break

  % line 8

  | \repeat unfold 2 { c16 (g) c-. ees-. c (g) c-. ees-. }
  | aes16 (g) g-. g-. aes (g) b-. d-.
  | c4. g8 (
  | fis16\> g f g ees f d ees) \!
  | \autoBeamOff c4 (c'8) g ( \break

  % page 10 line 1

  | \autoBeamOn fis16\pp) g-. f-. g-. ees-. f-. d-. ees-.
  | c4. g8 (
  | f'4.\accent) g,8 (
  | ees'4.\accent) g,8 (
  | d'8) g16 ([aes] g8) g-.
  | d'8\accent [(g,) g-. g-.]
  | f4.\accent g,8 (
  | ees'4.) g,8 ( \break

  % line 2

  | d'8) \clef bass g,16 ([aes] g8) g-.
  | d8\accent [(g) g-. g-.]
  | c4.\accent\pp d,8 (
  | bes'4.\accent) d,8 (
  | a'8) \clef treble d16 ([ees] d8) d-.
  | a'8\accent [(d,) d-. d-.]
  | c'4.\accent d,8 (
  | bes'4.\accent) d,8 (
  | a'2)~ \break

  % line 3

  | \afterGrace a4 ({ bes32 a g a) } bes8 (g)
  | fis8 [(a) a-. a-.]
  | a8-. [a-. a-. a-.]
  | a2~
  | a8 g'^\rit e cis
  | d2~
  | d4. d,8 (
  | c'4.)^\atempo d,8 (
  | bes'4.) d,8 (
  | a'4) \clef bass d,,4~ \break

  % line 4

  | d4. d8 (
  | c'4.) d,8 (
  | bes'4.) d,8 (
  | a'2~
  | a8) [bes8-. (a-. fis-.)]
  | d8-.^\rit [(e-.) fis-. g-.]
  | a8-. [(ais-.) b-. (d-.)]
  \bar "||" \key g \major g,4.\p\accent^\atempo (a8)
  | b4.\accent (g8)
  | a4.\accent (d8) \break

  % line 5

  | d4.\accent (b8)
  | e4.\accent (cis8)
  | d4.\accent (b8)
  | a8 [(g a \acciaccatura c8 b)]
  | a4. (d,8)
  | g4.\accent (a8)
  | b4.\accent (g8)
  | a4.\accent (d8)
  | d4.\accent (b8)
  | \clef treble g'4._\crescM (fis8) \break

  % line 6

  | g4.\> (fis8)
  | e\pp [(dis e \acciaccatura g fis)]
  | e2
  | f4. (gis,8)
  | f'4.\< a,16 (c\!
  | e8\> [d bes g)] \!
  | a2
  | a'4. (c,!8)
  | a'4.\< (cis,8)
  | a'8\> ([fis] e g16 fis) \! \break

  % line 7

  | d2
  | e4.\accent (b16 f')
  | e4.\accent (c'8)
  | d,4.\accent (a16 e')
  | d4.\accent (b'8)
  | g4.\< (d8)
  | g,4.\> (e'8) \!
  | a,2~ (
  | a8 [b c a])
  | g4.\p (a8)
  | b4. (g8) \break

  % line 8

  | a4. (d8)
  | d4. (b8)
  | g'4. (bes,8)
  | g'4.\< (b,16 d)
  | fis4~\> (fis16 e c a) \!
  | \clef bass g2
  | a8\p [(g a \acciaccatura c b)]
  | a4. (g8) \break

  % line 9

  | a8 [(g a \acciaccatura c b)]
  | g4. (\clef treble b'8)
  | a8\pp [(g a \acciaccatura c b)]
  | a4. (g8)
  | a8\pp [(g a \acciaccatura c b)]
  | g2~
  | g2~
  | g2
  | g'8\fz r r4 \break

  % page 11 line 1 (in Sankey, this is mm 283, top of page 6)

  | r4 r8 fis,16\p (g)
  | a8.\accent (fis16) d (a d fis)
  | a4.\accent fis16 (d)
  | a8\pp [(e') a, (g')]
  | fis4. fis16 (g)
  | a8.\accent (fis16) d (a d fis)
  | a8\accent (d4) fis8
  | \clef bass a,,8.\pp (b16 a) g' (fis e)
  | d4~ 16 (a' fis d) \break

  % line 2

  | cis16 (e) b (e) a, (e') g, (e')
  | fis,8 (a~16 a' fis d)
  | cis16 (e) b (e) a, (e') g, (e')
  | fis,8 (a8.) \clef treble a'16 (fis d)
  | b8 (d'8.) \clef bass d,16 (b g
  | e8) g'8. \clef treble  g16 (e cis
  | a8) cis'8. \clef bass cis,16 (a fis \break

  % line 3

  | d8) \clef bass fis'8. fis16 (d b
  | g8) \clef treble b'4.~_\crescM
  | b8 ais\> (b cis)
  | ais2\pp~
  | ais (
  | a2)~
  | a8 [a_\crescM (b cis]
  | d8) [fis,\< (g a]
  | b8) [d, e (fis)]
  | g2~ (\f\>
  | g2~
  | g4\p f) \break

  % line 4

  | \afterGrace e4 ({ f32 e d e) } bes'8 (a)
  | \repeat volta 2 {
    \clef bass d,8.\accent\p (a16) fis (a d fis)
    | d8.\accent (a16) fis (a d fis)
    | fis8\< (e16) r fis8 (e16) r \!
    | fis8 (e16) r \acciaccatura e8 g8\fp\accent (cis,16) r
    | d8.\accent (a16) fis (a d fis)
    | d8.\accent (a16) fis (a d e) \break

    % line 5

    | fis8 (e16) r fis8 (e16) r
    | fis8 (e16) r \acciaccatura e8 g8\accent (cis,16) r
    | \clef treble d16 (fis) e-. d-. cis (a') g-. e-.
    | d16 (fis) e-. d-. cis (a') g-. e-.
    | d (fis) e-. d-. cis (fis) e-. cis-.
    | b16_\crescM (d) cis-. b-. a (d) a-. fis-. \break

    % line 6

    | g16 b' a-. g-. g (b) a-. g-.
    | g16 (b) a-. g-. g (b) a-. b-.
    | g4\f\> e'~
    | e8\> e, (fis g)
    | fis4 (aes)
    | b4\< c~ \!
    | c8 b\> (a g)
    | \afterGrace fis4\! ( { g32 fis e fis) } a8 (cis,)
  } \break

  % line 7

  | d4~16\pp (fis e d)
  | cis16 (d cis d cis d fis a)
  | a4 b,8 (b')
  | b4 a8 (g)
  | eis4 (fis16) fis (e d)
  | cis16 (d cis d) cis (d fis a)
  | a4 b,8 (d')
  | d2\f\> (
  | gis,4) r\!
  | f2\pp (
  | gis,4) r \break

  % line 8

  | a4\p (b)
  | a4\< (d)
  | \afterGrace e4 ( {fis32 e d fis) } g8\> (fis)
  | d4 r \!
  | \clef bass r8^\markup { \small "pizz." } g,8-. [bes-. ees-.]
  | r8 a, [c ees]
  | r8 fis, [a d]
  | r8 g, [bes d]
  | r8 e, [g cis]
  | r8 ees, [g c!]
  | r8 d, [g b!]
  | r8 d, [g bes] \break

  % line 9

  | r8 c, [ees a]
  | r8 ees [a c]
  | r8 d, [g bes]
  | r8 d, [fis a]
  | d,8 g [bes ees]
  | d,8 a' [c ees]
  | d,8 fis [a d]
  | d,8 g [bes d]
  | e,8 g [cis e]
  | ees,8 g [c ees] \break

  % line 10

  | d,8  g [b d]
  | d,8 g [bes d]
  | c,8 ees [a c]
  | c,8 ees [a c]
  | d,8 d [g bes]
  | d,8 d [fis a]
  | \key g \minor g16\p^\markup { \small "arco" } (d) g-. bes-. g (d) g-. bes-.
  | \repeat unfold 2 { g (d) g-. bes-. } \break

  % line 11

  | a16 (d,) a' (d) \clef treble d-. d-. d-. d-.
  | d4.\accent (bes'8)
  | g16-\plus (d) g-. bes g16 (d) g-. bes
  | \repeat unfold 2 { g16 (d) g-. bes }
  | b16 (a) a-. a-. a-. a-. cis-. e-.
  | d4. a8\> (
  | gis16 a g a fis g e f) \! \break % really we want the next line on this page, too

  % line 12

  | \autoBeamOff d4 (d'8) a (
  | \autoBeamOn gis16\pp) a-. g-. a-. f-. g-. e-. f-.
  | d4. \clef bass d,8
  | g16\mf (d) g-. bes-. g (d) g-. bes-.
  | \repeat unfold 2 { g (d) g-. bes-. }
  | a (d,) a' (d) \clef treble d-. d-. d-. d-.
  | d4.\accent (bes'8) \break % really we want this to be the page break

  % page 12 line 1

  | \repeat unfold 4 { g16 (d) g-. bes-. }
  | bes8\< [(f) d f] \!
  | b8\> [(d) g8. (f16)] \!
  | ees8 [(c) g a]
  | b4. \clef bass f,8
  | e16\pp (f) a-. c-. \clef treble ees (f) g-. f-.
  | f4. d'8 \break

  % line 2

  | ees16 (c) a-. f-. e (f) c-. ees-.
  | d4. \clef bass f,8
  | e16 (f) a-. c-. \clef treble ees (f) g-. f-.
  | f4. d'8
  | ees16 (c) a-. f-. e (f) c-. d-.
  | bes4. d8\p (
  | c'4.\accent) d,8 (
  | bes'4.\accent) d,8 ( \break

  % line 3

  | a'8) d,16 (ees d8) d-.
  | a'8\accent [(d,) d-. d-.]
  | c4.\accent\pp \clef bass d,8 (
  | bes'4.) d,8 (
  | a'8) d,16 (ees d8) d-.
  | a8\accent [(d) d-. d-.]
  | d16\fz a d e fis (d) fis-. g-.
  | a16 (d,) a'-. bes-. \clef treble c-. d-. e-. fis-. \break

  % line 4

  | g16\p (d) g-. bes-. g16 (d) g-. bes-.
  | \repeat unfold 2 { g16 (d) g-. bes-. }
  | a16 (d, a' d) d-. d-. d-. d-.
  | d4.\accent bes8
  | \repeat unfold 4 { g16 (d) g-. bes-. }
  | ees,16 (d) d-. d-. ees (d) fis-. a-. \break

  % line 5

  | g4. d'8 (
  | cis16 d\> c d bes c a bes) \!
  | \autoBeamOff g4 (g'8) d8 (
  | \autoBeamOn cis16\pp) d-. c-. d-. bes-. c-. a-. bes-.
  | g4. \clef bass d,8\p (
  | c'4.) d,8 (
  | bes'4.) d,8 (
  | a'8) \clef treble d16 ([ees] d8) d-.
  | a'8\accent [(d,) d-. d-.] \break

  % line 6

  | c'4.\pp\accent d,8 (
  | bes'4.\accent) d,8 ( \(
  | a'2~)
  | \afterGrace a4 { bes32 (a g a)} bes8 g\)
  | fis8 [(a) a-. a-.]
  | a8-. [a8-. a8-. a8-.]
  | a2~\<
  | a8\> g' e\> cis \!
  | d2~^\rit
  | d4. d,8 (
  | c'4.^\atempo) d,8 (
  | bes'4.) d,8 ( \break

  % line 7

  | a'4) \clef bass d,,4~
  | d4. d8 (
  | c'4.) d,8 (
  | bes'4.) d,8 (
  | a'2~
  | a8) [bes-. (a-. fis-.^\rit)]
  | d8 [(e) fis-. g-.]
  | a8 [(ais) b-. d-.]
  | \key g \major g,4.^\atempo\accent (a8)
  | b4.\accent (g8)
  | a4.\accent (d8)
  | d4.\accent (b8)
  | e4.\accent (cis8) \break

  % line 8

  | d4.\accent (b8)
  | a8 [(g a \acciaccatura c8 b)]
  | a4. (d,8)
  | g4. (a8)
  | b4. (gis8)
  | a4. (d8)
  | d4._\crescM (b8)
  | \clef treble g'4.\> (fis8)
  | g4. (f8)
  | e8\pp (dis e \acciaccatura g8 f)
  | e2 \break

  % line 9

  | f4.\p (gis,8)
  | f'4.\< a,16 (c
  | e4~\>16 d bes g) \!
  | a2
  | a'4. (c,8)
  | a'4.\< (cis,16 a')
  | a8\> [(fis e fis)] \!
  | d2
  | e4.\accent (b16 f')
  | e4.\accent (c'8) \break

  % line 10

  | d4.\accent (a,16 e')
  | d4. (b'8)
  | g4. (d8)
  | \clef bass g,4._\crescM (e'8)\>
  | a,2~
  | a8\p [b (c a)]
  | g4.\accent (a8)
  | b4.\accent (g8)
  | a4.\accent (d8)
  | d4.\accent (b8) \break

  % line 11

  | g'4.\accent (bes,8)
  | g'4.\< (b,!16 d)
  | fis4~\> (16 e c a) \!
  | g2
  | a8\p [(g a \acciaccatura c8 b)]
  | a4._\decrescM (g8)
  | a8 [(g a \acciaccatura c8 b)]
  | g4. (b8)
  | a8 [(g a \acciaccatura c8 b)] \break

  % line 12

  | a4. (g8)
  | a8 [(g a \acciaccatura c8 b)]
  | g2~
  | g16 d (b d g d b' g)
  | \clef treble d'16_\dimM (b g' d b' g d' b)
  | g'2~
  | g2~
  | g4 r
  | <b, d, g,>4\arpeggio \ff  r
  | \clef bass \arpeggioArrowUp <g, d b g>4\arpeggio^\markup { \small "pizz." }\p  r \fine

}

\book {
  \score {
    \header {
      piece = "I."
    }
    \mvtI
  }

  \pageBreak

  \score {
    \header {
      piece = "II."
    }
    \mvtII
  }

  \score {
    \header {
      piece = "III."
    }
    \mvtIII
  }

}
