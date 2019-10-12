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
  \time 36/16
  \context Voice = "voice1" {
    \voiceOne
    \tuplet 7/9 {
      r16 c-> c-> c c-> r r
    }
    \tuplet 7/9 {
      r c-> r r c c-> c
    }
    \tuplet 7/9 {
      r r c-> c r r c->
    }
    \tuplet 7/9 {
      r c c-> r r c c
    }
  }
  \context Voice = "voice2" {
    \voiceTwo
    f,8.-> [   r8 f16-> f8->  f16 ]
    r8 [  f16-> r8  f16 r f-> f ]
    f [  f f-> f f-> f r8 f16->]
    r [ f r f f8->  r16 f f]
  }
>>
