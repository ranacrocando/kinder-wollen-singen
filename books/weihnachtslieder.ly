\version "2.24.2"

% includes must be placed on root level (and NOT inside a bookpart):
% https://mail.gnu.org/archive/html/lilypond-user/2023-03/msg00176.html

\include "weihnachtslieder/adeste_fidelis_voices.ly" % ADF
\include "weihnachtslieder/alle_jahre_wieder_voices.ly" % AJW
\include "weihnachtslieder/am_weihnachtsbaume_die_lichter_brennen_voices.ly" % AWB
\include "weihnachtslieder/der_christbaum_ist_der_schoenste_baum_voices.ly" % DCI
\include "weihnachtslieder/der_heiland_ist_geboren_voices.ly" % DHI
\include "weihnachtslieder/es_ist_ein_ros_entsprungen-einstimmig_voices.ly" %EIE
\include "weihnachtslieder/es_kommt_ein_schiff_geladen_voices.ly" % EKE
\include "weihnachtslieder/es_wird_scho_gleich_dumpa_voices.ly" % EWS
\include "weihnachtslieder/froehliche_weihnacht_voices.ly" %FWU
\include "weihnachtslieder/ich_lag_und_schlief_da_traeumte_mir_voices.ly" % ILU
\include "weihnachtslieder/ihr_kinderlein_kommet_voices.ly" % IKK
\include "weihnachtslieder/jingle_bells_voices.ly" % JIB
\include "weihnachtslieder/joseph_lieber_joseph_mein_voices.ly" % JLJ
\include "weihnachtslieder/kling_gloeckchen_voices.ly" % KGK
\include "weihnachtslieder/kommet_ihr_hirten_voices.ly" % KIH
\include "weihnachtslieder/lasst_uns_froh_und_munter_sein_voices.ly" % LUF
\include "weihnachtslieder/leise_rieselt_der_schnee_voices.ly" % LRS
\include "weihnachtslieder/macht_hoch_die_tuer_voices.ly" % MHT
\include "weihnachtslieder/morgen_kinder_wirds_was_geben_voices.ly" % MKW
\include "weihnachtslieder/morgen_kommt_der_weihnachtsmann_voices.ly" % MKD
\include "weihnachtslieder/oh_du_froehliche_voices.ly" % ODF
\include "weihnachtslieder/oh_tannenbaum_voices.ly" % OTB
\include "weihnachtslieder/schneefloeckchen_voices.ly" % SWR
\include "weihnachtslieder/still_still_still_voices.ly" % SSS
\include "weihnachtslieder/stille_nacht_heilige_nacht_voices.ly" % SNH
\include "weihnachtslieder/tochter_zion_freue_dich_voices.ly" % TZF
\include "weihnachtslieder/vom_himmel_hoch_voices.ly" % VHH
\include "weihnachtslieder/we_wish_you_merry_christmas_voices.ly" % WWY
\include "weihnachtslieder/zu_bethlehem_geboren_voices.ly" % ZBG

