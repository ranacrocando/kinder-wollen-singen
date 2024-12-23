\version "2.24.2"
JLJ_title = "Joseph, lieber Joseph mein"
JLJ_composer = "Traditionell"
JLJ_poet = "Traditionell"
JLJ_arranger = "Gesetzt für kinder-wollen-singen.de"
JLJ_copyright = "Public Domain"

JLJ_AvoiceAA = \relative c'{
  \set Staff.instrumentName = ""
  \set Staff.shortInstrumentName = ""
  \clef treble
  %staffkeysig
  \key f \major
  %barkeysig:
  \key f \major
  %bartimesig:
  \time 6/8
  c'4 a8 f4 a8      | % 1
  c4 d8 c4.      | % 2
  c4 a8 f4 a8      | % 3
  c4 d8 c4.      | % 4
  bes4 bes8 bes4 c8      | % 5
  bes4 a8 g4 a8      | % 6
  c4 a8 f4 a8       | % 7
  g4 f8 g4 a8      | % 8
  f4. f4. \bar "|."\bar "|."
}% end of last bar in partorvoice

JLJ_ApartAverseA = \lyricmode { \set stanza = " 1. " Jo -- seph,  lie -- ber  Jo -- seph  mein, hilf mir wieg'n mein Kin -- de -- lein,  Gott, der wird dein Loh -- ner  sein im Him -- mel -- reich,  der Jung -- frau  Sohn Ma -- ri -- a.  }
JLJ_theChords = \chordmode { f1 bes8 f1*11/8 bes8 f4. bes1. f2. c4. c:7 f2 }
%%end of chordlist


JLJ_Score = {
  <<
    \new ChordNames { \JLJ_theChords }
    \context Staff = ApartA <<
      \context Voice = AvoiceAA \JLJ_AvoiceAA
    >>

    \context Lyrics = ApartAverseA\lyricsto AvoiceAA  \JLJ_ApartAverseA

    \set Score.skipBars = ##t
    %%\set Score.melismaBusyProperties = #'()
    \override Score.BarNumber.break-visibility = #end-of-line-invisible %%every bar is numbered.!!!
    %% remove previous line to get barnumbers only at beginning of system.
    #(set-accidental-style 'modern-cautionary)
    \override Score.TimeSignature.style = #'() %%makes timesigs always numerical
    %% remove previous line to get cut-time/alla breve or common time
    \set Score.pedalSustainStyle = #'mixed
    %% make spanners comprise the note it ends on, so that there is no doubt that this note is included.
    \override Score.TrillSpanner.bound-details.right.padding = #-2
    \override Score.TextSpanner.bound-details.right.padding = #-1
    %% LilyPond's normal textspanners are too weak:
    \override Score.TextSpanner.dash-period = #1
    \override Score.TextSpanner.dash-fraction = #0.5
    %% lilypond chordname font, like mscore jazzfont, is both far too big and extremely ugly (olagunde@start.no):
    \override Score.ChordName.font-family = #'roman
    \override Score.ChordName.font-size = #0
    %% In my experience the normal thing in printed scores is maj7 and not the triangle. (olagunde):
    \set Score.majorSevenSymbol = \markup {maj7}
  >>
}%% end of score-block


JLJ_Strophen = \markup {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "2."
        \column {
          "Joseph, lieber Joseph mein,"
          "hilf mir wiegen mein Kindelein,"
          "Gott, der wird dein Lohner sein"
          "im Himmelreich, der Jungfrau Sohn Maria."
        }
      }
      \hspace #0.1
      \line {
        \bold "4."
        \column {
          "Freu dich nun, o Christenschar,"
          "der himmlische König klar"
          "nahm die Menschheit offenbar,"
          "den uns gebar die reine Magd Maria."
        }
      }
    }
    \hspace #0.1
    \column {
      \line {
        \bold "3."
        \column {
          "Gerne, lieb' Maria mein,"
          "helf ich dir wieg'n das Kindelein."
          "dass Gott müss' mein Lohner sein"
          "im Himmelreich, der Jungfrau Sohn Maria."
        }
      }
      \hspace #0.1
      \line {
        \bold "5."
        \column {
          "Süßer Jesu, auserkor'n,"
          "weißt wohl, dass wir war'n verlor'n,"
          "still uns deines Vaters Zorn,"
          "dich hat gebor'n die reine Magd Maria."
        }
      }
    }
    \hspace #0.1
  }
}
