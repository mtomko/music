\version "2.24.3"

\include "bass/solo-tuning.ly"

plus = \finger \markup \fontsize #6 "+"
% mi = \finger \markup { \fontsize #-4 "•" 1 }
mi = \finger "-1"
mii = \finger "-2"
miv = \finger "-4"
mdi = \finger "·1"
mdii = \finger "·2"
mdiv = \finger "·4"

\header {
  title = "Concerto for Double Bass"
  subtitle = \markup { \small "in F# Minor, op. 3" }
  meter = \soloTuning
  composer = "Serge Koussevitzky"
  tagline = #f
}

\layout {
  indent = 0.0
}

\paper {
  #(set-paper-size "letter")
}

mvtI = \relative {
  \time 4/4
  \key e \minor
  \clef tenor
  \numericTimeSignature
  \romanStringNumbers
  \override Fingering.avoid-slur = #'outside
  \set stringNumberOrientations = #'(down)
  \tempo "Allegro"

  \partial 4. r8 r4
  | \time 2/4 R2
  | \time 3/4 R2.
  | \time 4/4 R1
  | r4 b'4\f-2~ 8 ais-1 c-3 b-2
  | g8-\plus e-4 c-4 (ais-1 c) b-2 g-0 e-1
  | b8-1 (e-1) g-0 b-4 dis-2 (e-4) g-\plus b-2 \break

  | b2 f4-1\1 r4
  | \compressMMRests R1*3
  | \time 2/4 R2
  | \time 3/4 R2.
  | \time 4/4 R1
  | r4 c'-2\f~ 8 b-1 d-3 c-1
  | b8-3 a-1 g-1 fis-\plus (a-3) g-1 e-4 (c-4) \break

  | c8-4 (b-2 ais-1 b-2) c-1 (cis-2 d-1 dis-2)
  | e2. \tempo "Alla breve" r4
  | \clef treble e2.-1\2\p \tuplet 3/2 { e8 (fis g) }
  | fis4. (e8-1) e2~
  | e4 e\downbow fis\upbow (g)
  | fis4. (e8-3) e2-3
  | g2.\mf-1\1 \tuplet 3/2 { g8 (a b) } \break

  | a4. (g8) g2~
  | 4 4\downbow a-1\upbow (b-3)
  | a4.-1 (g8-1) g2
  | b4-1\f (d2-3) d8 (cis8-3)
  | cis4 (b-1) b2~\<
  | 4\! e-3 d-1 (cis-3)
  | cis4 (b-1) b2~ \break

  | b4 c-2 b-1 (a-3)
  | g-1\> (fis-\plus) g-1 (a)
  | b2\f d4-3 (c-1)
  | b2-1 b2~
  | b4 e-3 d-1 (c-2) \break

  | c\> (b-1) a-3 (g-1)
  | g2 fis4-4 (e-1) \!
  | e2. r4
  | \compressMMRests R1*4 \break

  | \tempo "a tempo" c2.\mf-1 \tuplet 3/2 { c8-1 (d-1 e-4) }
  | d4.-1 (c8) c2~
  | c4\< e-4 g-\plus (b-3) \!
  | d4.-3 (c8-1) c2
  | c,8\p-\plus (bes'-3) bes4~8 a8-2 (g-\plus\flageolet f-3\2)
  | f8 (e-2) dis4-1\downbow~8 e-\plus\upbow (f-1 e-\plus) \break

  | e\mf (d'-3\flageolet) d4-3~8 c-1 (bes-2 a-1)
  | a8 (g4-2) fis8-1~8 g-1 (a-3) g-1
  | g8\f (f'-2) f2 (e4-2)
  | e4-2 (d-2) cis-1 (d-2)
  | d,8-\plus (d'-3\flageolet) d2-3 (c4-1) \break

  | c4-1 (bes-2) a-1 (bes-2)
  | bes-2 (a-1) gis-\plus (a-1)
  | g-\plus (f-4) d-1 (bes-2\1)
  | bes2-2 a-1
  | \clef tenor f2-2\> \tempo "rit." e-1 \pageBreak

  | \time 4/4 \set crescendoText = \markup { \small \italic "poco a poco cresc." } \set crescendoSpanner = #'text \tweak Y-offset 6 \tempo "a tempo" \tuplet 3/2 { d8-\tweak extra-offset #'(0.0 . 0.9)-2\p\< (cis-\tweak extra-offset #'(-0.5 . 0.9)-1\! d-\tweak extra-offset #'(0.0 . 0.9)-2 } \tuplet 3/2 { f-\tweak extra-offset #'(0.0 . 1.2)-4 e-\tweak extra-offset #'(-0.3 . 1.2)-2 f-\tweak extra-offset #'(0.0 . 1.2)-4}) \omit TupletNumber \tuplet 3/2 { a-\tweak extra-offset #'(0.3 . 0.3)-2 (gis-1 a-2 } \tuplet 3/2 { e'-2 dis-1 e-2 })
  | \crescHairpin \clef treble \tuplet 3/2 { f8-4\p (e-2 f-4 } \tuplet 3/2 { a-1 gis-\plus a-1 }) \tuplet 3/2 { d-1 (cis-\plus d-1 } \tuplet 3/2 { f-3 e-2 d-1 })
  | \tuplet 3/2 { cis-\plus ( d-1 dis-3 } \tuplet 3/2 { e-3) g,-\plus (a-1 } \tuplet 3/2 { bes-2) e,-1 (f-1 } \tuplet 3/2 { g-3\flageolet) cis,-1 (d-2) } \break

  | \tuplet 3/2 { e-4 (ees-2 d-2 } \tuplet 3/2 { cis-1 e-4 g-\plus }) \tempo "poco rit." \tuplet 3/2 { bes-2 ( a-1 g-2~ } \tuplet 3/2 { g f-4 e-2) }
  | \tempo "a tempo" \tuplet 3/2 { d-2 (cis-1 d-2) } \tuplet 3/2 { fis-4 (eis-1 fis-4) } \tuplet 3/2 { a-1 (gis-\plus a-1) } \tuplet 3/2 { c-1 (b-\plus c-1) } \break

  | \tuplet 3/2 { ees-3 (d-2 c-1~ } \tuplet 3/2 { c) bes-3 (a-2) } \tuplet 3/2 { a (g-1 fis-\plus~ } \tuplet 3/2 { fis) g-1 (a-3) }
  | \tuplet 3/2 { g-1 (fis-\plus g-1) } \tuplet 3/2 { b-1 (ais-\plus b-1) } \tuplet 3/2 { d-1 (cis-\plus d-1) } \tuplet 3/2 { f-3 (e-2 d-1) }
  | \tuplet 3/2 { d (c-3 b-2~ } \tuplet 3/2 { b) a-1 (gis-\plus) } \tuplet 3/2 { gis (a-1 b-2) } \tuplet 3/2 { d-3 (c-1 b-2 } \break

  | \tempo "piu vivo" a16-1)\p a\downbow (gis-\plus a-1 c-3) c\upbow (b-2 c-3 a-1) a\downbow (gis-\plus a-1 e-4) e\upbow (dis-2 e-4)
  | e16\downbow e\upbow (dis e c-4) c (b-2 c-4) c\upbow c\downbow (b c a-2) a (gis-1 a-2)
  | bes16-4\downbow bes-\tweak extra-offset #'(0.0 . 1.5)\upbow a-2\downbow bes-4\upbow cis-4 cis bis-2 cis-4 e-4 e dis-2 e-4 g-3 g fis-2 g-3 \break

  | cis,-2 cis bis-1 cis-2 e-4 e dis-2 e-4 g-3 g fis-2 g-3 bes-2 bes a-1 bes-2
  | e,16-\plus\1 (eis-1 fis-2 g-3) e16 (eis fis g) g-\plus (gis-1 a-2 bes-3) g (gis a bes)
  | b-1 (c-2) c (b) b (aes-\plus) aes (b) b (c) c (b) b (aes) aes (b) \break

  | b16-\plus\p\< (c-1) c (b) b (cis-1) cis (b) b (d-2) d (b) b (dis-3) dis (b)
  | b (d-2) d (b) b (dis-3) dis (b) b (e-3) e (b) b (eis-3) eis (b)
  | b8\ff (fis'!-2) fis (b,) b4 r4
  | \compressMMRests R1*4 \break

  | \clef tenor \tempo "Alla breve" r4 ais,2\accent-1\downbow (b4-2)
  | c2-1 cis-2~
  | cis4 c2-1 (cis4-2)
  | \tempo "rit." d2-1 dis-2 \break

  | \clef treble \tempo "a tempo" e4-1\p (fis-4) g-\plus (gis-1)
  | cis4-3 (b-1) gis-\plus (e-4)
  | c2-1 (cis-2~
  | cis4) cis4 (e-4 d-1)
  | d-4 (cis-2 bis-1 cis-2)
  | eis4-4\< (gis-\plus cis-3 b-1)
  | b2-3\> (a-1~ \! \break
  | a4) eis-\plus (gis-3 fis-1)
  | eis2-1 (fis-2~
  | fis4) fis\< (b-3 a-1) \!
  | gis2-1 (a2-2~
  | a4) a\f (f'-2 e-1)
  | e (dis-3) dis (d-2)
  | d! (cis-1) cis (c-2)
  | c2 (b-1~ \break

  | b4) b\mf (d-3 cis-2)
  | b-3\> (a-1) gis-3 (fis-1)
  | eis-\plus\p (fis-1 gis8-3) a-.-\plus (b-.-1 cis-.-3)
  | cis2\downbow\> cis~\upbow
  | cis4 a-\plus\pp\downbow c-2\upbow (b-1)
  | a4-2 (gis-1) fis-3\1 (e-1)
  | dis4-\plus (e-1 fis8-3) gis-\plus (a-1 b-3) \break

  | b4 (gis-\plus) gis (e-4)
  | c2-2 b-1
  | e4-1\mf (fis-4) g-\plus (gis-1)
  | cis-3 (b-1) gis-\plus (e-4)
  | c2-1\downbow cis-2\upbow~
  | cis4 cis4\downbow e-4\upbow (d-1)
  | d-4\< (cis-2) bis-1 (cis-2)
  | eis-4 (gis-\plus) cis-3 (b-1) \break

  | b2-3\f a-1~
  | a4 a\< f'-2\upbow (e-1)
  | e2\ff d-2~
  | d2 c-1
  | c2 b-1~
  | b4 b (d-3 c-1)
  | c2 b2~
  | b2 a-1
  | a2 g-1~
  | g4 g-1 (a-3 g-1)
  | g1-2\1
  | fis-1 \break

  | \time 4/4 \new Voice <<
    \relative {
      \stemDown
      g'16-1 (b-2) b g g (c-3) c g g (b) b g g (c) c g
      | a-1 (cis) cis a a (d) d a a (cis) cis a a (d) d a
      | bes-1 (d-2) d bes bes (ees-3) ees bes bes (d) d bes bes (ees) ees bes \break
      | b!-1\< (dis-3) dis b b (e-3) e b b (dis) dis b b (e) e e \!
    }
    \relative {
      e'16-\plus e e e e e e e e e e e e e e e
      | fis-\plus \repeat unfold 15 {fis}
      | g-\plus \repeat unfold 15 {g}
      | g-\plus \repeat unfold 12 {g} s16 s16
    }
  >>
  | \stemNeutral e'-3 (dis-2) dis (e) e (d-1) d (c-2) c (b-1) b (c-2) c (b-1) b (a-3)
  | a (gis-2) gis (a) a (g-1) g (fis-4) fis (ees-2) ees (fis) fis (e) e (dis-1) \break

  | dis8 (c'-3) c4~16 b-2 (a-1 g-\plus) a-1 (g-\plus fis-4 e-1)
  | dis8-1 (b'-2) b4\>~16 a-3 (g fis-\plus) dis-\plus (e-1 fis-3 g-\plus) \!
  | \new Voice <<
    \relative {      
      g'16-1 b-2 b g g c-3 c g g b b g g c c g
      | a-1 cis cis a a d d a a cis cis a a d d a \break
      | bes-1 d-2 d bes bes ees-3 ees bes bes d d bes bes ees ees bes
      | b!-1 dis-3 dis b b e-3 e b b dis dis b b e e e
    }
    \relative {
      e'16-\plus\f e e e e e e e e e e e e e e e
      | fis-\plus \repeat unfold 15 {fis}
      | g-\plus \repeat unfold 15 {g}
      | g-\plus \repeat unfold 12 {g} s16 s16
    }
  >>
  | e'16-3 (dis-2) dis (e) e (ais,-1) ais (b-2) b (fis) fis (g-2) g (dis-2) dis (e-4) \break 

  | \clef tenor e (ais,-1) ais (b-2) b (fis-2) fis (g-4) g (dis-1) dis (e-2) e (g-0) g (b-4\1)
  | e2-4~16 g,-1\downbow^\markup { \tiny "(retake)" } g (b-4) b (e-4) e (g-2)
  | g2~16 b,-1 b (e-1) e (g-\plus) g (b-2)
  | e2-2 r2 
  | \compressMMRests R1*4
  \fine 

}

\book {
  \score {
    \mvtI
  }

}
