\version "2.19.83"
\language "english"

#(define mydrums '((snare           default   #f           0)))


\context StaffGroup = "all" <<
	\context DrumStaff = "achilles" {
 \override Staff.StaffSymbol.line-positions = #'(0)
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
		\drummode {
		sn16-> sn16-> sn16 sn16-> r16 r16 r16 sn16-> r16 r16 sn16 sn16-> sn16 r16 r16 sn16-> sn16 r16 r16 sn16-> r16 sn16 sn16-> r16 r16 sn16 sn16

		}
	}
	\context DrumStaff = "patroclus" {
 \override Staff.StaffSymbol.line-positions = #'(0)
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
		\drummode {
			bd16
		}
	}
	\context DrumStaff = "hector" {
 \override Staff.StaffSymbol.line-positions = #'(0)
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
		\drummode {
			bd16
		}
	}
>>

