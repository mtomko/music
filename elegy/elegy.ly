\version "2.24.3"

\include "bass/solo-tuning.ly"

\header {
  title = "Elegia no. 1 in re"
  subtitle = "Per contrabbasso e pianoforto"
  composer = "Giovanni Bottesini (1821-1889)"
  arranger = "ed. Mark Tomko"
  meter = \soloTuning
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
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
  g'2.\p^\markup { \tiny \italic "espressivo" }\upbow~ g8 g-.\downbow 8-.\downbow g (f e)
  | d2.~ 4 r8 d4-1\< (dis8-1) \break
  % line 2
  | e4-2 (f32 e des e) d'4\accent-3 (c8-3)\! b4\accent (a8-2) g4\accent-1 (f8-4)
  | e4 (g,8-0) a-1\< (b-1 c-2)\! d4. g,32\downbow (gis a ais b-1\> c cis d-1 dis e f-1 fis) \! \break
  % line 3
  | g2.-3~ 8 g-.g-. g (f e)
  | d2.~ 4 r8 d4\<~ 8-.
  | d8-1 e-1 fis-4 g-\plus a-1 b-3\! c-\plus ees-1 g-3\parenthesize \flageolet fis-2\> b8.-2 (a16-2) \! \break
  % line 4
  | g2.\< a,4.\accent\! \clef bass a,4~ \(a16.-. a32-.\)
  | a4.-1~16 b (cis d e32 f g a) \clef treble bis16-. g-. cis4~ 8 d (e) \break
  % line 5
  | a,4. aes\accent\upbow (g\downbow) \clef bass g,4~\(g16.-. g32-.\)
  | g4.~16\< a-1 (b-4 c-1 d32-4 e-2 f-4 g-\plus) \clef treble aes16-.-1 \! f-.-2 b4-3~ 8 c (d) \break
  % line 6
  | g,2.~4 r8 bes,4~\(16.-. bes32-.\)
  | bes4\< (a8) d4.\accent\! c4\< (b8) g'4.\accent\!
  | g8\p\accent-\plus a\accent\<-1 b\accent-3 c\accent-\plus d\accent-1 e\accent-3 e4.-3 e,4-1 e8 \! ( \break
  % line 7
  | g4.\accent-3) f\accent e\accent \clef bass d8\> (c aes)
  | g4.\p~ 16 (a b c d e) e8\> e4\accent~4\pp d8
  | c4 r8 r4 r8 r2. \pageBreak
  %% page 2
  % line 1
  | c,4.\<~ c16 e-4\3 (g-1\2 c-4 e-2\1 g)\! \clef treble bes\> a-. (g-. f-. e-. d-.) \grace { c32 (d) } c16 (d c cis d bes) \!
  | a4 r8 r4 r8 r2. \break
  % line 2
  | g4.\2~ 16\< (b-4\upbow d-1\1 f-4 g-\plus b-1) d-3\downbow (g-\plus b) d-. g-.\! g,,\upbow (b) ais (a) gis (g) f (
  | e4.\accent\<) g\accent c\accent d\accent \! \break
  % line 3
  | e4. b'2.\accent-2\upbow\< b8 (a g)\!
  | g'4.\upbow c,,,8\upbow d e f4\accent\downbow (aes,8) g8.\upbow \stemDown g'32 ([b] \stemNeutral d [g b d]) \break
  % line 4
  | g4.\upbow c,,,8\upbow d e f4\accent\downbow (aes,8) g8.\upbow \stemDown g'32 ([b] \stemNeutral d [g b d])
  | g 8-3\upbow r16 c,,,-.\downbow b-. bes-. a8\upbow\< (b16)\! e-. dis-. d-. c8\< (d16)\! g-. fis-. f-. e8\< (g16)\! d'-. c-. b-. \break
  % line 5
  | a8.\upbow a16\downbow gis a e'4.\upbow~ 8.\< d16\downbow cis d b'4\accent\upbow-2 (a8) \!
  | g8^\flageolet-\plus r16 \ottava #1 g16^\flageolet\upbow\< fis^\flageolet g^\flageolet e'4.^\flageolet-\plus-2\2~ 8 \ottava #0 r16\f e,,-.\2 dis-. e-. c'4 c8\upbow \break
  % line 6
  | \stemDown d8.\downbow c16 a-.-3 f-.-\plus \stemNeutral c\accent b\accent c\accent b\accent c\accent d\accent e8-1 (b'-3) a-. g16-.\> f (a,8 b) \!
  | c4 r8 r4 r8 r2. \break
  % line 7
  | d4.\p~ (8 e f) a,4\2 (c8) b4 (d8)
  | c4\2\glissando (g8) e'2.\sf\accent\< e4. \!
  | \clef treble d4.~ d8 b' (a) g16-.-\plus (fis-.-4 f-.\> e-. d-.-4 c-.) \clef bass b-. (a-. g-. f-.) d <<g\! \parenthesize g,>>  \break
  % line 8
  | c4.\downbow~ 8\p f\3 (aes\2) \clef treble c (e g-\plus) \slurDown aes-1 [(\grace { \stemDown bes32 \(aes\) } \stemUp g8-1 \stemNeutral f-\plus]) \slurNeutral
  | \afterGrace c'1.\startTrillSpan {b32 ([c])\stopTrillSpan }
  | g'2. (\clef bass g,8) e (c a g e)
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