\book{
  \paper{
    evenFooterMarkup = "kinder-wollen-singen.de"
    oddFooterMarkup = \markup{\epsfile #X #6 #"qrcode.eps"}
  }
  % Title Page
  \markup {
    \column {
      \vspace #10
      \fill-line {
        \null
        \fontsize #10
        \bold "Kinder wollen Singen"
        \null
      }
      \vspace #1
      \fill-line {
        \null
        \fontsize #5
        "Eine Sammlung von Weihnachtsliedern"
        \null
      }
      \vspace #2
      \fill-line {
        \null
        \fontsize #5
        \italic "frei kopier- und adaptierbar"
        \null
      }
      \vspace #2
      \fill-line{
        \null
        \epsfile #Y #50 #"christmastree.eps"
        \null
      }
      \vspace #2
      \fill-line{
        \null
        \with-url
        "https://w.wiki/CUNN"
        {
          \fontsize #-5
          "Titelbild Weihnachtsbaum von Nanin7, Lizenz: CC-BY-SA 3.0"
        }\null
      }

      \fill-line{
        \null
        \epsfile #X #33 #"qrcode.eps"
        \null
      }
      \vspace #1
      \fill-line{
        \null
        \with-url
        "https://ranacrocando.github.io/kinder-wollen-singen/"
        {
          \fontsize #1
          "ranacrocando.github.io/kinder-wollen-singen"
        }\null
      }
    }
  }

  \pageBreak

  \bookpart{
    \header {
      date = \ADF_date
      source = \ADF_source
      style = \ADF_style
      maintainer = \ADF_maintainer
      maintainerEmail = \ADF_maintainerEmail
      title = \ADF_title
      poet = \ADF_poet
      composer = \ADF_composer
      tagline = ##f
      copyright = \ADF_copyright
      arranger = \ADF_arranger
    }
    \ADF_Score
    \ADF_Strophen
  }
  \bookpart{
    \header {
      title = \AJW_Title
      poet = \AJW_Poet
      composer = \AJW_Composer
      arranger = \AJW_Arranger
      copyright = \AJW_Copyright
    }
    \score{\AJW_Xa} \AJW_XaStrophen
  }


  \bookpart{
    \header {
      title = \AWB_Title
      composer = \AWB_Composer
      poet = \AWB_Poet
      copyright = \AWB_Copyright
      arranger = \AWB_Arranger
    }
    \AWB_Score
    \AWB_Strophen
  }


  \bookpart{
    \header{
      date = \DCI_date
      source = \DCI_source
      style = \DCI_style
      maintainer = \DCI_maintainer
      maintainerEmail = \DCI_maintainerEmail
      title = \DCI_title
      poet = \DCI_poet
      composer = \DCI_composer
      arranger = \DCI_arranger
      copyright = \DCI_copyright
    }
    \DCI_Score
    \DCI_Strophen
  }

  \bookpart{
    \header {
      title = \DHI_title
      composer = \DHI_composer
      poet = \DHI_poet
      copyright = \DHI_copyright
      arranger = \DHI_arranger
    }
    \DHI_Score
    \DHI_Strophen
  }


  \bookpart{
    \header {
      title = \EIE_title
      composer = \EIE_composer
      poet = \EIE_poet
      arranger = \EIE_arranger
      copyright = \EIE_copyright
    }
    \EIE_Score
    \EIE_Strophen
  }


  \bookpart{
    \header {
      title = \EKE_title
      composer = \EKE_composer
      poet = \EKE_poet
      copyright = \EKE_copyright
      arranger = \EKE_arranger
    }
    \EKE_Score
    \EKE_Strophen
  }


  \bookpart{
    \header {
      title = \EWS_title
      composer = \EWS_composer
      poet = \EWS_poet
      arranger = \EWS_arranger
      copyright = \EWS_copyright
    }
    \EWS_Score
  }

  \bookpart{
    \header{
      title = \FWU_title
      poet = \FWU_poet
      composer = \FWU_composer
      arranger = \FWU_arranger
      copyright = \FWU_copyright
    }
    \FWU_Score
  }

  \bookpart{
    \header {
      date = \ILU_date
      source = \ILU_source
      style = \ILU_style
      maintainer =\ILU_maintainer
      maintainerEmail = \ILU_maintainerEmail
      title = \ILU_title
      poet = \ILU_poet
      composer =\ILU_composer
      copyright = \ILU_copyright
      arranger = \ILU_arranger
    }
    \ILU_Score
    \ILU_Strophen
  }


  \bookpart{
    \header {
      title = \IKK_title
      poet = \IKK_poet
      composer = \IKK_composer
      arranger = \IKK_arranger
      maintainerEmail = \IKK_maintainerEmail
      maintainerWeb = \IKK_maintainerWeb
      copyright = \IKK_copyright
    }

    \IKK_Score
    \IKK_Strophen
  }

  \bookpart{
    \header {
      title = \JIB_title
      composer = \JIB_composer
      arranger = \JIB_arranger
    }

    \JIB_Score
    \JIB_Strophen

  }

  \bookpart{
    \header {
      title = \JLJ_title
      composer = \JLJ_composer
      poet = \JLJ_poet
      arranger = \JLJ_arranger
      copyright = \JLJ_copyright
    }

    \JLJ_Score
    \JLJ_Strophen
  }
  \bookpart{
    \header{
      title = \KGK_title
      poet = \KGK_poet
      composer = \KGK_composer
      arranger =\KGK_arranger
      copyright = \KGK_copyright
    }
    \KGK_Score
  }

  \bookpart{
    \header {
      title = \KIH_title
      poet = \KIH_poet
      composer = \KIH_composer
      arranger = \KIH_arranger
      maintainerEmail = \KIH_maintainerEmail
      maintainerWeb = \KIH_maintainerWeb
      copyright = \KIH_copyright
    }
    \KIH_Score
    \KIH_Strophen
  }
  \bookpart{
    \header {
      title = \LUF_title
      poet = \LUF_poet
      composer =  \LUF_composer
      arranger = \LUF_arranger
      copyright = \LUF_copyright
    }
    \LUF_Score
    \LUF_Strophen
  }
  \bookpart{
    \header {
      title = \LRS_title
      poet = \LRS_poet
      composer =  \LRS_composer
      arranger = \LRS_arranger
      maintainerEmail = \LRS_maintainerEmail
      maintainerWeb = \LRS_maintainerWeb
      copyright = \LRS_copyright
    }
    \LRS_Score
    \LRS_Strophen
  }
  \bookpart{
    \header {
      title = \MHT_title
      poet = \MHT_poet
      composer = \MHT_composer
      arranger = \MHT_arranger
      maintainerEmail = \MHT_maintainerEmail
      maintainerWeb = \MHT_maintainerWeb
      copyright = \MHT_copyright
    }
    \MHT_Score
    \MHT_Strophen
  }
  \bookpart{
    \header {
      title = \MKW_title
      poet = \MKW_poet
      composer = \MKW_composer
      arranger = \MKW_arranger
      maintainerEmail = \MKW_maintainerEmail
      maintainerWeb = \MKW_maintainerWeb
      copyright = \MKW_copyright
    }
    \MKW_Score
    \MKW_Strophen
  }
  \bookpart{
    \header{
      title = \MKD_title
      poet = \MKD_poet
      composer = \MKD_composer
      arranger = \MKD_arranger
      copyright = \MKD_copyright
    }
    \MKD_Score
  }
  \bookpart{
    \header {
      title = \ODF_title
      poet = \ODF_poet
      maintainerEmail = \ODF_maintainerEmail
      maintainerWeb = \ODF_maintainerWeb
      composer = \ODF_composer
      arranger = \ODF_arranger
      copyright = \ODF_copyright
    }
    \ODF_Score
    \ODF_Strophen

  }
  \bookpart {
    \header {
      title = \OTB_title
      poet = \OTB_poet
      composer =  \OTB_composer
      arranger = \OTB_arranger
      copyright = \OTB_copyright
    }

    \OTB_Score
  }
  \bookpart{
    \header {
      title = \SWR_title
      composer = \SWR_composer
      poet = \SWR_poet
      arranger = \SWR_arranger
      copyright = \SWR_copyright
    }
    \SWR_Score
    \SWR_Strophen
  }
  \bookpart {
    \header{
      poet = \SSS_poet
      title = \SSS_title
      arranger = \SSS_arranger
      copyright = \SSS_copyright
    }
    \SSS_Score
    \SSS_Strophen
  }
  \bookpart{
    \header {
      title = \SNH_title
      poet = \SNH_poet
      composer = \SNH_composer
      arranger = \SNH_arranger
      copyright = \SNH_copyright
      maintainerEmail = \SNH_maintainerEmail
      maintainerWeb = \SNH_maintainerWeb
    }
    \SNH_Score
    \SNH_Strophen
  }
  \bookpart{
    \header {
      title = \TZF_title
      composer = \TZF_composer
      poet = \TZF_poet
      arranger = \TZF_arranger
      copyright = \TZF_copyright
    }
    \TZF_Score
    \TZF_Strophen
  }
  \bookpart{
    \header {
      title = \VHH_title
      composer = \VHH_composer
      arranger = \VHH_arranger
      copyright = \VHH_copyright
      maintainerEmail = \VHH_maintainerEmail
    }
    \VHH_Score
    \VHH_Strophen
  }
  \bookpart{
    \header {
      title = \WWY_title
      composer = \WWY_composer
      arranger = \WWY_arranger
      copyright = \WWY_copyright
    }
    \WWY_Score
    \WWY_Strophen
  }
  \bookpart{
    \header {
      title = \ZBG_title
      composer = \ZBG_composer
      arranger = \ZBG_arranger
      copyright = \ZBG_copyright
    }

    \ZBG_Score
    \ZBG_Strophen
  }
}