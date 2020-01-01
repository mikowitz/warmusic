\version "2.19.83"
\language "english"

#(set-global-staff-size 17)
#(set! paper-alist (cons '("my size" . (cons (* 12 in) (* 9 in))) paper-alist))
\paper {
  #(set-paper-size "my size")
  system-separator-markup = \slashSeparator
%  annotate-spacing = ##t
  ragged-last-bottom = ##t
  % line-width = 7.5\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  bottom-margin = .5\in
  top-margin = .75\in
  tagline =##f
  indent = 0
  ragged-right = ##f
  system-system-spacing.minimum-distance = #45
  score-markup-spacing.minimum-distance = #20
  last-bottom-spacing.minimum-distance = #30
  print-page-number = ##t
      print-first-page-number = ##t
      oddHeaderMarkup = \markup \fill-line { " " }
      evenHeaderMarkup = \markup \fill-line { " " }
      oddFooterMarkup = \markup { \fill-line {
         \circle
         \pad-around #1.5
         \bold \fontsize #4 \on-the-fly #print-page-number-check-first
         \fromproperty #'page:page-number-string } }
      evenFooterMarkup = \markup { \fill-line {
        \circle
        \pad-around #1.5
         \bold \fontsize #4 \on-the-fly #print-page-number-check-first
         \fromproperty #'page:page-number-string } }
}

setGrace = #(define-music-function (parser location stemLen) (number?)
               #{
                 \once \stemDown
                 \once \override Stem.length = #stemLen
               #})

setDynOffset = #(define-music-function (parser location yOffset) (pair?)
                  #{
                    \override DynamicText.extra-offset = #yOffset
                    \override Hairpin.extra-offset = #yOffset
                  #})

