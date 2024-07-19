\version "2.24.3"

plus = \finger \markup \fontsize #6 "+"

\include "bass/solo-tuning.ly"

adagioBassNotes =
\relative {
  \set Score.rehearsalMarkFormatter = #format-mark-alphabet
  \clef bass
  \time 3/4
  \key c \major
  | c'4\p\upbow r8 g\downbow a8.\trill (b32 c)
  | \appoggiatura f,8 e8\trill (d16 c) c'2\upbow~
  | c4~ c16 b\< (c e\!) d (c\> b c)
  | \appoggiatura c8 b\trill (a16 g\!) r4 r4 \break
  | g'4\upbow r8 d\downbow e8. (fis32 g)
  | \appoggiatura c,8 b\trill (a16 g) cis2\upbow
  | d8 a f'16 gis, b (c!) d (f) e (d)
  | \appoggiatura d8 c\trill (b16 a) dis4 r
  | e4\upbow r8 b\downbow c16 (e) dis (e) \break
  | \appoggiatura a,8 g\trill (fis16 e) e'2~
  | e8.\< (fis32 g) fis16\f (e d c) b (c d b)
  | \appoggiatura a8\upbow gis\trill (fis16 e) a4~ a16 f'\upbow (e d)
  | c16 (b) c16 (a) \appoggiatura a8 gis4.\trill (a8) \break
  | \mark \default a4 r r
  | r4 r8 a8\p\downbow \appoggiatura g8 fis8. (e32 d)
  | b'8\mordent\downbow (c16 d)) g,2\upbow~
  | g16 g\downbow (a bes e,) e\upbow (f g f)  e (d c)
  | a'8\mordent\upbow (bes16 c) f,2~ \break
  | f16 f\upbow (g a g) b!\downbow (d c b) a\upbow (g f16)
  | e16 (a) g\tenuto\upbow f\tenuto\upbow e4-4\2 \appoggiatura e8\upbow d8.\trill (c16)
  | c2.\downbow~
  | c4. c'16\upbow (b c e d8)
  | c4 (b2) \bar "||"
}

allegroBassNotes =
\relative {
  \clef bass
  \time 2/4
  \key c \major
  \set Score.rehearsalMarkFormatter = #format-mark-alphabet
  \set Score.currentBarNumber = #24
  \repeat volta 2 {
    c'16\mf d e4 d16 (c)
    | b16 c d4 c16 (b)
    | c16 (g) e' (g,) d' (g,) c (g)
    | b8\< g b d\!
    | e16 f g4 f16 (e)
    | d16 e f4 e16 (d) \break
    | e8 (c) b\trill (c)
    | d16 (c b)  a g f e d
    | c8 c'16\2\upbow b c4~ (
    | c16 bes\tenuto) a c f-4\1 c-1 a-4\2 f-1
    | a8 d16 cis d4~ (
    | d16 c\tenuto) b d g d b d \break
    | e8 e4 d16 (cis)
    | d8 d4 c16 (b)
    | c8 b16 (a) g (f) e (d)
    | e16 (f g) e c e f g
    | \mark 2 a16 b c8~ c16 b (a g) \break
    | fis16 (g a) fis d fis g a
    | b16 c d8~ d16 c (b a)
    | g16 (a b) g e g a b
    | c16 (d e16) c a c d e
    | fis,16 (g a) fis d fis a c \break
    | b16 (c d) e \appoggiatura b8 a8.\trill\tenuto (g16\staccato)
    | \mark \default g4 r8 d'8~ (
    | d16 f) e d c8 c~ (
    | c16 a) fis a b,8 b'~ (
    | b16 d) b g e (c') a fis \break
    | d4 r16 d16 e fis
    | g16 a bes4 a16 (g)
    | fis g a4 g16 (fis)
    | d'8 c16 (b) c (b) a (b)
    | g2
  } \pageBreak
  \repeat volta 2 {
    \compressMMRests { R2*4 }
    g16 a bes4 a16 (g)
    | f16 (e d c) d (e f g)
    | a16 (bes c) d c bes a g
    | bes16 (a) g (a) f-2\2 a-4 c-1\1 f-4 \break
    | \mark \default d8 f,\upbow bes\upbow d~ (
    | d16 c) bes (a) g (a bes) d
    | cis8 a\upbow e\upbow e'~
    | e8 a, d16\f e f8~ (
    | f16 e) d c b8 e~ (\break
    | e16 d) c b a8 f'8~
    | f16 gis,\upbow (a) b\upbow e,8 gis
    | a16\fp b c4 b16 (a)
    | \mark \default g16 (fis e d) e (fis g a)
    | b16 (c d) e d c b a \break
    | c16 (b) a (b) g4
    | r8 d'16\upbow e f8 r8
    | r8 e16\downbow f e (d) c b
    | c8\upbow e\upbow a4-3~
    | a16 fis-\plus (g-1) e-2 \appoggiatura e8 dis8.\trill (e16)
    | e2 \break
    | \mark \default e16-2 f-4 g4\flageolet f16 (e)
    | d16 e f4 e16 (d)
    | e8 (c) b\trill (c)
    | d16 (c b) a g f e d
    | c16 (d) e (d) c e g c \break
    | b16 (c) d (c) b d g, b
    | c16 (g) e' (g,) d' (g,) c (g)
    | b16  (c d) c b a g f
    | \mark \default e16_\markup { \tiny \italic meno \dynamic f } (f g) e c e g bes \break
    | a16 bes c8~ c16 c, (d e)
    | f (g a) f d f a c
    | b16 c d8~ d16 d (e f)
    | g8 g4 f16 (e)
    | f8 f4 e16 (d) \break
    | e8 d16 (c) e (d) c (b)
    | c16 (g) e c bes'4\upbow~ (
    | bes16 g) e c a'4\downbow~ (
    | a16 f) d b g'4\upbow~ (
    | g16 e) c a f'4\downbow~ ( \break
    | f16 g) b d g\> (f) ees-2 d-1
    | ees16-1\p f g4 f16 (ees)
    | d16 ees f4 ees16\f (d)
    | f16 (e) d (c) g8 b
    | \appoggiatura { c,16 e g } c2 \fine \pageBreak
  }
}


