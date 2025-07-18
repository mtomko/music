\version "2.24.3"

\include "bass/solo-tuning.ly"

\header {
  title = "Elegia no. 1 in re"
  composer = "Giovanni Bottesini (1821-1889)"
  meter = \soloTuning
  copyright = \markup { \tiny \italic "Engraving Ⓒ Mark Tomko, 2025" }
  tagline = #f
}

\paper {
  #(set-paper-size "a4")
}

plus = \finger \markup \fontsize #6 "+"

solonotes = \relative {
  \autoBreaksOff
  \tempo "Andante sostenuto"
  \time 12/8
  \clef treble
  \key c \major
  \compressMMRests R4.*8
  % line 1
  \once \override TextScript.X-offset = 2
  g'2.\p^\markup { \tiny \italic "espressivo" }\upbow~ g8 g g g (f) e
  | d2.~ 4 r8 d4-1\< (dis8-1)
  | e4-2 (f32 e des e) d'4\accent-3 (c8-3)\! b4\accent (a8-2) g4\accent-1 (f8-4) \break
  % line 2
  | e4 (g,8-0) a-1\< (b-1 c-2)\! d4. g,32\downbow (gis a ais b-1\> c cis d-1 dis e f-1 fis) \!
  | g2.-3~ 8 g g g (f) e
  | d2.~ 4 r8 d4~\< 8\tenuto \break
  % line 3
  | d8-1 e-1 fis-4 g-\plus a-1 b-3\! c-\plus ees-1 g-3\parenthesize \flageolet fis-2\> b8.-2 (a16-2) \!
  | g2.\< a,4.\accent\! a,4~ \(a16.-. a32-.\)
  | a4.-1~16 b (cis d e32 f g a) \clef treble bes16-. g-. cis4~ 8 d (e) \break
  % line 4
  | a,4. aes\accent\upbow (g\downbow) g,4~\(g16.-. g32-.\)
  | g4.~16\< a-1 (b-4 c-1 d32-4 e-2 f-4 g-\plus) aes16-.-1 \! f-.-2 b4-3~ 8 c (d)
  | g,2.~4 r8 bes,4~\(16.-. bes32-.\) \break
  % line 5
  | bes4\< (a8) d4.\accent\! c4\< (b8) g'4.\accent\!
  | g8\p\accent-\plus a\accent\<-1 b\accent-3 c\accent-1 d\accent-3 e\accent-2 e4. e,4-1 e8 \! (
  | g4.\accent-3) f\accent e\accent \clef bass d8\> (c aes)
  | g4.\p~ 16 (a b c d e) e8\> e4\accent~4\pp d8 \break
  % line 6
  | c4 r8 r4 r8 r2.
  | c,4.\<~ c16 e-4\3 (g-1\2 c-4 e-2\1 g)\! \clef treble bes\> a-. (g-. f-. e-. d-.) \grace { c32 (d) } c16 (d c cis d bes) \!
  | a4 r8 r4 r8 r2. \break
  % line 7
  | g4.\2~ 16\< (b-4\upbow d-1\1 f-4 g-\plus b-1) d-3\downbow (g-\plus b) d-. g-.\! g,,\upbow (b-.) a-.\downbow (aes-. g-. fis-. f-.)
  | e4.\accent\<\upbow g\accent c\accent d\accent \!
  | e4.\upbow b'2.\accent-2\< b8 (a g)\! \break
  % line 8
  | \ottava 1 g'4. \ottava 0 c,,,8\upbow d e f4\accent\downbow (aes,8) g8.\upbow \stemDown g'32 ([b] \stemNeutral d [g b d])
  | \ottava 1 g4.\upbow \ottava 0 c,,,8\upbow d e f4\accent\downbow (aes,8) g8.\upbow \stemDown g'32 ([b] \stemNeutral d [g b d])
  | \ottava 1 g 8-3\upbow \ottava 0 r16 c,,,-.\downbow b-. bes-. a8\upbow\< (b16)\! e-. dis-. d-. c8\< (d16)\! g-. fis-. f-. e8\< (g16)\! d'-. c-. b-. \break
  % line 9
  | a8.\upbow a16\downbow gis a e'4.\upbow~ 8.\< d16\downbow cis d b'4\accent\upbow-2 (a8) \!
  | g8^\flageolet-\plus r16 \ottava #1 g16^\flageolet\upbow\< fis^\flageolet g^\flageolet e'4.^\flageolet-\plus-2\2~ 8 \ottava #0 r16\f e,,-.\2 dis-. e-. c'4 c8\upbow
  | \stemDown d8.\downbow c16 a-.-3 f-.-\plus \stemNeutral c\accent b\accent c\accent b\accent c\accent d\accent e8-1 (b'-3) a-. g16-.\> f (a,8 b) \! \break
  % line 10
  | c4 r8 r4 r8 r2.
  | d4.\p~ (8 e f) a,4\2 (c8) b4 (d8)
  | c4\2\glissando (g8) e'2.\< e4. \!
  | d4.~\downbow d8 %{\clef treble %} b'\upbow (a) g16-.-\plus\downbow (fis-.-4 f-.-2 \> e-.-1 d-.-4 c-.-1) \clef bass b-.-4\upbow (a-.-1 g-.-4 f-.-1) d-0\downbow g-4\!\upbow \break
  % line 11
  | c,4.~ 8\p f\3 (aes\2) c (e g-1) \clef treble aes-2 [(\grace { bes32 \(aes\) } \stemUp g8-1 \stemNeutral f-1]) \slurNeutral
  | \afterGrace c'1.\trill {b32 ([c]) }
  | g'2. \clef bass g,8 e c a (g) e
  | c2.~ 8 r r r4. \fine
}

\book {
  \score {
    \new Staff {
      \romanStringNumbers
      \set stringNumberOrientations = #'(down)
      \solonotes
    }
  }
}

\book {
  \bookOutputSuffix "unedited"
  \score {
    \new Staff {
      \omit Fingering
      \override Voice.StringNumber.stencil = ##f
      \set scriptDefinitions = #(cons*
                                 `(upbow . ,(acons 'stencil #f (assoc-get 'upbow default-script-alist)))
                                 `(downbow . ,(acons 'stencil #f (assoc-get 'downbow default-script-alist)))
                                 default-script-alist)
      \solonotes
    }
  }
}
