\version "2.19.83"
\language "english"

#(define mydrums '(
                   (bassdrum  default #f  -3)
                   (lowfloortom     default #f  -2)
                   (highfloortom     default #f  -1)
                   (lowtom     default #f  0)
                   (lowmidtom     default #f  1)
                   (himidtom     default #f  2)
                   (hightom     default #f  3)
                   ))

fifths = \drummode {
   \override Beam.damping = #8
    \override Stem.details.beamed-lengths = #'(8 . 8)
    \override Rest.Y-offset = #4.5
    \override Stem.stemlet-length = #0.75
  \tuplet 5/4 {
     r16 [ r r tomfh tommh ]
  }
}

sixteenths = \drummode {
   \override Beam.damping = #8
    \override Stem.details.beamed-lengths = #'(6 . 6)
    \override Rest.Y-offset = #-4.5
    \override Stem.stemlet-length = #0.75
  tomml16 [ r tomh tommh ]
}

\score {
  \context DrumStaff = "perc1" <<
      \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
       \new DrumVoice {\voiceOne \fifths }
       \new DrumVoice { \voiceTwo \sixteenths }
   >>
  
  \layout {
    \context {
      \Score
      \numericTimeSignature
    }
  }
}
