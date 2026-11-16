\version "2.24.0"

\header {
  title = "Toccata Arpeggiata"
  subtitle = "Dal Libro Primo d’Intavolatura di Chitarone (Venezia, 1604)"
  composer = "Giovanni Girolamo Kapsberger (1580–1651)"
  instrument = "Tiorba / Chitarrone a 14 ordini (Accordatura in La)"
  tagline = "Trascrizione completa (61 battute) con esagramma italiano"
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 14\mm
  right-margin = 14\mm
}

% Accordatura storica Tiorba 14 ordini in La (primi due ordini rientranti):
% 1: a (rientrante), 2: e (rientrante), 3: b, 4: g, 5: d, 6: A,
% Bordoni (7-14): G,, F,, E,, D,, C,, B,,, A,,, G,,,
tiorbaQuattordiciOrdini = \stringTuning <
  g,,, a,,, b,,, c,, d,, e,, f,, g,,
  a, d g b e a
>

musicaArpeggiata = {
  \time 4/4
  \tempo "Arpeggiando a piacere" 4 = 66
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  <a,\6 a\4 cis'\3 e\2 a\1>1 ^"La magg." | % Batt. 1
  <a,\6 a\4 cis'\3 f\2 a\1>1 ^"La (5+)" | % Batt. 2
  <a,\6 d\5 a\4 d'\3 g\2 a\1>1 ^"Re/La" | % Batt. 3
  <a,\6 a\4 d'\3 g\2 a\1>1 ^"Re/La" | % Batt. 4
  <a,\6 a\4 cis'\3 e\2 a\1>1 ^"La magg." | % Batt. 5
  <g,,\7 e\5 a\4 cis'\3 e\2 a\1>1 ^"La/Sol" | % Batt. 6
  <g,,\7 d\5 g\4 b\3 g\2 a\1>1 ^"Sol magg." | % Batt. 7
  <f,,\8 fis\5 a\4 d'\3 a\1>1 ^"Re/Fa#" | % Batt. 8
  <e,,\9 e\5 a\4 b\3 a\1>1 ^"Mi sus4" | % Batt. 9
  <e,,\9 a\4 c'\3 g\2 a\1>1 ^"La min/Mi" | % Batt. 10
  <a,\6 e\5 a\4 cis'\3 e\2 a\1>1 ^"La magg." | % Batt. 11
  <e,,\9 e\5 gis\4 b\3 a\1>1 ^"Mi magg." | % Batt. 12
  <a,\6 d\5 a\4 cis'\3 e\2 a\1>1 ^"La magg." | % Batt. 13
  <a,\6 d\5 a\4 c'\3 e\2 a\1>1 ^"La min." | % Batt. 14
  <a,\6 c'\4 e'\3 g\2 d'\1>1 ^"Do/La" | % Batt. 15
  <e,,\9 b\5 e'\4 g'\3 e\2>1 ^"Mi magg." | % Batt. 16
  <g,,\7 b\5 e'\4 g'\3 e\2>1 ^"Mi/Sol" | % Batt. 17
  <g,,\7 b\5 dis'\4 fis'\3 e\2>1 ^"Si/Sol" | % Batt. 18
  <g,,\7 b\5 d'\4 fis'\3 e\2>1 ^"Si min/Sol" | % Batt. 19
  <g,,\7 b\5 d'\4 fis'\3 e\2>1 ^"Si min/Sol" | % Batt. 20
  <a,\6 a\5 d'\4 e'\3 e\2>1 ^"La sus4" | % Batt. 21
  <a,\6 a\5 c'\4 e'\3 e\2>1 ^"La min." | % Batt. 22
  <f,,\8 fis\5 a\4 d'\3>1 ^"Re/Fa#" | % Batt. 23
  <e,,\9 d\5 a\4 c'\3 e\2 a\1>1 ^"La min/Mi" | % Batt. 24
  <a,\6 e\5 a\4 b\3 e\2 a\1>1 ^"La sus2" | % Batt. 25
  <a,\6 e\5 gis\4 b\3 e\2 a\1>1 ^"Mi/La" | % Batt. 26
  <e,,\9 a\5 e'\3 g\2 c'\1>1 ^"Do/Mi" | % Batt. 27
  <e,,\9 a\5 e'\4 g\2 c'\1>1 ^"La min7/Mi" | % Batt. 28
  <e,,\9 a\5 f'\3 g\2 c'\1>1 ^"La7/Mi" | % Batt. 29
  <d,,\10 g\5 d'\4 fis'\3 gis\2>1 ^"Re7#11" | % Batt. 30
  <g,,\7 c'\4 b\3 f\2 ais\1>1 ^"Sol min7" | % Batt. 31
  <g,,\7 g\4 b\3 e\2 a\1>1 ^"Sol 6/9" | % Batt. 32
  <c,,\11 f\5 g\4 c'\3 e\2 a\1>1 ^"Fa maj7/Do" | % Batt. 33
  <g,,\7 g\4 b\3 e\2>1 ^"Sol 6" | % Batt. 34
  <g,,\7 g\4 b\3 e\2>1 ^"Sol 6" | % Batt. 35
  <g,,\7 a\4 b\3 e\2 a\1>1 ^"La min/Sol" | % Batt. 36
  <f,,\8 fis\5 ais\4 b\3 a\1>1 ^"Fa# dim" | % Batt. 37
  <f,,\8 fis\5 b\4 d'\3>1 ^"Si min/Fa#" | % Batt. 38
  <f,,\8 fis\5 b\4 cis'\3>1 ^"Si sus2/Fa#" | % Batt. 39
  <f,,\8 fis\5 a\4 cis'\3>1 ^"Fa# min." | % Batt. 40
  <f,,\8 fis\5 a\4 dis'\3>1 ^"Si7/Fa#" | % Batt. 41
  <cis\6 e\5 a\4 a\1>1 ^"La/Do#" | % Batt. 42
  <d,,\10 g\5 b\4 cis'\3 a\1>1 ^"Re maj7" | % Batt. 43
  <b,,,\12 e\5 b\4 b\3 e\2 a\1>1 ^"Mi min/Si" | % Batt. 44
  <b,,,\12 e\5 b\4 b\3 e\2 a\1>1 ^"Mi min/Si" | % Batt. 45
  <b,,,\12 e\5 b\4 b\3 e\2 a\1>1 ^"Mi min/Si" | % Batt. 46
  <b,,,\12 e\5 b\4 b\3 e\2 a\1>1 ^"Mi min/Si" | % Batt. 47
  <b,,,\12 e\5 cis'\4 b\3 e\2 a\1>1 ^"La/Si" | % Batt. 48
  <cis\6 fis\5 cis'\4 cis'\3 a\1>1 ^"Fa# min." | % Batt. 49
  <dis\6 gis\5 b\4 dis'\3 b\1>1 ^"Sol# min." | % Batt. 50
  <a,\6 a\4 cis'\3 e\2 a\1>1 ^"La magg." | % Batt. 51
  <a,\6 a\4 c'\3 e\2 a\1>1 ^"La min." | % Batt. 52
  <a,\6 a\4 cis'\3 e\2 a\1>1 ^"La magg." | % Batt. 53
  <a,\6 a\4 cis'\3 fis\2 a\1>1 ^"Fa# min/La" | % Batt. 54
  <a,\6 a\4 cis'\3 e\2 a\1>1 ^"La magg." | % Batt. 55
  <a,\6 a\4 c'\3 e\2 a\1>1 ^"La min." | % Batt. 56
  <e,,\9 g\4 cis'\3 e\2 a\1>1 ^"La7/Mi" | % Batt. 57
  <a,\6 a\4 cis'\3 e\2 a\1>1 ^"La magg." | % Batt. 58
  <a,\6 a\4 cis'\3 e\2 a\1>1 ^"La magg." | % Batt. 59
  <a,\6 a\4 c'\3 e\2 a\1>1 ^"La min." | % Batt. 60
  <a,\6 a\4 cis'\3 fis\2 a\1>1 ^"La 6 (Fine)" | % Batt. 61
  \bar "|."
}

\score {
  <<
    \new Staff = "Pentagramma" \with {
      instrumentName = "Suoni reali"
      midiInstrument = "acoustic guitar (nylon)"
    } {
      \clef "treble_8"
      \musicaArpeggiata
    }
    \new TabStaff = "EsagrammaItaliano" \with {
      instrumentName = "Intavolatura"
      stringTunings = #tiorbaQuattordiciOrdini
      tablatureFormat = #fret-number-tablature-format-banjo
      \override TabStaff.StaffSymbol.line-count = #6
      % Orientamento italiano: 1° ordine (più acuto) sulla linea più in basso
      stringOneTopmost = ##f
    } {
      \musicaArpeggiata
    }
  >>
  \layout {
    indent = 18\mm
    \context {
      \Score
      \override BarNumber.font-size = #-2
    }
  }
  \midi { }
}