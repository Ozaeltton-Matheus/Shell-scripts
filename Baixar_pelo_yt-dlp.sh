#!/bin/bash


echo " ----------------------------------------------------------------------------------------------------------------"
echo "| SCRIPT SIMPLES PARA BAIXAR DE FORMA AuTOMATIZADA VÍDEOS E MÚSICAS DO YOUTUBE E OUTRAS PLATAFORMAS COM O YT-DLP |"
echo " ----------------------------------------------------------------------------------------------------------------"

echo " -----------------------------------------------------------------------------------------------------------------"
echo "|                                                             NOTA                                                |"
echo " -----------------------------------------------------------------------------------------------------------------"

echo " -----------------------------------------------------------------------------------------------------------------"
echo "|                                VOCÊ PRECISARÁ JÁ TER O YT-DLP INSTALADO EM SEU SISTEMA                          |"
echo " -----------------------------------------------------------------------------------------------------------------"

echo "------------------------------------------------------------------------------------------------------------------"
echo "|                         SCRIPT FEITO POR OZAELTTON MATHEUS https://github.com/Ozaeltton-Matheus                 |"
echo "------------------------------------------------------------------------------------------------------------------"


echo -e "Escolha uma opção: \nDigite:\n(1) para baixar um vídeo\n(2) para baixar uma música ou o áudio do vídeo"


read -p "Escolha algo: " escolha


if [ "$escolha" == "1" ]; then
       read -p "Cole o link do vídeo para baixa-lo: " link_do_video
	yt-dlp $link_do_video


elif [ "$escolha" == "2" ]; then
	read -p "Cole o link da música ou do vídeo para baixa-lo como áudio: " link_do_video
	yt-dlp -x --audio-format best $link_do_video  # Baixa o formato original (ex: .opus)

else	echo "Comando inválido"
fi


