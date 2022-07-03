\version "2.18.2"
%\include "articulate.ly"

%\language "italiano"
%\include "lv-goldenage.ily"
\paper {
  #(set-paper-size "a4")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  title = "Improvvisando"
  instrument = "Chitarra"
  composer = "Federico Simonetta"
  arranger = "Ottobre 2015"
  copyright = \markup "Licenza Creative Commons Attribuzione - Non commerciale - Condividi allo stesso modo 4.0 Internazionale."
  tagline = "Music engravig by LilyPond and Frescobaldi"
}


global = {
  \key g \major
  \time 4/4
  \override StringNumber.font-size = #-6
  \override StringNumber.slur-padding = #1.5
  \set stringNumberOrientations = #'(left )
  \override TupletBracket.bracket-visibility = #'f

}

classicalGuitarVoiceOne = \relative c' {
  \global
  \override Slur.direction = #1
  \repeat volta 2 { r16 <e\1>8 e e e e e e e16~  }    | % 1
  \repeat volta 2 { e <g\1>8 g g g g g g g16~   }   | % 2
  \repeat volta 2 {g <e\1>8 e e e e e e e16~    }  | % 3
  \repeat volta 2 {e <a\1>8 a a a a a a a16~    }  | % 4
  \repeat volta 2 {a <e\1>8 e e e e e e e16~    }  | % 5
  \repeat volta 2 {e <b'\1>8 b a a g g e e16~  }    | % 6
  \repeat volta 2 {e16 <e\1>8 e e  e e e e    \once \override Tie.direction = #DOWN e16~ }    | % 7

  \repeat volta 2 {e16 e8\0 e e e e e e e16}  | % 8
  \repeat volta 2 {r16 <fis a>8 <fis a> a a <fis a> <fis a> a a16~}| %9
  \repeat volta 2 {a16 a,8 a a a a a a a16} | % 10

  \override FootnoteSpanner.annotation-line = #f

  \repeat volta 2 { g'16( e) fis( e) \times 8/12 { \footnote "*" #'(-0.5 . 3) \markup { \italic "* Il ritmo è il medesimo delle precedenti terzine contro duine" } g16.( e32) a8~ a32( e16.) } bes'16( e,) a( e) \times 8/12 {g16.( e32) fis8~ fis32(  \once \override Tie.direction = #DOWN e16.~)} } | %11
  \repeat volta 2 {e16 e8\0 e e e e e e e16~}  | % 12
  \repeat volta 2 {e16 e8 e e e e e e e16}  | % 13
  \repeat volta 2 {\times 2/3{r \footnote "**" #'(-1 . 7) \markup { \italic "** Il Si entra un poco alla volta" } b e} \omit TupletNumber \omit TupletBracket \repeat unfold 7 \times 2/3{r b e}} | % 14
  \repeat volta 2 {\repeat unfold 8 \times 2/3{r b e}}  | % 15
  \repeat volta 2 {\times 2/3{r b \footnote "***" #'(0.5 . 3) \markup { \italic "*** Il Mi esce un poco alla volta"} e} \repeat unfold 7 \times 2/3{r b e~}}  | % 16
  \undo \omit TupletBracket \undo \omit TupletNumber

  \repeat volta 2 { e16 b8 b b d c b b b16~}  | % 17
  \repeat volta 2 { b16 b e fis8 b,16 e g8 b,16 e fis8 b,16 e g16\glissando}  | % 18
  \omit Staff.TimeSignature
  \time 1/4 a4\fermata
  \bar ".|:"
  \time 4/4
  \repeat volta 2 { g16( e) fis( e) \times 8/12 { g16.( e32) a8~ a32( e16.) } bes'16( e,) a( e) \times 8/12 {g16.( e32) fis8~ fis32( e16.~)} } | %19
  \repeat volta 2 {e16 b'8\1 b a a g g e e16~  }    | % 20
  \repeat volta 2 {e16 a,8 a a a a a a a16~} | % 21
  \repeat volta 2 {a16 e'8\2 e e e e e e e16~} | % 22
  \repeat volta 2 {e16 b8\2 b b b b b b b16} | % 23
  \repeat volta 2 { g16\4( e\5) fis( e) \times 8/12 { g16.( e32) a8~ a32( e16.) } bes'16( e,) a( e) \times 8/12 {g16.( e32) fis8~ fis32( e16.)} } | %24
  g'16\1( e\2) fis( e) \times 8/12 { g8.( e16) a4~ a16( e8.) } bes'8( e,) | % 25
  a4\fermata a8\1 g\2 fis\2 d\3\glissando e\3 a\2| % 26
  g\2 fis\2 d\2 e\2 a\1_"rallentando e sparendo" g\2 fis\2 d\3\glissando | % 27
  e\3 a g fis d e a g | % 28
  fis d e a g fis d e_"etc." \bar "|." % 29
}

classicalGuitarVoiceTwo = \relative c {
  \global
  s1 * 8
  \once \override NoteHead.X-offset = #-2
  \repeat volta 2 {c'1} | %9
}

classicalGuitarVoiceThree = \relative c' {
  \global
  \override TupletBracket.direction = #-1

  \repeat volta 2 { <e\2>8 e e e \times 2/3{e8 e4  } e8^"rip. ad lib." e } | % 1
  \repeat volta 2 { <e\2> e e e \times 2/3{e8 e4  } e8 e   }   | % 2
  \repeat volta 2 {<e\2>[ e e] \times 2/3{e8 e4  } e8 e e    }  | % 3
  \repeat volta 2 {<e\2>[ e e] \times 2/3{e8 e4  } e8 e e   }   | % 4
  \repeat volta 2 {<e\2> e e e \times 2/3{e8 e4  } dis8 dis }     | % 5
  \repeat volta 2 {e\2 e e e \times 2/3{e8 e4  } b8 b     } | % 6
  \repeat volta 2 { <g\3>8 g \times 2/3{a8 <a b>4  } g8 g \times 2/3{<a b e>8 <a b e>4  }   }   | % 7
  \repeat volta 2 { \times 2/3{<g'\3 b\2>8 <g b>4  } <fis a>8 <fis a> \times 2/3{<e g>8 <e g>4  } <d fis>8 <d fis> } | % 8

  \once \override TupletBracket.staff-padding = #2.5
  \repeat volta 2 { \times 2/3 {<fis b>8 <fis b>4} <d e>8 <d e> \times 2/3 {<fis b>8 <fis b>4} <d e>8 <d e>} |%9
  \repeat volta 2 { \times 2/3 {a,8 a4} bes8 bes8 \times 2/3 {c8 d4} e8 e,}| %10
  s1 | %11
  \repeat volta 2 { \times 2/3{<g''\2 b\3>8 <g b>4  } <fis a>8 <fis a> \times 2/3{<e g>8 <e g>4  } <d fis>8 <d fis> } | % 12
  \repeat volta 2 { \times 2/3{<g,\5 b\4>8 <g b>4  } <fis a>8 <fis a> \times 2/3{<e g>8 <e g>4  } <d fis>8 <d fis> } | % 13
  \repeat volta 2 { <d fis>8 <d fis>8 <d fis>8 <d fis>8 <d fis>8 <d fis>8 <d fis>8 <d fis>8} | %14
  \repeat volta 2 { <c e>8 <c e>8 <c e>8 <c e>8 <c e>8 <c e>8 <c e>8 <c e>8} | %15
  \repeat volta 2 { <fis, cis' fis>8 <fis cis' fis>8 <fis cis' fis>8 <fis cis' fis>8 <fis cis' fis>8 <fis cis' fis>8 <fis cis' fis>8 <fis cis' fis>8} | %16
  \repeat volta 2 { <e b' e>8 <e b' e>8 <e b' e>8 <e b' e>8 <e b' e>8 <e b' e>8 <e b' e>8 <e b' e>8} | %17
  \repeat volta 2 { <e b' e>4 <e b' e>4 <e b' e>4 <e b' e>4} | %18
  s4 |
  s1 | %19
  \repeat volta 2 {e''8\2 e e e \times 2/3{e8 e4  } b8 b     } | % 20
  \repeat volta 2 { \times 2/3 {a,8 a4} bes8 bes8 \times 2/3 {c8 d4} e8 e,}| %21
  \repeat volta 2 { \times 2/3 {e'8 e4} f8 f8 \times 2/3 {g8 a4} b8 b,}| %22
  \repeat volta 2 { \times 2/3{<g'\5 b\4>8 <g b>4  } <fis a>8 <fis a> \times 2/3{<e g>8 <e g>4  } <d fis>8 <d fis> } | % 23
}

classicalGuitarVoiceFour = \relative c {
  \global
  s1 * 8
  \repeat volta 2 { a1} |%9

}

\score {

  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } { \clef "treble_8" << \stemUp \classicalGuitarVoiceOne \\ \stemUp \classicalGuitarVoiceTwo \\ \stemDown \classicalGuitarVoiceThree \\ \stemDown \classicalGuitarVoiceFour >> }
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 65 4)
    }
  }

}