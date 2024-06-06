\version "2.24.3"

\include "bass/solo-tuning.ly"

\header {
  tagline = #f
  title = "elegia"
  tempo = "contrabass"
  composer = "Giovanni Bottesini"
  meter = \soloTuning
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

solonotes = \relative {
  \autoBreaksOff
  \clef bass
  \time 12/8
  \key c \major
  \textMark \markup { \small Andante }
  \compressMMRests R4.*8
  \clef "treble" g'2.\p_\markup { \tiny \italic "espressivo" }\upbow~ g8 g-.\downbow~ 8-.\downbow g\upbow (f e)
  | d2.~ 4 r8 d4 (dis8)\<
  | e4 (f32 e des e) d'4\accent-3 (c8-3)\! b4\accent (a8) g4\accent (f8) \break
  | e4 (g,8) a\< (b c)\! d4. g,32 (gis a ais b\> c cis d dis e f fis) \!
  | g2.~ 8 g-.\downbow~ g-.\downbow g (f e)
  | d2.~ 4 r8 d4-.\<~ 8 \break
  | d8-1 e-1 fis-4 g\thumb a-1 b-3\! c\thumb ees-1 g-3 fis-2\> b8.-2 (a16-2) \!
  | g2.\< a,4.\accent\! a,4~ \(a16.-. a32-.\)
  | a4.-1~16 b (cis d e32 f g a) bis16-. g-. cis4~ 8 d (e) \break
  | a,4. aes\accent\upbow (g\downbow) g,4~\(g16.-. g32-.\)
  | g4.~16\< a-1 (b-4 c-1 d32-4 e-2 f-4 g\thumb) aes16-.-1 \! f-.-2 b4-3~ 8 c (d)
  | g,2.~4 r8 bes,4_\markup { \small \italic "animando" }~\(16.-. bes32-.\) \break
  | bes4\< (a8) d4.\accent\! c4\< (b8) g'4.\accent\!
  | g8\f\thumb a\accent\<-1 b\accent-3 c\accent\thumb d\accent-1 e\accent-3 e4.-3 e,4-1 e8 \! (
  | g4.\accent-3) f\accent e\accent  d8\> (c aes)
  | g4.\p~ 16 (a b c d e) e8\> e4\accent~4\pp d8 \break
  | c4 r8 r4 r8 r2.
  | \clef bass c,4.\<~ c16 e (g c e g)\! \clef treble bes\> a-. (g-. f-. e-. d-.) \grace { c32 (d) } c16 (d c cis d bes) \!
  | a4 r8 r4 r8 r2. \break
  | g4.~16\< (b d f g b-1) d-3 (g\thumb b) d-. g-.\! g,, (b) ais (a) gis (g) f (
  | e4.\accent\<) g\accent c\accent d\accent \!
  | e4. b'2.\accent-2\upbow\< b8 (a g)\! \break
  | \ottava #1 g'4.\upbow \ottava #0 c,,,8\upbow d e f4\accent\downbow (aes,8) g4\upbow \tuplet 6/4 { g'32 (b d g b d }
  | \ottava #1 g4.\upbow)\ottava #0 c,,,8\upbow d e f4\accent\downbow (aes,8) g4\upbow \tuplet 6/4 {g'32 (b d g b d }
  | g,8-3\upbow) r16 c,,-.\downbow b-. bes-. a8\upbow\< (b16)\! e-. dis-. d-. c8\< (d16)\! g-. fis-. f-. e8\< (g16)\! d'-. c-. b-. \break
  | a8.\upbow a16\downbow gis a e'4.\upbow~ 8.\< d16\downbow cis d b'4\accent\upbow-2 (a8) \!
  | g8^\flageolet\thumb r16 \ottava #1 g16^\flageolet\downbow\< fis^\flageolet g^\flageolet e'4.^\flageolet~ 8 \ottava #0 r16\f e,,-. dis-. e-. c'4 c8\upbow
  | \stemDown d8\downbow~ (16 c) a-.\thumb\upbow f-.\upbow \stemNeutral c-. b-. c-. b-. c-. d-. e8-1 (b'-3) a-. g16-.\> f (a,8 b) \! \break
  | c4 r8 r4 r8 r2.
  | \clef bass d4.\p~ (8 e f) a,4 (c8) b4 (d8)
  | c4 (g8) e'2.\sf\accent\< e4. \!
  | \clef treble d4.~ (8 b' a-.) g16-.\upbow (fis-. f-.\> e-. d-. c-.) \clef bass b-.\downbow (a-. g-. f-. d-. g-.) \! \break
  | c,4.\upbow~ 8\p f (aes) \clef treble c (e g\thumb) aes-1 [(\grace { bes32 \(a\) } g8-1 f\thumb])
  | \afterGrace c'1.\startTrillSpan {b32 ([c])\stopTrillSpan }
  | g'2. (\clef bass g,8) e (c a g e)
  | c2.~ 8 r r r4 r8 \fine
}

\book {
  \bookOutputSuffix "solo"
  \score {
    \new Staff { \solonotes }
  }
}
