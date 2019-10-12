\version "2.19.83"
\language "english"


\new StaffGroup <<
\context Staff = "ok" \relative c'' <<
  \context Voice = "voice1" {
    \voiceOne
r16 r16 c16-> r16 c16-> c16 c16-> r16 r16 r16 c16-> r16 r16 c16 c16-> c16 r16 r16 c16-> c16 r16 r16 c16-> r16 c16 c16-> r16 r16 c16 c16

  }
  \context Voice = "voice2" {
    \voiceTwo
r16 c,16-> c16 c16 c16 c16-> r16 r16 c16-> r16 c16 c16 r16 c16-> c16 r16 c16 r16 r16 r16 r16 r16 r16 r16 r16 c16-> c16 r16 c16-> r16 c16 r16 r16 c16-> c16 r16 r16

  }
>>
\context Staff = "two" \relative c'' {
  \context Voice = "voice3" {
r16 r16 r16 c16-> r16 r16 r16 r16 r16 r16 r16 c16-> r16 c16 r16 r16 r16 r16 r16 c16-> c16 r16 r16 c16-> r16 c16 r16 r16 r16 r16 r16 c16-> c16 c16 c16 r16 r16 c16-> r16 r16 c16 r16
  }
}
>>



