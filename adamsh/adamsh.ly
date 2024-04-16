\version "2.24.3"

\header {
  copyright = #f
  tagline = #f
}

\paper {
  #(set-paper-size "letter")
}


bassnotes = {
  \numericTimeSignature
  \time 7/2
  \clef bass
  \key d \major
  \relative {
    e,1\accent~e1 e1.~
    | \time 12/8 e2. e2.\accent~
    | e1.~
    | \time 9/8 e2. e4.\accent~
    | \time 2/2 e1
    | e1 \accent\break
    | \time 3/4 e2.\accent
    | e2.\accent
    | e2.\accent
    | e2.\accent
    | e2.\accent
    | \time 2/2 e1\accent
    | r4 e2.\accent~ \break
    | \time 3/4 e2.~ 
    | \time 4/2 e1~e1~
    | e1~e1~\break
    | e1~e1~
    | e1~e1~
    | e1~e1~
    | e1~e1~
    | e4 r4 r2 r2 r2
    | \compressMMRests { R1*4 }
  }
}

timpaninotes = {
  \numericTimeSignature
  \time 7/2
  \clef bass
  \key d \major
  \relative {
    <<e,2\staccatissimo e'>> <<e,2\staccatissimo e'>> <<e,2\staccatissimo e'>> <<e,2\staccatissimo e'>> <<e,2\staccatissimo e'>> <<e,2\staccatissimo e'>> <<e,2\staccatissimo e'>>
    | \time 12/8 <<e,4. e'4.>> <<e,4. e'4.>> <<e,4. e'4.>> <<e,4. e'4.>> 
    | <<e,4. e'4.>> <<e,4. e'4.>> <<e,4. e'4.>> <<e,4. e'4.>> 
    | \time 9/8 <<e,4. e'4.>> <<e,4. e'4.>> <<e,4. e'4.>>
    | \time 2/2 <<e,4 e'4>> <<e,4 e'4>> <<e,4 e'4>> <<e,4 e'4>> 
    | <<e,4 e'4>> <<e,4 e'4>> <<e,4 e'4>> <<e,4 e'4>> \break
    | \time 3/4 <<e,4 e'4>> <<e,4 e'4>>  <<e,4~ e'4~>> 
    | <<e,2 e'2>> <<e,4~ e'4~>>
    | <<e,2 e'2>> <<e,4~ e'4~>>
    | <<e,2 e'2>> <<e,4~ e'4~>>
    | <<e,2 e'2>> <<e,4~ e'4~>>
    | \time 2/2 <<e,4 e'4>> <<e,2.~ e'2.~>>
    | <<e,4 e'4>> <<e,2.~ e'2.~>> \break
    | \time 3/4 <<e,4 e'4>> <<e,2 e'2>> 
    | \time 4/2 r1 r1
    | r1 r1
    | r1 r1
    | r1 r1
    | r1 r1
    | r1 r1
    | r4 r4 r2 r2 r2
    | \compressMMRests { R1*4 }
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = "Timp."
    } <<
      \clef "bass"
      \new Voice {
        \timpaninotes
      }
    >>
    \new Staff \with {
      instrumentName = "Cb."
    } <<
      \clef "bass"
      \new Voice {
        \bassnotes
      }
    >>
  >>
}
