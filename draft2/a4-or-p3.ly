\version "2.19.83"
\language "english"


\context Staff = "ok" \relative c'' <<
  \time 33/16
  \context Voice = "voice1" {
    \voiceOne
r16 r16 r16 c16-> r16 r16 c16-> c16 c16-> r16 r16 r16 c16-> r16 r16 c16 c16-> c16 r16 r16 c16-> c16 r16 r16 r16 c16-> r16 c16 c16-> r16 r16 c16 c16
  }
  \context Voice = "voice2" {
    \voiceTwo
    \tuplet 39/33 {
c,16-> r16 r16 r16 r16 r16 r16 c16-> c16-> r16 c16 r16 r16 c16-> r16 r16 c16 r16 c16-> c16 c16 c16 r16 c16-> c16 c16-> c16 r16 r16 c16-> r16 c16 r16 c16 c16-> r16 r16 c16 c16
}
  }
>>

