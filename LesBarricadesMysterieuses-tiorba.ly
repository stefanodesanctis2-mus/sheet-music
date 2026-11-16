\version "2.24.0"

\header {
  title = "Les Barricades Mystérieuses"
  subtitle = "Trasposizione in Sol maggiore per Tiorba a 14 ordini in La"
  composer = "François Couperin (1717)"
  arranger = "Accordatura: a e' b g d a / G F E D C B, A, G,"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  indent = 1.2\cm
  system-system-spacing.basic-distance = #18
}

% --- VOCI SUPERIORI (Style brisé sui primi 6 ordini) ---
upperVoice = \relative c' {
  \key g \major
  \time 2/2
  \tempo "Vivace / Légèrement"

  % === RONDEAU (Battute 1-8) ===
  \segno
  \repeat volta 2 {
    r8 b d g b, d g b, | % 1: Sol
    r8 a d fis a, d fis a, | % 2: Re
    r8 g b e g, b e g, | % 3: Mi min
    r8 fis b d fis, b d fis, | % 4: Si min
    r8 g c e g, c e g, | % 5: Do
    r8 g b d g, b d g, | % 6: Sol
    r8 g c e r a, d fis | % 7: Do - Re
  }
  \alternative {
    { r8 g, b d g,4 r | } % 8a
    { r8 g, b d g,4^\markup { \bold "Fine" } r | } % 8b
  }
  \bar "||"

  % === 1° COUPLET (Mi minore - Battute 9-16) ===
  \mark \markup { \bold "1er Couplet" }
  r8 g b e g, b e g, | % 9: Mi min
  r8 fis b dis fis, b dis fis, | % 10: Si7
  r8 g b e g, b e g, | % 11: Mi min
  r8 a c e a, c e a, | % 12: La min
  r8 fis b dis fis, b dis fis, | % 13: Si7
  r8 g b e g, b e g, | % 14: Mi min
  r8 a c e r fis, b dis | % 15: La min - Si7
  r8 g, b e g,4^\markup { \italic "Al Segno" } r | % 16: Mi min
  \bar "||"

  % === 2° COUPLET (Re maggiore / La minore - Battute 17-24) ===
  \mark \markup { \bold "2e Couplet" }
  r8 fis a d fis, a d fis, | % 17: Re
  r8 e a cis e, a cis e, | % 18: La
  r8 fis a d fis, a d fis, | % 19: Re
  r8 g b d g, b d g, | % 20: Sol
  r8 e a cis e, a cis e, | % 21: La
  r8 fis a d fis, a d fis, | % 22: Re
  r8 g b d r e, a cis | % 23: Sol - La
  r8 fis, a d fis,4^\markup { \italic "Al Segno" } r | % 24: Re
  \bar "||"

  % === 3° COUPLET (Do maggiore / Mi minore - Battute 25-34) ===
  \mark \markup { \bold "3e Couplet" }
  r8 g c e g, c e g, | % 25: Do
  r8 g b d g, b d g, | % 26: Sol
  r8 e a c e, a c e, | % 27: La min
  r8 fis b dis fis, b dis fis, | % 28: Si7
  r8 g b e g, b e g, | % 29: Mi min
  r8 a c e a, c e a, | % 30: La min
  r8 g b d g, b d g, | % 31: Sol
  r8 g c e g, c e g, | % 32: Do
  r8 a c e r a, d fis | % 33: La min - Re
  r8 g, b d g,4^\markup { \italic "Al Segno e poi Fine" } r | % 34: Sol
  \bar "|."
}

% --- LINEA DEL BASSO (Contrabbassi a vuoto sotto il sestagramma) ---
bassVoice = \relative c {
  \key g \major
  \time 2/2

  % === RONDEAU ===
  \repeat volta 2 {
    g2 g | % 1: Sol (7° ord. -> a)
    d2 d | % 2: Re (10° ord. -> ///a)
    e2 e | % 3: Mi (9° ord. -> //a)
    b2 b | % 4: Si (12° ord. -> 5)
    c2 c | % 5: Do (11° ord. -> 4)
    g2 g | % 6: Sol (7° ord. -> a)
    c2 d | % 7: Do - Re (4 - ///a)
  }
  \alternative {
    { g,2 g | } % 8a: Sol 14° ord. (7) - Sol 7° ord. (a)
    { g2 g | } % 8b: Sol 7° ord. (a)
  }

  % === 1° COUPLET ===
  e'2 e | % 9: Mi (9° ord. -> //a)
  b2 b | % 10: Si (12° ord. -> 5)
  e2 e | % 11: Mi (9° ord. -> //a)
  a,2 a | % 12: La (13° ord. -> 6)
  b2 b | % 13: Si (12° ord. -> 5)
  e2 e | % 14: Mi (9° ord. -> //a)
  a,2 b | % 15: La - Si (6 - 5)
  e2 e | % 16: Mi (9° ord. -> //a)

  % === 2° COUPLET ===
  d2 d | % 17: Re (10° ord. -> ///a)
  a2 a | % 18: La (13° ord. -> 6)
  d2 d | % 19: Re (10° ord. -> ///a)
  g,2 g | % 20: Sol (7° ord. -> a)
  a2 a | % 21: La (13° ord. -> 6)
  d2 d | % 22: Re (10° ord. -> ///a)
  g,2 a | % 23: Sol - La (a - 6)
  d2 d | % 24: Re (10° ord. -> ///a)

  % === 3° COUPLET ===
  c2 c | % 25: Do (11° ord. -> 4)
  g2 g | % 26: Sol (7° ord. -> a)
  a2 a | % 27: La (13° ord. -> 6)
  b2 b | % 28: Si (12° ord. -> 5)
  e2 e | % 29: Mi (9° ord. -> //a)
  a,2 a | % 30: La (13° ord. -> 6)
  g2 g | % 31: Sol (7° ord. -> a)
  c2 c | % 32: Do (11° ord. -> 4)
  a2 d | % 33: La - Re (6 - ///a)
  g,2 g | % 34: Sol (7° ord. -> a)
}

% --- ASSEMBLAGGIO PARTITURA ---
\score {
  <<
    % 1. Pentagramma standard
    \new Staff \with {
      instrumentName = "Tiorba"
    } {
      \clef "treble_8"
      <<
        \new Voice = "melody" { \voiceOne \upperVoice }
        \new Voice = "bass" { \voiceTwo \bassVoice }
      >>
    }

    % 2. Tablatura Francese Storica (6 righe + bordoni sotto)
    \new TabStaff \with {
      % I 6 ordini principali sulla tastiera (dal 1° al 6° ordine)
      stringTunings = \stringTuning <a, d g b e a>
      
      % Gli 8 contrabbassi fuori tastiera (dal 7° al 14° ordine: Sol, Fa, Mi, Re, Do, Si, La, Sol)
      additionalBassStrings = \stringTuning <g, f, e, d, c, b,, a,, g,,>
      
      tablatureFormat = #fret-letter-tablature-format
      fretLabels = #'("a" "b" "c" "d" "e" "f" "g" "h" "i" "k" "l" "m")
      
      \override TabNoteHead.font-name = #"sans"
      \override TabStaff.TimeSignature.style = #'single-digit
    } {
      <<
        \new TabVoice { \voiceOne \upperVoice }
        \new TabVoice { \voiceTwo \bassVoice }
      >>
    }
  >>

  \layout { }
  \midi {
    \tempo 2 = 66
  }
}