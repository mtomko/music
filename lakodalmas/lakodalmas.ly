\version "2.24.3"

\header {
  title = "44 Duos for 2 Violins"
  composer = "Béla Bartók"
  %opus = ""
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
  % see https://lilypond.org/doc/v2.24/Documentation/notation/flexible-vertical-spacing-paper-variables
  system-system-spacing.basic-distance = #16
}

menof = \markup { \small \italic meno \dynamic f }
menofma = \markup { \small \italic "meno" \dynamic f, \small \italic "ma espr." }
piup = \markup { \small \italic "più" \dynamic p }

vi = \relative {
  \time 2/4
  \key b \minor
  \clef treble
  \tempo Adagio 4 = 66
  \romanStringNumbers
  \set stringNumberOrientations = #'(down)
  \autoLineBreaksOff
  <<a'2~\f e'2~>>
  | <<a,2 e'2>>
  | <<a,2 f'2>>
  | <<
    \voiceOne {
      f8\accent ( e4.~
      | e2)
      | fis4 (e8 fis)
      | g8 (fis g4) \break
      % line 2
      | e4 (a4
      | e4. fis8)
      | g4 (a8 g)
      | fis8 (e a4
      | e4. fis8)
      | g4 (e8 a,)
      | \override TextSpanner.bound-details.left.text = \markup { \upright \bold "poco allarg." } e'8\startTextSpan (d b4 
      | d4 b~
      | b8) d4 (b8) \oneVoice \break
    }
    \new Voice {
      \stemDown a2~
      | a2
      | a2
      | a2
      % line 2
      | a2~
      | a2
      | a2
      | a2~
      | a2
      | a4 s4
      | d,2~
      | d2~
      | d8 d4.
    }
  >> \oneVoice
        % line 3
      | \stemDown d'2~\> (
      | d4 \once \override TextScript.X-offset = 6 cis8\staccato_\menofma) r8\stopTextSpan\!
      | \stemNeutral a4\accent^\markup { \bold \small "a tempo" } (b8 cis
      | d4 e)
      | e8 ([d cis b])
      | <<\voiceOne {
        a4\accent (b8 cis)
      | d4 (e)
      | e8 (d cis4)
      | b2\break
      % line 4
      | d4\accent d8 (cis
      | d4) a4
      | a8 ([d cis b])
      | d4\accent\startTextSpan d8 (cis
      | d4) a
      | a8\< (d cis4)
      | <<g2~\f g,2>>
      | <<g'2~ g,2>>
      | <<g'2\stopTextSpan g,2>>\break
      } 
      \new Voice {
        \stemDown d'2
        | d2
        | d2
        | d2\<
        | d4\! d4~
        | d4 d4 
        | d2\<
        | d4\! d4~
        | d4 d4
        | d2
      }>> \oneVoice
      % line 5
      | a'4\p^\markup { \small \bold "a tempo (tranquillo)" } ( b8 cis
      | d4 e)
      | \time 3/4 e8 ([d cis b]) r4
      | R2
      | d4\tenuto_\piup d8 (cis
      | \override TextSpanner.bound-details.left.text = \markup { \upright \bold "rall." } d4\startTextSpan a)
      | <<b2~\> d,2~>>
      | <<b'2~ d,2~>>
      | <<b'2\!\stopTextSpan d,2>> \fine \pageBreak
}

vii = \relative {
  \time 2/4
  \key b \minor
  \clef treble
  \once \override TextScript.X-offset = 2 a'4\accent\f_\markup { \italic \tiny "molto espressivo" } ( b8 cis
  | d4 e)
  | e8 ([d cis b])
  | a4\accent (b8 cis)
  | d4 (e)
  | e8 (d cis4)
  | b2
  % line 2
  | d4\tenuto\accent d8 (cis
  | d4 a)
  | a8 ([d cis b])
  | d4\tenuto\accent d8 (cis
  | d4 a)
  | a8\< (d cis4) \!
  | <<g2~ g,2~>>
  | <<g'2~ g,2~>>
  | <<g'2 g,2>>
  | R2
  | R2
  | r4 cis4_\menof
  | b4 (g8 a)
  | b4 (cis)
  | d4 (g,8 a)
  | b4 (a8 b)
  | cis4 (b8 cis)
  | d4 (d8 e)
  % line 4
  | f2~
  | f4 ees4~
  | ees4 d8 (g)
  | f8 (g aes4~
  | aes8) g (f ees)
  | d4\< (e8 fis!)
  | <<g,2~ d'2~\f>>
  | <<g,2~ d'2~\f>>
  | <<g,2 d'2\f>>
  % line 5
  | r4 a4\p (
  | b cis)
  | \time 3/4 d4 g, r
  | \time 2/4 d'\tenuto\upbow_\piup d8 (cis
  | d4 a)
  | a8 (d cis4)
  | g2~\>
  | g2~
  | g2\! \fine \pageBreak
}

\book {
  \score {
    \header {
      piece = "13. Lakodalmas"
    }
    \new StaffGroup {
      <<
        \new Staff \vi
        \new Staff \vii
      >>
    }
  }
}
