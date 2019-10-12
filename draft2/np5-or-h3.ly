\version "2.19.83"
\language "english"

% \include "charts.ly"

% #(set! paper-alist (cons '("my size" . (cons (* 12 in) (* 9 in))) paper-alist))


% \paper {
%   tagline = ##f
%   % #(set-paper-size "my size")
%   indent = 0\in
%   left-margin = 1\in
%   top-margin = -0.5\in
%   systems-per-page = 5
% }
\context Staff = "ok" \relative c'' <<
  \time 24/16
  \context Voice = "voice1" {
    \voiceOne
    \tuplet 45/24 {
r16 c16-> c16 c16 c16 c16-> c16 c16 c16 r16 r16 c16-> r16 c16 c16 r16 c16-> c16 r16 c16 c16-> r16 r16 r16 r16 c16-> c16 c16 r16 r16 c16-> r16 r16 c16 c16 r16 c16-> r16 c16 r16 r16 c16-> c16 r16 r16
}
  }
  \context Voice = "voice2" {
    \voiceTwo
c,16-> r16 r16 r16 c16-> r16 c16 r16 c16-> c16 c16-> r16 c16 r16 r16 c16-> c16 c16 c16 c16-> r16 r16 c16 r16
  }
>>

