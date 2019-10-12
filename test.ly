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

\paper {
  system-system-spacing.minimum-distance = #30
}

partOne = {
  \drummode {
    \override Beam.damping = #8
    \override Stem.details.beamed-lengths = #'(10 . 10)
    \override Rest.Y-offset = #4.5
    \override Stem.stemlet-length = #0.75
    \tuplet 5/4 {
      r16 [ r r tomfh tommh ]
    }
    \tuplet 5/4 {
      bd [ r bd r r ]
    }
    \tuplet 5/4 {
      r [ r r tomfl r ]
    }
    \tuplet 5/4 {
      r [ r bd tomfh r ]
    }
    \tuplet 5/4 {
      r tomfh r r r
    }
    \tuplet 5/4 {
      r r tomfl tomh tomfh
    }
    \break
    \tuplet 5/4 {
      r r r toml tomh
    }
    \tuplet 5/4 {
      bd tomfh r tomh r
    }
    \tuplet 5/4 {
      tomfl tommh tomfh tomfh r
      r r tomfh r bd
      tomfh tomfh r tomh r
      r bd tomh tommh r
    }
    \break
    \tuplet 5/4 {
      r r tomh r r
      r r tommh tomfh r
      tomfh tomfh r tomfh r
      tomfh tommh bd r bd
      tomfl r bd tomfh r
      tomfh r r tomfl tomh
    }
    \break
    \tuplet 5/4 {
      tomfh toml r tomh r
      bd r tomfh tomh tomfl
      tommh tomfh r tomfh r
      r r tomfh bd tomfh
      r r r tomfh tomh
      r r r bd tomh
    }
    \break
    \tuplet 5/4 {
      tomml tomh tommh r tomfh
      r r r tomfh r
      r r tomfh r r
      tomfh tomfh r tommh r
      r r bd r bd
      tomfl r bd r r
    }
    \break
    \tuplet 5/4 {
      tomfh r tomfh tomfl tomh
      tomfh r toml tomh bd
      tomfh tomh r tomfl tomh
      r r r tommh tomfh
    }
    { r r bd r }
    { r bd bd r } \bar "||"
    { r bd r r }
    \break
  }
}

partTwo = {
  \drummode {
    \override Beam.damping = #8
    \override Stem.details.beamed-lengths = #'(10 . 10)
    \override Rest.Y-offset = #-4.5
    \override Stem.stemlet-length = #0.75
    tomml16 [ r tomh tommh ]
    tomfl [ r r tommh ]
    bd [ r r tomml ]
    r [ r r tomfl ]
    r [ toml r r ]
    r [ tomml r r ]
    \break
    r [ r r bd ]
    r [ r tomml bd ]
    r [ tomfl r tomh ]
    r [ toml r r ]
    tomh [ tomfl r r ]
    r [ bd tomml r ]
  }
}

\new DrumStaff <<
  \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
  \time 1/4
  \new DrumVoice { \stemUp \partOne }
  \new DrumVoice { \stemDown \partTwo }
>>

\layout {
  \context {
    \DrumStaff
    \numericTimeSignature
  }
}

