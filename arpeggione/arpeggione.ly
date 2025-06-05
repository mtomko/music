\version "2.24.3"

% dynamics
crescM = \markup { \small \italic "cresc." }
dimM = \markup { \small \italic "dim." }
decrescM = \markup { \small \italic "decresc." }

rit = \markup { \small \italic "rit." }

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
  %\tempo "Allegro moderato"
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override Fingering.avoid-slur = #'outside

  \repeat volta 2 {
    \compressMMRests R1*9
    g2\mf\upbow \(a4. (bes8)\)
    | g2~ g8 a\1 (bes c)
    | d4. (g,8) ees'4. (g,8)
    | d'2-2 \clef treble r8 d8\upbow (g ees-4) \break

    % line 2

    | d4-4 (cis-2 c8-1) a'-3 (g16-1 fis-\plus ees\2-2 d-1)
    | c4-4_\markup { \small \italic "non dim." } (bes) r8 bes (d-\plus\flageolet [g])
    | bes8-3\< aes-1\upbow g2-\mi fis4-\plus
    | d'4.\> bes8-2\upbow (g-\plus) \clef bass d\2-3\downbow (bes-\mi) g-4\upbow (
    | c,4\4-1\pp) \clef treble ees'2.-1~\downbow \break

    % line 3

    | ees2~\< ees8 aes-\plus (c-3 aes)
    | ees'2-3~\fp\> ees8 c-1 (aes-\plus ees-4)
    | \afterGrace d2\! ({ ees16 d cis d) } bes'4.-2 (a?8-1)
    | g4-\plus\flageolet d'8-2\p (ees\accent) ees (d) fis,-\plus (a-3)
    | a8\accent (g) d-1 (f!-4) f-4\accent (ees-2) c-1-. (a-4-.) \break

    % line 4

    | g4-1 d''16-2\pp (ees d ees) ees8\accent (d) fis,16-\plus (g fis a)
    | a8\accent (g) d16-1 (ees d f!) f8\accent (ees) c-. (a-.)
    | g8-1 (d') a-1_\crescM (d) bes-2 (d) a (d)
    | bes8 (d-\plus\flageolet) a'-1 (d,) bes'-2 (d,) a' (d,) \break

    % line 5

    | bes'8 (d,) d'\flageolet_\dimM (d,) d' (d,) d'-.\upbow d-.\upbow
    | g1~\!-3\flageolet\pp\>
    | g4 r4\! r \clef bass g,,4\2-1\f\upbow
    | a2-4~ a16 c\1-1\upbow (ees c) a\2\downbow f c\3-. a-.
    | f4 r r a'8.\trill (g32 a) \break

    % line 6

    | bes2~ bes16 f (d f) bes f d' bes \clef treble
    | f'2.-4 ees8-2 (d-1)
    | c16-2\p (b d c ees d f ees) g4-\plus\flageolet\upbow bes-2\accent\downbow (
    | a8) f (e) bes' (a) f\< (e) bes' ( \break

    % line 7

    | a8 f) d \! (g) g\> (ees) c (f)
    | f8 (d) \! \clef bass bes16\2-1_\decrescM (c-4 bes ees) ees8 (c) a16-1 (bes-2 a d)
    | d8 (bes) fis (bes) g8\downbow^\markup { \tiny rit. } (bes) \tuplet 3/2 { a8-1\upbow g'-3\flageolet (f-1) }  \break

    % line 8

    | bes,16-2\upbow\pp^\markup { \tiny "a tempo" } (a c bes) \repeat unfold 3 { bes (a c bes) }
    | g8\flageolet\upbow(g'-3\flageolet) g4\accent\downbow g,8 (g') g4\accent \pageBreak

    % page 2 line 1

    | a,16\upbow (gis bes a) \repeat unfold 3 { a16 (gis bes a) }
    | f8\upbow (f') f4\accent f,8 (f') f4\accent
    | ees16-2\upbow (d-1 f-4 ees-1 g-3_\crescM f-1 ees-2 d-1) c-1\downbow (d ees c a) f\upbow (g ees \break

    % line 2

    | d16-.\parenthesize\upbow) f'-1\downbow\p (g-3 f) f,\3\plus-.\upbow f' (g f) d\2-\plus f-. (g f) d-3\flageolet-. f (g f)
    | ees16-2\upbow (d-1 f-4 ees-1 g-3_\crescM f-1 ees-2 d-1) c-1\downbow (d ees c a) f\upbow (g ees
    | d16-.) f'-1\downbow\p (g-3 f) f,\plus-.\upbow f' (g f) d-\plus f-. (g f) d-3\flageolet-. f (g f) \break

    % line 3

    | g,16\upbow (fis g a) bes (a bes d) \clef treble ees-2\upbow\< (d ees-1 fis-4 g-\plus a-1 bes-2 c-1)
    | des2.-2\f\> c8-3 (bes-1)
    | bes2\p \acciaccatura bes16 \once \slurDown \afterGrace a2-1~ ( \trill { g16 a }
    | bes8) bes,-1\< (c-4 d-1) f-4\> (ees-2) \tuplet 3/2 { d8 (ees c) } \! \break

    % line 4

    | \afterGrace bes2.\upbow ({ c16 bes a bes) } d8 (c)
    | bes16\pp\upbow (a) c-. bes-. \repeat unfold 3 { bes16 (a) c-. bes-. }
    | g8 (g') g4\accent g,8 (g') g4\accent \break

    % line 5

    | \repeat unfold 4 { a,16 (gis) bes-. a-. }
    | f8 (f'8) f4-4\accent f,8 (f'8) f4\accent
    | ees8\1-1\upbow (ees'-2) \breathe ees4\accent~\> 16 d-1 (c-\plus bes-2\!) a-1 (g-\plus f-4 ees-2) \break

    % line 6

    | d8-1 (d'-3) d4\accent~\> 16\! c-1 (bes-3 a-2) g-\plus (f-3 ees-1 d)
    | \clef bass c16 (bes a g f ees d c) des8-. bes-. g-. e-.
    | f16-.\p bes-3 bes-. d-. d-. f-. f-.\accent g-. f-. bes-. bes-. d\2-\plus-. d-. f-1-. f-.\accent g-3-. \break

    % line 7


    | \clef treble f16-. bes-.-2 bes-. d-.-\plus d-. f-.-1 f-. g-.-\plus bes4-1 des-2
    | f,,8\2-2-.\f g16-\plus-. (a-1-.) bes-2-. c-. d!-. ees-. f4.\accent (a,8)
    | bes4\upbow des,2-2\p\downbow c8-4 (bes-1)
    | bes2 \acciaccatura bes16 \afterGrace a2~ ( \trill { g16 a }
    | bes4\<) c8 (d f) ees\upbow \> ( \tuplet 3/2 { d8 ees c }) \! \break

    % line 8

    | \afterGrace bes2. ({ c16 bes a bes) } d8 (c)
    | bes4\downbow des'2\downbow\> c8 (bes)
    | bes2\! \acciaccatura bes16 \once \slurDown \afterGrace a2~ ( \trill { g16 a }
    | bes4)\< c8 (d g-3\flageolet\>) ees-2 (d-1 c-\plus)\!
    | g4~-\plus\flageolet (g16 a bes c) \afterGrace bes4 ( {c16 bes a bes) } d8.\downbow (c16) \break

    % line 9

    | bes4\upbow \clef bass <<a,\f f'^\markup { \small "pizz." } >> <<d bes>> <<a f'>>
    \alternative {
      \volta 1 {
        | <<bes, f'>> r4 <<fis,\fz a d>> r4
        | R1
      }
      \volta 2 {
        <<bes4 d>> r4 \clef treble <<d bes'\fz>> r4
      }
    }
  }
  | R1 \pageBreak

  % page 3 line 1

  | \clef bass r8 g,8\p^\markup { \small "pizz." } bes [ees] r8 aes, bes [d]
  | r8 g, bes [ees] g d, ees f
  | g8 g bes ees aes, aes c ees
  | r8 g, bes [ees] r ees, bes' [ees] \break

  % line 2

  | r8 f, c' [ees] r f, aes [d]
  | r8 g,,16\f\upbow (b\3 d\flageolet g\2-2 b\1-1 d-4) \clef treble g2~\downbow\>
  | g1~\p\upbow
  | g4 (f8-1\downbow ees-4) des-1\upbow (f g aes)
  | \afterGrace c,2 ( { d!16 c b c) } ees4.\upbow (d8) \break

  % line 3

  | d1~
  | d4\< d'2.-2\upbow
  | ees4\downbow\> (d8 c) bes-3 (aes-1 g-\plus\flageolet f-4)\!
  | f8 (ees f-1 g-3) g4.\>\upbow (b,8-1) \break

  % line 4

  | \clef bass c16\p (g) aes-. g-. \repeat unfold 3 { g (fis) aes-. g-. }
  | g8 (g'16) r g,8\flageolet (f'16) r g,8 (ees'16) r g,8 (d'16\2-1) r \break

  % line 5

  | \clef treble c16-1_\plus\2 (g'-\mii) aes-3-. g-1-. \repeat unfold 3 { g (fis) a-. g-. }
  | g8 (g,16) r f'!8 (g,16) r ees'8 (g,16) r d'8 (g,16) r
  | c16\2-1\mf (b-\plus) d-.-3 c-. c16 (b) d-. c-. aes'2-3\accent \break

  % line 6

  | bes,16\2-1\downbow (a-\plus) c-.-3 bes-. bes16 (a) c-. bes-. g'2\accent
  | \clef bass aes,16\2-2\downbow (g-1) bes-4-. aes-. aes16 (g) bes-. aes-. f'-4_\crescM ees-1 d c b\2 aes! g f
  | ees16\f\< c' e, c' f, c' g\flageolet c-4 aes-1 c-4 bes!-1 c-2 aes-4 c-2 g\flageolet c-2 \! \break

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

  | ees16-2\pp (bes) ces-. bes-. \repeat unfold 3 { bes (a) ces-. bes-. }
  | bes8 (bes'16) r bes,8 (aes'16) r bes,8-1 (ges'16-4) r bes,8 (f'16) r
  | ges1~
  | ges1\upbow (
  | g!1~\downbow_\crescM) \break

  % line 2

  | g1\!\upbow
  | \afterGrace a2-1\downbow ( { bes16 a g a) } bes4-2\upbow (g-\plus\flageolet)
  | d'2.-2\f ees8.-3 (d16)
  | d2. c16-1 (bes-\plus a\2-3 g-1)
  | d'2.\ff ees8. (d16)
  | d2. c16 (bes a g) \break

  % line 3

  | d'4 c16 (bes a g) d'4 c16 (bes a g)
  | d'1~-2\flageolet\fz\>
  | d1~ \tweak X-offset 4 \upbow
  | d2_\dimM\! \once \set fingeringOrientations = #'(left) <\parenthesize a' a,\harmonic-3 d,\harmonic\2-\plus>2\downbow
  | d,2\1-3\flageolet\upbow a2\2\flageolet
  | d,2\flageolet\upbow \clef bass a4.\downbow fis8
  | d1~\upbow \break

  % line 4

  | \tuplet 3/2 { d8 fis,-.\tweak Y-offset 4.5 \downbow (a-. } \tuplet 3/2 { c-.) ees!-. (fis-3 } \tuplet 3/2 { a-.) c-.\upbow (d-.\upbow) } ees4~-2\fp\downbow
  | ees1~
  | ees4 d-. cis8-. c\2-.\upbow^\markup { \small "rit." } (bes-. a-.)
  | g2-1\downbow^\markup { \small "a tempo" } a4.-2\upbow (bes8)
  | g2~ g8 a (bes c)
  | d4.\accent (g,8) ees'4.\accent (g,8) \break

  % line 5

  | d'2 r8 \clef treble d8 (g ees)
  | d4 (cis c8) a' (g16 fis ees d)
  | c4 (bes) r8 bes8 (d [g])
  | bes8\downbow\< (aes\upbow g2 fis4\upbow)
  | d'4.\> bes8\upbow (\clef bass g8 d bes g) \break

  % line 6

  | c,16\pp (ees aes c ees2.~ \tweak X-offset 6 \upbow
  | ees2~\< ees8) \clef treble aes\upbow c\downbow aes\upbow
  | ees'2~\fp\downbow\> ees8 c (aes ees)\!
  | \afterGrace d2\downbow ({ ees16 d cis d) } bes'4.\upbow (a8)
  | g4 d'8\p (ees) ees\accent (d) fis, (a) \break

  % line 7

  | a8\accent (g) d (f) f\accent (ees) c\2-4 (a-\miv)
  | g4-1 r r2
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

  | ees?2~\downbow\> ees16\! ees (fis ees) c\2-4 a-4 fis-1 ees\3-4
  | d4-2 r r \acciaccatura g16 fis8.\trill\upbow (e32 fis)
  | g2~g16 \clef treble bes-2\< (d-1 bes) g'-\plus d bes'-2 g\flageolet d'2.-3\> c8-3 (bes-1) \break

  % line 3

  | aes16\p-1 (g-\plus\flageolet bes-3 aes-1 c-1 bes-\plus d-3 c-1) ees4-3\upbow g,-2\flageolet (
  | fis8\2-1) d'-3\flageolet (bes-\plus) g-2 (fis-1) d'-3\flageolet (bes) g (
  | fis8) d'-3\flageolet (b_\decrescM-3) gis-\plus (e-1) c'-3 (a-\mi) fis!-3 (
  | d-\plus\flageolet)^\markup { "ritard." } b' (g!-1\flageolet) e-3 (cis-\plus) a'-3\upbow (fis-\plus) d-1\flageolet\downbow \break

  % line 4

  | g16\1-1\pp\upbow^\markup { "a tempo" } (fis-\plus a-3 g) \repeat unfold 3 { g (fis a g) }
  | e8\2-\plus (e'16-3) r e4\accent\downbow e,8-1\flageolet (e'16-3) r e4\accent
  | fis,16\1-1 (eis-\plus g-2 fis) \repeat unfold 3 { fis (eis g fis) } \break

  % line 5

  | d8-2\flageolet (d'16)-3\flageolet r d4\accent d,8-\plus (d'16) r d4\accent
  | c16-1\downbow (b-\plus d-3 c-1 e-3 d-2 c-1 b-\plus) a-1\upbow (b-\mii c-3 a-\mi fis\2-3 d-\plus e-1 c\3-2)
  | \stemDown b16-.\p-\3\plus d'\1-1 (e-3 d-1) d,-.\3-\plus d'\1-1 (e-3 d-1) \stemNeutral g,-.\2-\plus d'\1-1 (e-3 d-1) b-.\2-3 d-1 (e-3 d-1) \break

  % line 6

  | c16\downbow_\crescM (b d c e d c b) a\upbow (b c a fis d e c)
  | \stemDown b16-.\p\upbow d' (e d)\downbow d,-. d' (e d) \stemNeutral g,-. d' (e d) b-. d (e d) \break

  % line 7

  | \clef bass e,,16\3-1\upbow_\crescM (fis-2 g-4\< fis g b\2 c b) \clef treble c\downbow (dis\1 e dis) e-1 (fis-4 g-\plus a-1)
  | bes2.-2\f\> a8-3 (g)\!
  | g2 \acciaccatura g32 \afterGrace fis2-1\trill ( { e16-\plus \(fis\) }
  | g8)\< \clef bass g, (a b-3 d\flageolet) c\downbow\> (\tuplet 3/2 { b8 c a}) \! \break

  % line 8

  | \afterGrace g2. ( { a16 g fis g)} b8. (a16)
  | g16\2-2\p\upbow (fis-1) a-.-4 g-. \repeat unfold 3  { g (fis) a-. g }
  | c,8 (e'16) r e4\accent e,8 (g'16) r g4\accent \pageBreak

  % page 6 line 1

  | \repeat unfold 4 { fis,16 (eis) g-. fis-. }
  | b,8\upbow (d') d4\accent d,8 (fis') fis4\accent
  | \clef treble c8\f\2-2 (c'16) r c4~\accent c16 b-3 (a-1 g-\plus\flageolet) fis\2-3 (e-1 d-3\2\flageolet c\3-2) \break

  % line 2

  | b8-1-\plus (b'16-3) r b4~\accent b16 a-1 (g-\plus fis-4) e-1 (d c b)
  | \clef bass a16 (g fis e d c b a) g8 g' e cis
  | d16-.\p g,-. g-. b-. b-. d-. d-.\accent e-. d-. g-.-2 g-. b\1-1-. b-. d-.-1 d-.\accent e-. \break

  % line 3

  | \clef treble d16_\crescM g-\plus\flageolet g b-3 b d-\plus d e-1 g4-3 bes!-3
  | d,,8-\plus\flageolet\f e16 (fis) g a b c d4.-3 (f,8)
  | g4-2 bes!2\> a8-2\p (g-1)
  | g2 \afterGrace fis2~-1\trill { e16-\plus fis }
  | g4\< (a8 b d-3\flageolet)\> c8-3 (\tuplet 3/2 { b8-2 c a}) \! \break

  %line 4

  | \afterGrace g2. ( { a16 g fis g)} b8.-3\upbow (a16)
  | g4-\plus\flageolet \clef bass bes,2\2-2\fp\downbow a8-4\> (g-1)\!
  | g2 \afterGrace fis2~-2\trill { \stemDown e16 fis } \stemNeutral
  | g4\< (a8 b e\>) c (b a)\!
  | e4~\downbow (16 fis g a) \afterGrace g4 ({ a16 g fis g)} b8.\downbow (a16) \break

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
  | g4 r\f \clef bass <<\acciaccatura <<d,,8-0 a'-2>> d4-2_\flageolet fis-1>> r
  | <<\acciaccatura <<g,8-0 d'-3>> bes4_1 g'-4\flageolet>> r r2 \fine
}

mvtII = \relative {
  \numericTimeSignature
  \time 3/4
  \key d \major
  \clef treble
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
  | f2.
  | a4 f (d)
  | e2 ( \grace { d16 cis b )} a4
  | a4\p (d\tenuto e\tenuto)
  | fis2._\crescM \break
  | fis2.
  | fis4.\f\> gis8 (ais b) \!
  | ais8 ( \once \override TupletBracket.bracket-visibility = ##f \tuplet 3/2 { gis16 e cis) } b4\p (cis)
  | d2.
  | fis2.
  | fis2\< a8 (d)
  | cis16\> (b g e) a4. (cis,8) \!
  | d2. \break

  % line 4

  | \clef bass f,4\p (g a)
  | bes4..\accent (a16 g4_\crescM)
  | bes4..\accent (a16 g4)
  | b2.~\fp\>
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
  | d2. \pageBreak

  % page 8 line 1

  | ees2.
  | bes'2.~
  | bes2.~
  | bes2.~
  | bes2.~
  | bes4 a8 (g16) r e8 (bes16) r
  | a2.~
  | \afterGrace a4 ({ bes32 a gis a) } bes4. (a8) \break

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
  | g'4._\crescM (f8)
  | g4.\> (f8)
  | e8\pp (dis e \acciaccatura g8 fis)
  | e2
  \repeat volta 2 {
    | f4. (gis,8)
    | f4.\< a,16 (c
    | e8\> [d bes g]) \! \break

    % line 5
    | a2
    | \clef treble a''4. (c,8)
    | a'4.\< (c,8)
    | a'8\> ([fis e fis]) \!
    | d2
    | e4.\accent (b16 f')
    | e4.\accent (c8)
    | d4.\accent (a16 e')
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
    | g'4.\< (bis,8)
    | g'4.\! b,16\> (d
    | f8 [e c a]) \! \break

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
  | g'8\fz r r4 \pageBreak

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
  | d8\accent (g) g-. g-.
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
  | c4 (c'8) g ( \pageBreak

  % page 10 line 1

  | fis16\pp) g-. f-. g-. ees-. f-. d-. ees-.
  | c4. g8 (
  | f'4.\accent) g,8 (
  | ees'4.\accent) g,8 (
  | d'8) g16 ([aes] g8) g-.
  | d'8\accent [(g,) g-. g-.]
  | f4.\accent g,8 (
  | ees'4.) g,8 ( \break

  % line 2

  | d'8) \clef bass g,16 (aes g8) g-.
  | d8\accent [(g) g-. g-.]
  | c4.\accent\pp d,8 (
  | bes'4.\accent) d,8 (
  | a'8) \clef treble d16 ([ees] d8) d-.
  | a'8\accent [(d,) d-. d-.]
  | c'4.\accent d,8 (
  | b'4.\accent) d,8 (
  | a'2)~ \break

  % line 3

  | \afterGrace a4 ({ bes32 a g a) } bes8 (g)
  | fis8 [(a) a-. a-.]
  | a8-. [a-. a-. a-.]
  | a2~
  | a8 g'^\markup { \tiny \italic "rit." } e cis
  | d2~
  | d4. d,8 (
  | c'4.)^\markup { \tiny \italic "a tempo" } d,8 (
  | bes'4.) d,8 (
  | a'4) \clef bass d,,4~ \break

  % line 4

  | d4. d8 (
  | c'4.) d,8 (
  | bes'4.) d,8 (
  | a'2~
  | a8) [bes8-. (a-. fis-.)]
  | d8-.^\markup { \tiny \italic "rit." } [(e-.) fis-. g-.]
  | a8-. [(aes-.) b-. (d-.)]
  \bar "||" \key g \major g,4.\p\accent^\markup { \tiny \italic "a tempo" } (a8)
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
  | \clef treble g'4._\crescM (f8) \break

  % line 6

  | g4.\> (f8)
  | e\pp [(fis e \acciaccatura g fis)]
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
  | g'8\fz r r4 \pageBreak

  % page 11 line 1

  |
}

\book {
  \score {
    \header {
      piece = "I. Allegro moderato"
    }
    \mvtI
  }

  \pageBreak

  \score {
    \header {
      piece = "II. Adagio"
    }
    \mvtII
  }

  \score {
    \header {
      piece = "III. Allegretto"
    }
    \mvtIII
  }

}