andanteBassNotes =
\relative {
  \autoBreaksOff
  \set Score.rehearsalMarkFormatter = #format-mark-alphabet
  \set Staff.ottavationMarkups = #ottavation-ordinals
  \clef bass
  \time 12/8
  \key a \minor
  \partial 8 e8\p\upbow
  \autoLineBreaksOff
  | a8.\tenuto (c16\tenuto) b8 a8 a32 (b c16 b8) \appoggiatura { d,16 e } f8.\tenuto (e16\tenuto) d8  \appoggiatura d8 c \trill b16 (a) a'8~
  | a8 g16 (fis) g8~ g8 fis32 (e dis16) e8~ e16 c' (b) a (b) c dis,? (e fis a\upbow g fis) \break
  | g16 (a) b8 \appoggiatura e dis e4.~ e8 (dis\tenuto\downbow) fis~ fis16 dis? (e fis) g8
  | \appoggiatura g\f fis4. e4.~ e8 d!16 (cis) d8 cis fis,!\staccato (ais\staccato)
  | b4.~ b16 fis'\p (e d cis b) fis'8 fis, \acciaccatura b ais\trill b4 r8 \break
  | r2. r4 r8 r4 d8
  | \mark 10 g8.\tenuto\mf (b16\tenuto) a8 g g32 (a b16 a8) \appoggiatura { c,16 d} e8.\tenuto (d16\tenuto) c8 \acciaccatura c8 b8\trill a16 (g) a8
  | b16 (a) c (b) e (d) d (c) e (d) c (b) a (g) fis (g) a (fis) d4 r8 \break
  | a'4.\p\upbow  g4.~ g8 f16 (e f8) \appoggiatura f e4\trill a8
  | d8.\tenuto (f16\tenuto) e8 d8 d32 (e f16 e8) \appoggiatura { g,16 a } bes8.\tenuto (a16\tenuto) g8 \acciaccatura g f e16 (d) d'8~ \break
  | d8 c16 (bes) c8~ c8 bes!32 (a g16) a8~ a8 \acciaccatura g f\trill\> (e16 d) d4\! a'8\upbow
  | \appoggiatura a gis8.\tenuto (f'16\tenuto\cresc) e8\! \acciaccatura d c8\trill b16 (a) \appoggiatura { a b } c8 \appoggiatura c\upbow bes8.\trill a16 bes8 a\downbow (g16 f)  g\mordent\upbow (f32 g) \break
  | a16 bes c8 bes a d16\downbow (c bes a) g (f) bes (a) g (a) f4 r8
  | r2. r4 r8 r4 g8\mf
  | \mark \default c8.\tenuto (e16\tenuto) d8 c c32 (d e16 d8\staccato) d8.\tenuto-1 (f16\tenuto-2) e8-1 d8-\plus d32 (e-1 f16-2 e8\staccato-\plus) \break
  | e8\cresc-\plus e32 (f-1 g16-3 f8\staccato-\plus) f8-\plus f32 (g-1 a16-3 g8\staccato-1) \appoggiatura f-2 e8.-1\tenuto\trill (d16\tenuto) c8 bes\f \appoggiatura bes\upbow a4~\trill
  | a8. b32 (cis d16 e) f8\upbow \appoggiatura f\downbow e4~ e8. d32\upbow-4 (c-2 b-1 c-2 d16-4) gis,4 e8 \break
  | a8.\tenuto (c16\tenuto) b8 a8 a32\upbow (b c16 b8) \appoggiatura { d,16 e } f8.\tenuto (e16\tenuto) d8 \appoggiatura d8\downbow cis\trill \(b16 (a\upbow)\) a'8
  | \tuplet 3/2 {f'16\downbow (e d)} d8\upbow \acciaccatura d\downbow\> cis\trill d4.~d2.-\parenthesize\downbow ~
  | \mark \default d8.\p cis16 (e d) e4.~ e16\< cis (d e) f8~ f4.~\! \break
  | f16 e32\upbow (d c16 b a gis) e'4.~ e16 g! (f e d cis) d4.~
  | d8 c!16 (b) c8~ c b32 (a gis16) a8~ a16 f'\upbow (e) d (e) f gis,! (a b) d (c b) \break
  | c16 (d e8) \ottava 1 gis8_\markup {\teeny { \italic { 8\super{"va"} "ad lib" } } }\mordent a4.~\> (a8 gis\p) b8~ b16 gis? (a b) c8
  | bes4. a8. g16 (bes a) g (e f a g f) \appoggiatura f8 e4 \ottava 0 d16 (e32 f) \break
  | e8 gis, a d16 (c d f e d) \appoggiatura d8\> c8.\tenuto\trill (b16\tenuto) c8 b4 e,8\p
  | \mark \default a8.\tenuto (c16\tenuto) b8 a a32 (b c16 b8\staccato) b8.\tenuto (d16\tenuto) c8 b b32 (c d16 c8\staccato) \break
  | cis8\< cis32 (d e16 d8\staccato) dis dis32 (e fis16\! e8\staccato) \appoggiatura d\> c8.\trill\tenuto (b16\tenuto) a8 a4.~
  | a1.\trill\!~
  | a4.-\parenthesize\upbow~a16 gis (b a) b8\upbow~ b16 e\upbow e,8 gis!8\trill \appoggiatura { a,16 c e} a4\fermata \fine
  \autoLineBreaksOn
}

allegroIIBassNotes =
\relative {
  \autoBreaksOff
  \clef bass
  \time 6/8
  \key c \major
  \set Score.rehearsalMarkFormatter = #format-mark-alphabet
  g8\f c\upbow d\upbow e4 r8
  | g,8 d'\upbow e\upbow f4 r8
  | c16-2\2 d-\plus\1 e-1 f-2 d e c d e f d e
  | c16 d e d e f d e f d e f \break
  | e8 g,16 a g8 g8 e'16 (d) c e
  | d8 g,16 a g8 g f'16 (e) d f
  | e16-2 f-4 g-1 a-3 f-\plus g-1 e-3 f-\plus g-1 a-3 f-\plus g-1 \break
  | e16-3\2 f-\plus g-1 f-\plus g-1 a-3 d,-1\2 e-3 f-\plus e-3 f-\plus g-1
  | c,16-2\2 d-\plus\1 e-1 d-\plus e-1 f-3 b,-1 c-2 d-\plus c-2 d-\plus e-1
  | a,16-1\2 b-2 c-4 b-2 c-4 d-3\flageolet b8 a16 (g) c8~ \break
  | c8 \acciaccatura c b8.\trill (a32 b) c16 e, f g a g
  | a16 b a g fis e fis8 g16 a b8
  | a16 g \acciaccatura g8 fis8.\trill\tenuto (g16-.) g8 g'4~\trill\downbow
  | g8 fis4~\trill fis8 e4~\trill
  | e8 d4~\trill d8 c4~\trill \break
  | c16 a b c d c d e \acciaccatura b8 a8.\trill\tenuto\downbow (g16-.\upbow)
  | \mark 14 g8\p\downbow d16\upbow e d8 d b'16 (a) g b
  | a8 d,16 e d8 d c'16\upbow (b) a c
  | b16 c d e c d b c d e c d \break
  | b16 c d b c d c4 r8
  | e,8 a b c4 r8
  | e,8 b' c d4 r8
  | a16 b c d b c a b c d b c
  | a8 e'\upbow a\upbow \acciaccatura g8-2 fis4~\trill-1 fis16 (e32 fis) \break
  | g4.~ g8 g16 (a) bes8
  | a8. g16 f e f g \acciaccatura f8 e8.\trill\tenuto (d16-.)
  | \mark \default d2.~
  | d2.~
  | d2.~
  | d4.~ d8 g 16 f e d \break
  | c8 g16 a g8 g e'16 (d) c e
  | d8 g,16 a g8 g f'16 (e) d f
  | e16 f g a f g e f g a f g \break
  | e16-\plus f-1 g-3 e f g a, b c a b c
  | d4.~ d16 e f d e f
  | b,16 c d b c d g,4.~
  | g16 a b g a b e, f g e f g \break
  | c,4. (c'16) d e c d e
  | a,16 b c a b c d e f d\cresc e f\!
  | b,16 c d b c d e f g e f g
  | c,16 d e c d e  f4.~ \break
  | f16 e f g e f d e f g e f
  | \mark \default d8 g,16 a g8 g f'16 (e d f)
  | \appoggiatura f8 e2.~\trill
  | e8 f,16 g f8 f e'16 (d) c e
  | \appoggiatura e8 d2.~\trill \break
  | d8 e,16 f e8 e d'16 (c) b d
  | \appoggiatura d8 c2.~\trill
  | c8 d,16 e d8 d c'16 (b) a c
  | \appoggiatura c8 b2.\trill
  | \mark \default r8 g16\f a g8 g e'16 (d) c e \break
  | d8 g,16 a g8 g f16 (e) d f
  | e16 f g a f g e f g a f g
  | e16 f g e f g f g a f g a \pageBreak
  | d4.~ d16 e f d e f
  | b,16 c d b c d g,4.~
  | g16 a b g a b e, f g e f g
  | c,4.~ c16 d e c d e \break
  | f16 g a f g a d, e f d e f
  | g16 a b g a b e, f g e f g
  | a bes c d bes c  a bes c a bes c
  | f,16 g a bes g a f g a f g a \break
  | d,16 e f d e f e8 g c
  | b8 d b g b d g2.~
  | g8 e c f d b
  | e8 c a d b g
  | c8 a f  b16 c d8 g, \break
  | c16 d \acciaccatura c8 b8.\trill\tenuto (c16-.) c8 e,16 f e8
  | \mark \default e8 c'16 (b) a c b8 e,16 f e8
  | e8 d'16 (c) b d c d e f d e
  | c16 d e f d e c b a g fis e \break
  | fis8 b fis g c g
  | a8\downbow a'4\upbow~ (a16 g\tenuto) fis\downbow e\upbow fis8\downbow~
  | fis8 e\upbow dis\upbow e\downbow b <<dis!-1\downbow fis-3>>
  | <<
    \voiceOne {
      g4.-1 g4. (
      | fis4.) fis4. (
      | e4.) e4. (
      | dis8) s8 s8 s4.
    }
    \new Voice {
      \voiceTwo
      e4.-3 c4.~-\plus
      | c4. b4.~
      | b4. a4.~ \break
      | a16 b16 c d b c a b c a b c
    }
  >> \oneVoice
  | fis,16 g a b g a fis g a fis g a
  | dis,8 cis16 dis b8 b g'16 (fis) e g
  | cis,8 b16 cis a8 a8 a'16 (g) fis a \break
  | dis,16 e fis dis e dis e fis \acciaccatura e8 dis8.\trill\tenuto e16-.
  | \mark \default e4 r8 r fis8 fis,
  | b4 r8 r e8 e,
  | a4 r8 r b' b,
  | e4 r8 r a8 a,
  | d4 r8 r b8 b' \break
  | c4 r8 r a, a'
  | bes4 r8 r gis,8 gis'8
  | a4 r8 r a8 a,
  | a4 r8 r8 d'8 d,
  | a4 r8 r8 d'8 d,
  | d4 r8 r8 d'8 d, \break
  | d8 d' d, fis, fis' fis,
  | bes8 bes' ees cis d d,
  | \mark \default g8 d16 e d8 d b'16 (a) g b
  | a8 d,16 e d8 d c16 (b) a c \break
  | b'16 d (b g f) e (f) d' (b g f) e (
  | f16) g g b b d d (f32 e f16) d b g
  | e'16 g (e c bes) a (bes) g' (e c bes) a ( \break
  | bes16) c c e e g g (bes32 a bes16) g f c
  | d16 e (cis a g) f (g) e' (cis a g) f (
  | g16) a a cis cis e e (g32 f g16) e cis a \break
  | d,16 a' (d f) gis, (a) c, a' (c e) gis, (a)
  | b,16 a' (b d) gis, (a) e f32 (e d16 c b) d
  | c16 a32 (b c16 d e f) g (a bes) g e g \break
  | a16 a32 (bes c16) a e f bes bes32 (c d16) g,32 (a b16) g
  | e'16 bes32 (c d16) g,32 (a bes16) g f' bes,32 ( c d16) g,32 (a bes16) g \pageBreak
  | g'16 g32 (f e16) e32 (d c16) c32 (bes a16) a32 (bes c16) f, c e
  | \mark \default f,8 f' g\trill a4 r8
  | c,8 g' a\trill bes4 r8
  | f16 g a bes g a f g a bes g a \break
  | f16 g a g f e d8 r8 r8
  | r8 g16 a g8 g8 e'16 (d) c e
  | d8 g,16 a g8 g f'16 (e) d f
  | e16 f g a f g e f g a f g \break
  | e16 f g f g a d, e f e f g
  | c,16 d e d e f b, c d c d e
  | a,16 b c b c d b8 a16 (g) c8~ \break
  | c8 \acciaccatura c8 b8.\trill (a32 b) c8 e a~
  | a8 d, g~ g c, f~
  | f8 b, e~ e a, d~ (
  | d16 c\tenuto) b a g f g a \acciaccatura e8 d8.\trill\tenuto (c16-.)
  | \appoggiatura { c e g } c2. \fermata \fine
}


\header {
  title = "Sonata II in D major"
  opus = "BWV 1028"
  composer = "Johann Sebastian Bach"
  instrument = "Contrabass"
  meter = \soloTuning
  arranger = \markup { \small "(1685 - 1750)" }
  copyright = \markup { \tiny \italic "Engraving Ⓒ Mark Tomko, 2024" }
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}

\book {
  \bookOutputSuffix "edited"
  \score {
    \layout {
      top-margin = 0.0
    }
    \header {
      piece = "Adagio"
    }
    \new Staff {
      \new Voice {
        \romanStringNumbers
        \set stringNumberOrientations = #'(down)
        \adagioBassNotes
      }
    }
  }

  \score {
    \header {
      piece = "Allegro"
      opus = ""
    }
    \new Staff {
      \new Voice {
        \romanStringNumbers
        \set stringNumberOrientations = #'(down)
        \allegroBassNotes
      }
    }
  }

  \score {
    \header {
      piece = "Andante"
      opus = ""
    }
    \new Staff {
      \new Voice {
        \romanStringNumbers
        \set stringNumberOrientations = #'(down)
        \andanteBassNotes
      }
    }
  }

  \score {
    \header {
      piece = "Allegro"
      opus = ""
    }
    \new Staff {
      \new Voice {
        \romanStringNumbers
        \set stringNumberOrientations = #'(down)
        \allegroIIBassNotes
      }
    }
  }
}

\book {
  \score {
    \layout {
      top-margin = 0.0
    }
    \header {
      piece = "Adagio"
    }
    \new Staff {
      \new Voice {
        \omit Voice.StringNumber
        \omit Staff.Fingering
        \set scriptDefinitions = #(cons*
                                   `(upbow . ,(acons 'stencil #f (assoc-get 'upbow default-script-alist)))
                                   `(downbow . ,(acons 'stencil #f (assoc-get 'downbow default-script-alist)))
                                   default-script-alist)
        \adagioBassNotes
      }
    }
  }

  \score {
    \header {
      piece = "Allegro"
      opus = ""
    }
    \new Staff {
      \new Voice {
        \set scriptDefinitions = #(cons*
                                   `(upbow . ,(acons 'stencil #f (assoc-get 'upbow default-script-alist)))
                                   `(downbow . ,(acons 'stencil #f (assoc-get 'downbow default-script-alist)))
                                   default-script-alist)
        \allegroBassNotes
      }
    }
  }

  \score {
    \header {
      piece = "Andante"
      opus = ""
    }
    \new Staff {
      \new Voice {
        \set scriptDefinitions = #(cons*
                                   `(upbow . ,(acons 'stencil #f (assoc-get 'upbow default-script-alist)))
                                   `(downbow . ,(acons 'stencil #f (assoc-get 'downbow default-script-alist)))
                                   default-script-alist)
        \andanteBassNotes
      }
    }
  }

  \score {
    \header {
      piece = "Allegro"
      opus = ""
    }
    \new Staff {
      \new Voice {
        \set scriptDefinitions = #(cons*
                                   `(upbow . ,(acons 'stencil #f (assoc-get 'upbow default-script-alist)))
                                   `(downbow . ,(acons 'stencil #f (assoc-get 'downbow default-script-alist)))
                                   default-script-alist)
        \allegroIIBassNotes
      }
    }
  }
}
