\version "2.19.83"
\language "english"


\context Staff = "ok" \relative c'' <<
  \time 30/16
  \context Voice = "voice1" {
    \voiceOne

    r16 [r16 c16-> r16 c16->  ]
    c16 [c16-> r16 r16 r16  ]
    c16-> [r16 r16 c16 c16->  ]
    r16 [r16 r16 c16-> r16  ]
    r16 [r16 c16-> r16 r16  ]
    c16-> [r16 r16 c16 r16 ]

  }
  \context Voice = "voice2" {
    \voiceTwo

      \tuplet 6/5 {
      c,16-> r16 r16 r16 r16 r16
    }
      \tuplet 6/5 {
      c16-> c16-> r16 c16 r16 r16
    }
      \tuplet 6/5 {
      c16-> r16 r16 r16 r16 c16->
    }
      \tuplet 6/5 {
      c16 r16 c16 c16-> c16 c16->
    }
      \tuplet 6/5 {
      r16 r16 r16 c16-> r16 r16
    }
      \tuplet 7/5 {
      r16 c16 c16-> r16 r16 c16 c16
      }
  }
>>

\context Staff = "ok" \relative c'' <<
  \time 30/16
  \context Voice = "voice1" {
    \voiceOne

    r16 [r16 c16-> r16 c16->  c16  ]
    c16-> [r16 r16 r16  c16-> r16  ]
    r16 [c16 c16->  r16 r16 r16  ]
    c16-> [r16  r16 r16 c16->  r16 ]
    r16  [ c16-> r16 r16 c16 r16  ]

  }
  \context Voice = "voice2" {
    \voiceTwo

    \tuplet 7/6 {
      c,16-> r16 r16 r16 r16 r16 c16->
      }
      \tuplet 8/6 {
      c16-> r16 c16 r16 r16 c16-> r16 r16
      }

    \tuplet 7/6 {
      r16 r16 c16-> c16 r16 c16 c16->
      }

      \tuplet 8/6 {
      c16 c16-> r16 r16 r16 c16-> r16 r16
    }
    \tuplet 7/6 {
      r16 c16 c16-> r16 r16 c16 c16
      }
  }
>>
