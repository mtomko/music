\version "2.24.3"

\header {
  title = "Sonata II in D major"
  opus = "BWV 1028"
  composer = "Johann Sebastian Bach"
  instrument = "Contrabass"
  tagline = #f
  meter = \markup {
    \italic \tiny Tuning
    \score {
      \layout {
        indent = 0.0
      }
      \header {
        piece = "Tuning"
        opus = ""
      }
      \new Staff \with {
        \magnifyStaff #4/7
      } {
        \new Voice {
          \relative {
            \omit Score.TimeSignature
            \omit Score.BarLine
            \clef bass
            <<fis,1 b e a>>
          }
        }
      }
    }
  }
  arranger = \markup { \tiny "(1685 - 1750)" } 
  copyright = \markup { \small \italic "Engraving by Mark Tomko" }
}

\paper {
  #(set-paper-size "letter")
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
        \relative {
          \set Score.rehearsalMarkFormatter = #format-mark-alphabet
          \clef bass
          \time 3/4
          \key c \major
          | c'4 r8 g a8.\trill (b32 c)
          | \appoggiatura f,8 e8\trill (d16 c) c'2~
          | c4~ c16 b (c e) d (c b c)
          | \appoggiatura c8 b\trill (a16 g) r4 r4 \break
          | g'4 r8 d e8. (fis32 g)
          | \appoggiatura c,8 b\trill (a16 g) cis2
          | d8 a f'16 gis, b (c!) d (f) e (d)
          | \appoggiatura d8 c\trill (b16 a) dis4 r
          | e4 r8 b c16 (e) dis (e) \break
          | \appoggiatura a,8 g\trill (fis16 e) e'2~
          | e8. (fis32 g) fis16 (e d c) b (c d b)
          | \appoggiatura a8 gis\trill (fis16 e) a4~ a16 f' (e d)
          | c16 (b) c16 (a) \appoggiatura a8 gis4.\trill (a8) \break
          | \mark \default a4 r r
          | r4 r8 a8 \appoggiatura g8 fis8. (e32 d)
          | b'8\mordent (c16 d)) g,2~
          | g16 g (a bes e,) e (f g f)  e (d c)
          | a'8\mordent (bes16 c) f,2~ \break
          | f16 f (g a g) b! (d c b) a (g f16)
          | e16 (a) g\tenuto f\tenuto e4 \appoggiatura e8 d8.\trill (c16)
          | c2.~
          | c4. c'16 (b c e d8)
          | c4 (b2) \bar "||"
        }
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
        \relative {
          \clef bass
          \time 2/4
          \key c \major
          \set Score.rehearsalMarkFormatter = #format-mark-alphabet
          \set Score.currentBarNumber = #24
          \repeat volta 2 {
            c'16 d e4 d16 (c)
            | b16 c d4 c16 (b)
            | c16 (g) e' (g,) d' (g,) c (g)
            | b8 g b d
            | e16 f g4 f16 (e)
            | d16 e f4 e16 (d) \break
            | e8 (c) b\trill (c)
            | d16 (c b)  a g f e d
            | c8 c'16 b c4~ (
            | c16 bes\tenuto) a c f c a f
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
            | bes16 (a) g (a) f a c f \break
            | \mark \default d8 f, bes d~ (
            | d16 c) bes (a) g (a bes) d
            | cis8 a e e'~
            | e8 a, d16 e f8~ (
            | f16 e) d c b8 e~ (\break
            | e16 d) c b a8 f'8~
            | f16 gis, (a) b e,8 gis
            | a16 b c4 b16 (a)
            | \mark \default g16 (fis e d) e (fis g a)
            | b16 (c d) e d c b a \break
            | c16 (b) a (b) g4
            | r8 d'16 e f8 r8
            | r8 e16 f e (d) c b
            | c8 e a4~
            | a16 fis (g) e \appoggiatura e8 dis8.\trill (e16)
            | e2 \break
            | \mark \default e16 f g4 f16 (e)
            | d16 e f4 e16 (d)
            | e8 (c) b\trill (c)
            | d16 (c b) a g f e d
            | c16 (d) e (d) c e g c \break
            | b16 (c) d (c) b d g, b
            | c16 (g) e' (g,) d' (g,) c (g)
            | b16  (c d) c b a g f
            | \mark \default e16 (f g) e c e g bes \break
            | a16 bes c8~ c16 c, (d e)
            | f (g a) f d f a c
            | b16 c d8~ d16 d (e f)
            | g8 g4 f16 (e)
            | f8 f4 e16 (d) \break
            | e8 d16 (c) e (d) c (b)
            | c16 (g) e c bes'4~ (
            | bes16 g) e c a'4~ (
            | a16 f) d b g'4~ (
            | g16 e) c a f'4~ ( \break
            | f16 g) b d g (f) ees d
            | ees16 f g4 f16 (ees)
            | d16 ees f4 ees16 (d)
            | f16 (e) d (c) g8 b
            | \appoggiatura { c,16 e g } c2 \fine \pageBreak
          }
        }
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
        \relative {
          \set Score.rehearsalMarkFormatter = #format-mark-alphabet
          \clef bass
          \time 12/8
          \key a \minor
          \partial 8 e8
          \autoLineBreaksOff
          | a8.\tenuto (c16\tenuto) b8 a8 a32 (b c16 b8) \appoggiatura { d,16 e } f8.\tenuto (e16\tenuto) d8  \acciaccatura d8 c \trill b16 (a) a'8~
          | a8 g16 (fis) g8~ g8 fis32 (e dis16) e8~ e16 c' (b) a (b) c dis,? (e fis a g fis) \break
          | g16\< (a) b8 \appoggiatura e dis\! e4.~ e8 (dis\tenuto) fis~ fis16 d (e fis) g8
          | \appoggiatura g fis4.\f e4.~ e8 d!16 (cis) d8 cis fis,!\staccato (ais\staccato)
          | b4.~ b16 fis'\p (e d cis b) fis'8 fis, \acciaccatura b ais\trill \appoggiatura { gis ais } b4 r8 \break
          | r2. r4 r8 r4 d8\mf
          | \mark 10 g8.\tenuto (b16\tenuto) a8 g g32 (a b16 a8) \appoggiatura { c,16 d} e8.\tenuto (d16\tenuto) c8 \acciaccatura c8 b8\trill b16 (a) b8
          | b16 (a) c (b) e (d) d (c) e (d) c (b) a\> (g) fis (g) a (fis) d4\! r8 \break
          | a'4.\p  g4.~ g8 f16 (e f8) \appoggiatura f e4\trill a8
          | d8.\tenuto (f16\tenuto) e8 d8 d32 (e f16 e8) \appoggiatura { g,16 a } bes8.\tenuto (a16\tenuto) g8 \acciaccatura g f e16 (d) d'8~ \break
          | d8 c16 (bes) c8~ c8 bes32 (a g16) a8~ a8 \acciaccatura g f\trill\> (e16 d\!) d4 a'8
          | \appoggiatura a gis8.\tenuto (f'16\tenuto)_\markup {\italic cresc. } e8 \acciaccatura d c8\trill b16 a \appoggiatura { a b } c8 \appoggiatura c bes8.\trill a16 bes8 a (g16 f)  g\mordent (f32 g) \break
          | a16 bes c8 bes a d16\f (c bes a) g (f) bes (a) g (a) f4 r8
          | r2. r4 r8 r4 g8
          | \mark \default c8.\tenuto (e16\tenuto) d8 d d32 (e f16 d8\staccato) d8.\tenuto (f16\tenuto) e8 d8 d32 (e f16 e8\staccato) \break
          | e8_\markup { \italic cresc. } e32 (f g16 f8\staccato) f8 f32 (g a16 g8\staccato) \appoggiatura f e8.\tenuto\trill (d16\tenuto) c8 bes\f \appoggiatura bes a4~\trill
          | a8. b32 (cis d16 e) f8 \appoggiatura f e4~ e8. d32 (c b c e16) gis,4 e8\f \break
          | a8.\tenuto (c16\tenuto) b8 a8 a32 (b c16 b8) \appoggiatura { d,16 e } f8.\tenuto (e16\tenuto) d8 \acciaccatura d8 cis\trill b16 (a) a'8
          | \tuplet 3/2 {f'16 (e d)} d8 \acciaccatura d \afterGrace cis~\trill { b16 cis } d4.\>~d2.~\p
          | \mark \default d8. cis16 (e d) e4.~ e16 cis (d e) f8~ f4.~ \break
          | f16 e32 (d c16 b a gis) e'4.~ e16 g! (f e d cis) d4.~
          | d8 c!16 (b) c8~ c b32 (a gis16) a8~ a16 f' (e) d (e) f gis,! (a b) d (c b) \break
          | c16 (d e8) \afterGrace gis8~ { fis gis } a4.~ (a8 gis) b8~ b16 g (a b) c8
          | bes4. a8. g16 (bes a) g (e f a g f) \appoggiatura f8 e4 d16 (e32 f) \break
          | e8 gis, a d16 (c d f e d) \appoggiatura d8 c8.\tenuto\trill\> (b16\tenuto) c8 b4 e,8\p
          | \mark \default a8.\tenuto (c16\tenuto) b8 a a32 (b c16 b8\staccato) b8.\tenuto (d16\tenuto) c8 b b32 (c d16 c8\staccato) \break
          | cis8\< cis32 (d e16 d8\staccato) dis dis32 (e fis16 e8\staccato) \appoggiatura d c8.\trill\tenuto\! (b16\tenuto) a8\> a4.~
          | a1.~
          | a4.\!~a16 gis (b a) b8~ b16 e e,8 \afterGrace gis!8\trill~ {fis gis} \appoggiatura { a,16 c e} a4\fermata \bar "||"
          \autoLineBreaksOn
        }
      }
    }
  }
}
