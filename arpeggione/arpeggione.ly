\version "2.24.3"

plus = \finger \markup \fontsize #6 "+"
mi = \finger "-1"
mii = \finger "-2"
miv = \finger "-4"

\header {
  title = "Arpeggione Sonata"
  subtitle = \markup { \small "in A minor, D. 821" }
  composer = "Franz Schubert"
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

mvtI = \relative {
  \time 4/4
  \key g \minor
  \clef bass
  \tempo "Allegro moderato"
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \override Fingering.avoid-slur = #'outside
  \clef bass

  \repeat volta 2 {
    \compressMMRests R1*9
    g2\2-1\mf\downbow a4. (bes8)
    | g2~ g8 a\1 (bes c)
    | d4. (g,8\flageolet) ees'4. (g,8)
    | d'2-2 \clef treble r8 d8\upbow (g ees-4) \break

    % line 2

    | d4-2\downbow (cis-\mii c8-1) a'-3\upbow (g16-1 fis-\plus ees\2-2 d-1)
    | c4-4\downbow_\markup { \tiny \italic "non dim." } (bes) r8 bes (d-\plus\flageolet g)
    | bes8-3\< aes-1\upbow g2-\mi fis4-\plus
    | d'4.\> bes8-2\upbow (g-\plus) \clef bass d\2-3\downbow (bes-\mi) g-4\upbow (
    | c,4\4-1\pp) \clef treble ees'2.-2~\downbow \break

    % line 3

    | ees2~\< ees8 aes-\plus (c-3 aes)
    | ees'2-3~\fp\> ees8 c-1 (aes-\plus ees-4)
    | \afterGrace d2\! ({ ees16 d cis d) } bes'4.-2 (a8-1)
    | g4-\plus\flageolet d'8-2 (ees) ees (d) fis,-\plus (a-3)
    | a8 (g) d-1 (f!-4) f-4 (ees-2) c-1-. (a-4-.) \break

    % line 4

    | g4-1 d''16-2\pp (ees d ees) ees8 (d) fis,16-\plus (g fis a)
    | a8 (g) d16-1 (ees d f!) f8 (ees) c-. (a-.)
    | g8-1 (d') a-1 (d) bes-2 (d) a (d)
    | bes8 (d-\plus\flageolet) a'-1 (d,) bes'-2 (d,) a' (d,) \break

    % line 5

    | bes'8 (d,) d'\flageolet (d,) d' (d,) d'-.\upbow d-.\upbow
    | g1~\!\3\flageolet\pp\>
    | g4\! r4 r \clef bass g,,4\2-1\upbow
    | a2-4~ a16 c\1-1\upbow (ees c) a\2\downbow f c\3-. a-.
    | f4 r r a'8.\trill (g32 a) \break

    % line 6

    | bes2~ bes16 f (d f) bes f d' bes \clef treble
    | f'2.-4 ees8-2 (d-1)
    | c16-2\p (b d c ees d f ees) g4-\plus\flageolet\upbow bes-2\accent\downbow (
    | a8) f (e) bes' (a) f\< (e) bes' \! ( \break

    % line 7

    | a8\> f) d (g)\! g (ees) c (f)
    | f8 (d) \clef bass bes16\2-1 (c-4 bes ees) ees8 (c) a16-1 (bes-2 a d)
    | d8 (bes) fis (bes) g8\downbow^\markup { \tiny rit. } (bes) \tuplet 3/2 { a8-1\upbow g'-3\flageolet (f-1) }  \break

    % line 8

    | bes,16-2\upbow\pp^\markup { \tiny "a tempo" } (a c bes) \repeat unfold 3 { bes (a c bes) }
    | g8\flageolet (g'-3\flageolet) g4\accent\downbow g,8 (g') g4\accent \pageBreak

    % page 2 line 1

    | a,16\upbow (gis bes a) \repeat unfold 3 { a16 (gis bes a) }
    | f8\upbow (f') f4\accent f,8 (f') f4\accent
    | ees16-2\upbow (d-1 f-4 ees-1 g-3\cresc f-1 ees-2 d-1) c-1\downbow (d ees c a) f\upbow (g ees \break

    % line 2

    | d16-.\parenthesize\upbow) f'-1\downbow\p (g-3 f) f,\3\plus-.\upbow f' (g f) d\2-\plus f-. (g f) d-3\flageolet-. f (g f)
    | ees16-2\upbow (d-1 f-4 ees-1 g-3\cresc f-1 ees-2 d-1) c-1\downbow (d ees c a) f\upbow (g ees
    | d16-.) f'-1\downbow\p (g-3 f) f,\plus-.\upbow f' (g f) d-\plus f-. (g f) d-3\flageolet-. f (g f) \break

    % line 3

    | g,16\upbow (fis g a) bes\cresc (a bes d) \clef treble ees-2\upbow (d ees-1 fis-4 g-\plus a-1 bes-2 c-1)
    | des2.-2\f\> c8-3 (bes-1)
    | bes2\p \acciaccatura bes16 \once \slurDown \afterGrace a2-1~ ( \trill { g16 a }
    | bes8) bes,-1\< (c-4 d-1) f-4\> (ees-2) \tuplet 3/2 { d8 (ees c) } \! \break

    % line 4

    | \afterGrace bes2.\upbow ({ c16 bes a bes) } d8 (c)
    | bes16\pp\upbow (a) c-. bes-. \repeat unfold 3 { bes16 (a) c-. bes-. }
    | g8 (g') g4\accent g,8 (g') g4\accent \break

    % line 5

    | \repeat unfold 4 { a,16 (gis) bes-. a-. }
    | f'8 (f'8) f4-4 f,8 (f'8) f4
    | ees,8-\plus\upbow (ees'-3) ees4\accent~ 16 d c bes a g f ees \break

    % line 6

    | d8-\plus\flageolet d'-3 d4\accent~ 16 c bes a g f ees d
    | \clef bass c16 bes a g f ees d c des8-. bes-. g-. e-.
    | f16-.\p bes-3 bes-. d-. d-. f-. f-.\accent g-. f-. bes-. bes-. d\2-\plus-. \clef treble d-. f-1-. f-.\accent g-3-. \break

    % line 7

    | f16-. bes\1-2-. bes-. d-. d-. ees-1-. ees-. g-\plus-. bes4-1\cresc des-3
    | f,,8\2-2-.\f g16-\plus-. (a-1-.) bes-2-. c-. d!-. ees-. f4.\accent (a,8)
    | b4\upbow\p des,2-2\downbow c8-4 (bes-1)
    | bes2 \acciaccatura bes16 \afterGrace a2~ ( \trill { g16 a }
    | bes4\<) c8 (d f) ees \> ( \tuplet 3/2 { d8 ees c }) \! \break

    % line 8

    | \afterGrace bes2. ({ c16 bes a bes) } d8 (c)
    | bes4\downbow des'2\downbow\> c8 (bes)
    | bes2\! \acciaccatura bes16 \once \slurDown \afterGrace a2~ ( \trill { g16 a }
    | bes4)\< c8 (d g-3\flageolet\>) ees (d c)\!
    | g4~ (g16 a bes c) \afterGrace bes4 ( {c16 bes a bes) } d8.\downbow (c16) \break

    % line 9

    | bes4\upbow \clef bass <<a,\f f'^\markup { \small "pizz." } >> <<d bes>> <<a f'>>
    \alternative {
      \volta 1 {
        | <<bes, f'>> r4 <<fis,\fz a d>> r4
        | R1
      }
      \volta 2 {
        <<bes4 d>> r4 <<d bes'>> r4
      }
    }
  }
  | R1 \pageBreak

  % page 3 line 1

  | r8 g,8\p^\markup { \small "pizz." } bes [ees] r8 aes, bes [d]
  | r8 g, bes [ees] g d, ees [f]
  | g8 g bes ees aes, aes c ees
  | r8 g, bes [ees] r ees, bes' [ees] \break

  % line 2

  | r8 f, c' [ees] r f, aes [d]
  | r8 g,,16\f\upbow (b\3 d\flageolet g\2-2 b\1-1 d-4) \clef treble g2~\downbow\>
  | g1~\p\upbow
  | g4 (f8-1\downbow ees-4) des-1\upbow (f g aes)
  | \afterGrace c,2 ( { d!16 c b c) } ees4.\upbow (d!8) \break

  % line 3

  | d1~
  | d4\< d'2.-2\upbow
  | ees4\downbow\> (d8 c) bes-3 (aes-1 g-\plus\flageolet f-4)\!
  | f8 (ees f-1 g-3) g4.\>\upbow (b,8-1) \break

  % line 4

  | \clef bass c16\p (g) aes-. g-. \repeat unfold 3 { g (fis) aes-. g-. }
  | g8 (g'16) r g,8\flageolet (f'16-4) r g,8 (ees'16) r g,8 (d'16-4) r \break

  % line 5

  | \clef treble c16-1 (g'-2) aes-3-. g-1-. \repeat unfold 3 { g (fis) a-. g-. }
  | g8 (g,16) r f'!8 (g,16) r ees'8 (g,16) r d'8 (g,16) r
  | c16 (b) d-. c-. c16 (b) d-. c-. aes'2\accent \break

  % line 6

  | bes,16\downbow (a) c-. bes-. bes16 (a) c-. bes-. g'2\accent
  | \clef bass aes,16\2-2\downbow (g-1) bes-4-. aes-. aes16 (g) bes-. aes-. f'-4\cresc ees-1 d c b\2 aes! g f
  | ees16\f\< c' e, c' f, c' g\flageolet c-4 aes-1 c-4 bes!-1 c-2 aes-4 c-2 g\flageolet c-2 \! \break

  % line 7

  | fis,8-1 r ees'2.~\fz\>
  | ees4\! ees2.~\p
  | ees4 ees2.~\accent\pp
  | ees1~ \tweak X-offset 6 \upbow
  | ees4 d8\downbow (ees) f\accent\upbow\cresc (ees\! c aes) \break

  % line 8

  | aes8-2\downbow (g aes bes d\accent\flageolet) c-4\accent (aes-1 f\3-4)
  | ees16-1 (bes'\2-2) c-4-. bes-. bes (a!) c-. bes-. bes (a) c-. bes-. bes (a) c-. bes-.
  | \clef treble bes8-\plus\mf (bes'16) r bes,8 (aes'16-3) r bes,8 (g'16-3\flageolet) r bes,8-1 (f'16-4) r \pageBreak

  | % page 4 line 1

  | ees16-2\pp (bes) ces-. bes-. \repeat unfold 3 { bes (a) ces-. bes-. }
  | bes8 (bes'16) r bes,8 (aes'16) r bes,8 (ges'16) r bes,8 (f'16) r
  | ges1\2-3~
  | ges1\upbow (
  | g1~\downbow_\markup { \italic "cresc." }) \break

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
  | d1~\! \tweak X-offset 4 \upbow
  | d2_\markup { \italic "dim." } \once \set fingeringOrientations = #'(left) <\parenthesize a' a,\harmonic-3 d,\harmonic\2-\plus>2\downbow
  | d,2\1-3\flageolet\upbow a2\2\flageolet
  | d,2\flageolet\upbow \clef bass a4.-1\downbow fis8-1
  | d1~-2\upbow \break

  % line 4

  | \tuplet 3/2 { d8 fis,-.\tweak Y-offset 4.5 \downbow (a-. } \tuplet 3/2 { c-.) ees-. (fis-3 } \tuplet 3/2 { a-.) c-.\upbow (d-.\upbow) } ees4~-2\fp\downbow
  | ees4 d-. cis8-. c\2-.\upbow^\markup { \small "rit." } (bes-. a-.)
  | g2-1\downbow^\markup { \small "a tempo" } a4.-2\upbow (bes8)
  | g2~ g8 a (bes c)
  | d4.\accent (g,8) ees'4.\accent (g,8) \break

  % line 5

  | d'2 r8 \clef treble d8 (g ees)
  | d4 (cis c8) a' (g16 fis ees d)
  | c4 (bes) r8 bes8 (d g)
  | bes8\downbow\< (aes\upbow g2 fis4\upbow)
  | d'4.\> bes8\upbow (\clef bass g8 d bes g) \break

  % line 6

  | c,16\pp (ees aes c ees2.~ \tweak X-offset 6 \upbow
  | ees2~\< ees8) \clef treble aes\upbow c\downbow aes\upbow
  | ees'2~\fp\downbow\> ees8 (c aes ees)\!
  | \afterGrace d2\downbow ({ ees16 d cis d) } bes'4.\upbow (a8)
  | g4 d'8\p (ees) ees\accent (d) fis, (a) \break

  % line 7

  | a8\accent (g) d (f) f\accent (ees) c\2-4 (a-4)
  | g4-1 r r2
  | R1
  | r4 a'8-1\upbow (bes-2) bes\accent (a) cis, (e) \break

  % line 8

  | e8\accent (d) \clef bass a (c) c\accent (bes) g (e)
  | d4 r r2
  | R1 \pageBreak

  % page 5 line 1

  | r4 e'8-4\accent\downbow (a-1\flageolet_\markup { \italic "cresc." }) f-4\accent\upbow (a-1\flageolet) e\accent (a)
  | f8\accent (a) r <<a,, cis' e\downbow>> r <<d f\downbow>> r <<a,, cis' e\downbow>>
  | r8 <<d f>> \clef treble a,-\plus\flageolet_\markup { \italic "dim." } ([a'-2\flageolet]) a, (a') a-.\pp\upbow~ a-.\upbow
  | d1~-2\flageolet
  | d4 r r \clef bass d,-1\downbow\f \break

  % line 2

  | ees2~\upbow\> ees16\! ees fis ees c-1 a\2-4 fis-1 ees-4
  | d4-2 r r fis8.\downbow (e32\trill fis)
  | g2~g16 \clef treble bes-2\<\upbow d-1 bes g'-\plus d bes'-2 g\flageolet d'2.-3\> c8-3 (bes-1) \break

  % line 3

  | aes16\p

}



\book {
  \score {
    \mvtI
  }
}
