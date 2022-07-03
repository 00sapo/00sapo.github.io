\version "2.18.2"

\include "articulate.ly"

\paper {
  #
  (make-pango-font-tree
   "Liberation Serif"
   "Liberation Sans"
   "Liberation Mono"
   (/ (* staff-height pt) 2.5))
}

\paper {
  #(set-paper-size "a4")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
 
}


\header {
  dedication = "a Giorgio"
  title = "Ninna Nanna"
  instrument = "Chitarra"
  composer = "Federico Simonetta (1992)"
  arranger = "Aprile 2016"
  copyright = \markup "Licenza Creative Commons Attribuzione - Non commerciale - Condividi allo stesso modo 4.0 Internazionale."
  tagline = "Music engravig by LilyPond and Frescobaldi"
}

global = {
  \key bes \major
  \numericTimeSignature
  \time 3/4
  \partial 8
  \tempo "Blues"
}

classicalGuitar = \relative c' {
  \global
  

  << 
    {r8} \\
    {<<g,~ c~ f~ b~>>} 
  >> |	%0
  << 
    {b ees8  r8 e8 \times 2/3 {  r g4}} \\
    {<<g,,4 c f b>> <<c, g' bes>> <<b, f' a>>} 
  >> |	%1
  << 
    {g4. g'8 e_(\bendAfter #-3 d) } \\
    { <<c,4. e g>> }
  >> |	%2
  << 
    {c8[ a]_( g a4) a'8~} \\
    {d,,2.  }
  >> |	%3
  << 
    {a''8[ e] \bendAfter #-3 d[ b]_( bes[) b~]} \\
    {a,2 d8 <<g,8~ c~ f~ b~>>  }
  >> |	%4
  << 
    {b[ ees8 r e r g]} \\
    {<<g,,4 c f b>> <<c, g' bes>> <<b, f' a>>} 
  >> |	%5
  << 
    {g4  } \\
    { <<c,8 e g>> a,8^( bes b) c4~ \bendAfter #1 }
  >> |	%6
  << 
    { } \\
    { c8[ \bendAfter #-1 e]^( d[) des] fis,[ <<g8~] c~ f~ b~>>}
  >> |	%7
  << 
    {b[ ees8 r e r g]} \\
    {<<g,,4 c f b>> <<c, g' bes>> <<b, f' a>>} 
  >> | 	%8
  << 
    {g4.  } \\
    { <<c, e g>> \override Staff.NoteHead.style = #'harmonic-mixed \ottava #2 b''8\1_"VII" c\4^"X" aes\1_"IX" }
  >> |	%9
    << 
    { b\2^"XII" f\3_"X" aes\1^"IX" d,\4_"V" ees\2^"IX" \ottava #0 s8} \\
    {  s2 s8 \override Staff.NoteHead.style = #'default <<g,,,8~] c~ f~ b~>>}
  >> |	%10
  << 
    {b[ ees8 r e r g]} \\
    {<<g,,4 c f b>> <<c, g' bes>> <<b, f' a>>} 
  >> | 	%11
  << 
    {g4\fermata g8\4^"dolce"_"lasciando vibrare" bes\3( c\3) d\2  } \\
    { <<c,4 e g\fermata>> s2}
  >> |	%12
  << 
    {g'4 <<a, f'>> <<a,8-. d-.>> bes~} \\
    {s4 ees, f8-. ees~}
  >> |	%13
  << 
    {bes'4 <<a c>> } \\
    {ees,8 d ees4-. <<bes d>> } \\
    { s4.  \tempo "Più rapido, rinascimentale" bes'8 bes bes}
  >> | \bar "||"	%14
  << { d4 d d8 d } \\
     { r2. }
  >>
  << | 	%15
    { s2 d8 d} \\
    { c d ees4 bes }
  >> |	%16
  << 
    { c8 d ees4 bes } \\
    { a4 r8 g g a }
  >> |	%17
  << 
    { r4. d8 d ees } \\
    { bes4 bes bes8 bes }
  >> |	%18
  << 
    { f'4 f4 f8 f8 } \\
    { a, bes c4 <<f, a>> } 
  >> |	%19
  << 
    { e'8 f g4 d  } \\
    { r4. b,8 b c }
  >> |	%20
  << 
    { r4. fis'8 fis g } \\
    { d,4 d d8 d }
  >> |	%21
  << 
    { a''4 a4 a8 a8 } \\
    { c,, d e4 a, } \\ \\
    { e''4 c4 f8-. f8}
  >> |	%22
  << 
    { g8 a bes4 f } \\
    { r4 r8 d,8 e d } \\ \\
    { e'8 f g4 d}
  >> |	%23
  << 
    { r8 f g[ f] e[ e] } \\
    { c,8[ c] r2 } \\ \\
    { s8 d' e[ d] c[ c]}
  >> |	%24
  << 
    { f[ e] d[ d] e,[ d] } \\
    { } \\ \\
    { d'[ c] b[ b] c,[ b]}
  >> |	%25
  << 
    { c2. } \\
    { r4 g-. e8-. <<g~ c~ f~ b~>>} 
    
  >> \bar "||" |	%26
  << 
    {b ees8  r8 e8 \times 2/3 {  r g4}} \\
    {<<g,,4 c f b>> <<c, g' bes>> <<b, f' a>>} 
  >> |	%27
  << 
    {g4. g'8 e_(\bendAfter #-3 d) } \\
    { <<c,4. e g>> }
  >> |	%28
  << 
    {c8[ a]_( g a4) a'8~} \\
    {d,,2.  }
  >> |	%29
  <<
    {a''8[ e] \bendAfter #-3 d[ b]_( bes[) b~]} \\
    {a,2 d8 <<g,8~ c~ f~ b~>>  }
  >> |	%30
  << 
    {b[ ees8 r e r g]} \\
    {<<g,,4 c f b>> <<c, g' bes>> <<b, f' a>>} 
  >> |	%31
  << 
    {g4  } \\
    { <<c,8 e g>> a,8^( bes b) c4~ \bendAfter #1 }
  >> |	%32
  << 
    { } \\
    { c8[ \bendAfter #-1 e]^( d[) des] fis,[ <<g8~] c~ f~ b~>>}
  >> |	%33
  << 
    {b[ ees8 r e r g]} \\
    {<<g,,4 c f b>> <<c, g' bes>> <<b, f' a>>} 
  >> | 	%34
  << 
    {g4.  } \\
    { <<c, e g>> \override Staff.NoteHead.style = #'harmonic-mixed \ottava #2 b''8\1_"VII" c\4^"X" aes\1_"IX" }
  >> |	%35
    << 
    { b\2^"XII" f\3_"X" aes\1^"IX" d,\4_"V" ees\2^"IX" \ottava #0 s8} \\
    {  s2 s8 \override Staff.NoteHead.style = #'default <<g,,,8~] c~ f~ b~>>}
  >> |	%36
  << 
    {b[ ees8 r e r g]} \\
    {<<g,,4 c f b>> <<c, g' bes>> <<b, f' a>>} 
  >> | 	%37
  << 
    {g4\fermata g8^"dolce e lento" bes( c) d  } \\
    { <<c,4 e g\fermata>> s2}
  >> |	%38
  << 
    {g'4 <<a, f'>> <<a,8-. d-.>> bes~} \\
    {s4 ees, f8-. <<c~ ees~>> }
  >> |	%39
  << 
    {bes'8 a c2} \\
    {<<c,4 ees>> f2 } \\
    { s4 bes8_( a4.)}
  >> |	%40
  <<
    {<<d,2. f bes>> } \\
    {bes,}
  >>
  \bar "|."
}

\score {
  
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } { \clef "treble_8" \classicalGuitar }
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
}
