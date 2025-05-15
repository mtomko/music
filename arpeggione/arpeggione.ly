\version "2.24.3"

plus = \finger \markup \fontsize #6 "+"
mi = \finger "-1"
mii = \finger "-2"
miv = \finger "-4"

\header {
  title = "Arpeggione Sonata"
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
  \compressMMRests R1*9

  g2\2-1\mf\downbow a4. (bes8)
  | g2~ g8 (a\1 bes c)
  | d4. (g,8\flageolet) ees'4. (g,8)
  | d'2-2 \clef treble r8 d8\upbow (g ees-4) \break 
  
  % line 2
  
  | d4-2\downbow (cis-\mii c8-1) a'-3\upbow (g16-1 fis-\plus ees\2-2 d-1)
  | c4-4\downbow_\markup { \tiny \italic "non dim." } (bes) r8 bes (d-\plus\flageolet g)
  | bes8-3\< aes-1\upbow g2-\mi fis4-\plus
  | d'4.\> bes8-2\upbow (g-\plus) \clef bass d\2-3\downbow (bes-\mi) g-4\upbow (
  | c,4\pp) \clef treble ees'2.-2~\downbow \break

  % line 3

  | ees2~\< ees8 aes-\plus (c-3 aes)
  | ees'2~\fp\> ees8 c-1 (aes-\plus ees-4)
  | d2\!\turn^\markup { \tiny \sharp } bes'4.-2 (a8-1)
  | g4-\plus\flageolet d8-2 (ees) ees (d) fis-\plus (a-3)
  | a8 (g) d-1 (f!-4) f (ees) c-1-. (a-4-.) \break
  
  % line 4

  | g4-1 d''16-2\pp (ees d ees) ees8 (d) fis,16-\plus (g fis a)
  | a8 (g) d16-1 (ees d f!) f8 (ees) c-. (a-.)
  | g8-1 (d') a-1 (d) bes-2 (d) a (d)
  | bes8 (d-\plus\flageolet) a-1 (d) bes'-2 (d,) a' (d,) \break

  % line 5

  | bes'8 (d,) d'\flageolet (d,) d' (d,) d'-.\upbow d-.\upbow
  | g1~\!\3\flageolet\pp\>
  | g4\2-1\! r4 4 \clef bass g,,4\2-1\upbow
  | a2-4~ a16 c\1-1\upbow (ees c) a\2\downbow f c\3-. a-.
  | f4 r r a'8.\trill (g32 a) \break 

  % line 6

  | bes2~ bes16 f (d f) bes f d' bes \clef treble 
  | f'2.-4 ees8-2 (d-1)
  | c16-2\p (b d c ees d f ees) g4-\plus\flageolet\upbow bes-3\accent\downbow (
  | a8) f (e) bes' (a) f\< (ees) bes' \! ( \break

  % line 7

  | a8\> f) d (g)\! g (ees) c (f)
  | f8 (d) \clef bass bes16\2-1 (c-4 bes ees) ees8 (c) a16-1 (bes-2 a d)
  | d8 (bes) fis (bes) g8\downbow^\markup { \tiny rit. } (bes) \tuplet 3/2 { a8-1\downbow (g'-3\flageolet f-1) }  \break 

  % line 8

  | bes,16-2\upbow\pp (a c bes) \repeat unfold 3 { bes (a c bes) }
  | g8\flageolet (g'-3\flageolet) g4\accent g,8 (g') g4\accent\downbow \pageBreak

  % page 2 line 1
  
  | a,16\upbow (gis bes a) \repeat unfold 3 { a16\upbow (gis bes a) }
  | f8 (f') f4\accent\downbow f,8 (f') f4\accent 
  | ees16-2\upbow (d-1 f-4 ees-1 g-3_\markup { \tiny \italic "cresc." } f-1 ees-2 d-1) c-1\downbow (d ees c a) f\upbow (g ees \break

  % line 2
  
  | d16-.) f'-1\downbow\p (g-3 f) f,\3\plus-.\upbow f' (g f) d\2-\plus (f g f) d-3\flageolet-. f (g f)
  | ees16-2\upbow (d-1 f-4 ees-1 g-3_\markup { \tiny \italic "cresc." } f-1 ees-2 d-1) c-1\downbow (d ees c a) f\upbow (g ees
  | d16-.) f'-1\downbow\p (g-3 f) f,\plus-.\upbow f' (g f) d-\plus (f g f) d-3\flageolet-. f (g f) \break

  % line 3
  | g,16\upbow (fis g a) bes_\markup { \tiny \italic "cresc." } (a bes d) \clef treble ees-2\upbow (d ees-1 fis-4 g-\plus a-1 bes-2 c-1)
  | des2.-2\f\> c8-3 (bes-1)
  | b2\p

}



\book {
  \score {
    \mvtI
  }
}
