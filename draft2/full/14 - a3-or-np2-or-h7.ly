\version "2.19.83"
\language "english"

 \header {
  title = "14 - A3 or nP2 or H7"
}

#(set! paper-alist (cons '("my size" . (cons (* 12 in) (* 9 in))) paper-alist))

#(define mydrums '((snare           default   #f           0)))
\paper {
  tagline = ##f
  markup-system-spacing.minimum-distance = #10
  #(set-paper-size "my size")
  ragged-right = ##f
  indent = 0\mm
}

\context StaffGroup = "all" <<
	\context DrumStaff = "achilles" {
 \override Staff.StaffSymbol.line-positions = #'(0)
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
		\drummode {
      \time 30/16
  r16 r16 sn16-> r16 sn16-> sn16 sn16-> r16 r16 r16 sn16-> r16 r16 sn16 sn16-> sn16 r16 r16 sn16-> sn16 r16 r16 sn16-> r16 sn16 sn16-> r16 r16 sn16 sn16
		}
	}
	\context DrumStaff = "patroclus" {
 \override Staff.StaffSymbol.line-positions = #'(0)
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
		\drummode {
      \tuplet 35/30 {
   r16 sn16-> sn16 sn16 sn16 sn16-> r16 r16 sn16-> r16 sn16 sn16 r16 sn16-> sn16 r16 sn16 r16 r16 r16 r16 r16 r16 sn16-> sn16 r16 sn16-> r16 sn16 r16 r16 sn16-> sn16 r16 r16
   }
		}
	}
	\context DrumStaff = "hector" {
 \override Staff.StaffSymbol.line-positions = #'(0)
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
		\drummode {
      \tuplet 42/30 {
   r16 r16 r16 sn16-> r16 r16 r16 r16 r16 r16 r16 sn16-> r16 sn16 r16 r16 r16 r16 r16 sn16-> sn16 r16 r16 sn16-> r16 sn16 r16 r16 r16 r16 r16 sn16-> sn16 sn16 sn16 r16 r16 sn16-> r16 r16 sn16 r16
   }
		}
	}
>>
