\version "2.19.83"
\language "english"

#(set! paper-alist (cons '("my size" . (cons (* 12 in) (* 9 in))) paper-alist))

#(define mydrums '((snare           default   #f           0)))
\paper {
  tagline = ##f
  markup-system-spacing.minimum-distance = #10
  #(set-paper-size "my size")
  ragged-right = ##f
  indent = 0\mm
}
 \header {
  title = "2 - A2 or P1"
}


\context PianoStaff = "all" <<
	\context DrumStaff = "achilles" {
 \override Staff.StaffSymbol.line-positions = #'(0)
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
%    \override Stem.color = #red
%    \override Stem.cross-staff = ##t
%    \hide Flag
%    \override Stem.length = #50
%\override Stem.Y-offset = #-40
		\drummode {
      \time 28/16
      r16
      sn16-> sn16-> sn16
      sn16-> r16 r16
      r16 sn16-> r16
      r16 sn16 sn16->
      sn16 r16 r16
      sn16-> sn16 r16
      r16 sn16-> r16
      sn16 sn16-> r16
      r16 sn16 sn16
		}
	}
	\context DrumStaff = "patroclus" {
 \override Staff.StaffSymbol.line-positions = #'(0)
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
		\drummode {
    % s16
%    \override Stem.color = #green
%    \override Stem.cross-staff = ##t
%    \hide Flag
%    \override Stem.length = #50
%\override Stem.Y-offset = #-10
%\hide TupletBracket
%\hide TupletNumber
   \tuplet 36/28 {
    \autoBeamOff
   sn16-> r16 r16 r16 r16 sn16-> sn16-> r16 sn16 r16 r16 sn16-> r16 r16 sn16 r16 sn16-> sn16 sn16 sn16 sn16-> sn16 sn16-> sn16 r16 r16 sn16-> r16 sn16 r16 sn16 sn16-> r16 r16 sn16 sn16
   }
		}
	}
	\context DrumStaff = "hector" {
 \override Staff.StaffSymbol.line-positions = #'(0)
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
		\drummode {
		}
	}
>>


