\version "2.19.83"
\language "english"


\context Staff = "ok" \relative c'' <<
  \time 30/16
  \context Voice = "voice1" {
    \voiceOne
    r16 r16 r16 r16 r16 r16 r16 r16 c16-> r16 r16 r16 r16 r16 r16 r16 c16-> r16 r16 c16 r16 c16-> r16 r16 r16 r16 c16-> r16 r16 r16 r16 r16 r16 r16 c16 r16 r16 r16 c16 r16
  }
  \context Voice = "voice2" {
    \voiceTwo
    r16 c,16-> c16 c16 r16 c16-> c16 r16 r16 r16 r16 r16 c16 r16 c16-> c16 r16 c16 r16 r16 r16 r16 r16 r16 r16 r16 r16 r16 c16 r16 c16-> r16 r16 r16 r16 r16 c16 r16 r16
  }
>>

