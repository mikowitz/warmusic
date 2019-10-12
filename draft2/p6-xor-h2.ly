\version "2.19.83"
\language "english"

\context Staff = "ok" \relative c'' <<
  \time 23/16
  \context Voice = "voice1" {
    \voiceOne
    \tuplet 54/23 {
r16 c16-> r16 r16 r16 r16 r16 r16 r16 r16 r16 c16-> r16 c16-> r16 r16 r16 r16 r16 c16-> r16 r16 c16 r16 r16 r16 c16-> c16 c16 c16 r16 r16 r16 r16 c16-> c16 r16 r16 c16-> c16 r16 r16 r16 c16-> r16 c16 r16 c16 r16 c16-> r16 r16 c16 c16
}
  }
  \context Voice = "voice2" {
    \voiceTwo
c,16-> r16 r16 r16 c16-> r16 c16 c16-> c16 c16-> r16 c16 r16 r16 c16-> r16 c16 c16 c16-> r16 r16 c16 r16
  }
>>


