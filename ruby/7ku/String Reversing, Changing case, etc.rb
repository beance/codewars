# frozen_string_literal: true

# https://www.codewars.com/kata/58305403aeb69a460b00019a/train/ruby

def reverse_and_mirror(s1, s2)
  "#{s2.reverse.swapcase}@@@#{s1.reverse.swapcase}#{s1.swapcase}"
end

p reverse_and_mirror('FizZ', 'buZZ') == 'zzUB@@@zZIffIZz'
p reverse_and_mirror('String Reversing', 'Changing Case') == 'ESAc GNIGNAHc@@@GNISREVEr GNIRTssTRING rEVERSING'
p reverse_and_mirror('way to inVert', 'caSe of string') == 'GNIRTS FO EsAC@@@TREvNI OT YAWWAY TO INvERT'
p reverse_and_mirror(
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate'
) == 'ETATPULOV AE NI IUQ TIREDNEHERPER ERUI MUE LEV METUA SIUq ?RUTAUQESNOC IDOMMOC AE XE DIUQILA TU ISIN ,MASOIROBAL TIPICSUS SIROPROC MALLU MENOITATICREXE MURTSON SIUQ ,MAINEV AMINIM DA MINE Tu@@@AUQILA ANGAM EROLOD TE EROBAL TU TNUDIDICNI ROPMET DOMSUIE OD DES ,TILE GNICSIPIDA RUTETCESNOC ,TEMA TIS ROLOD MUSPI MEROllOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT, SED DO EIUSMOD TEMPOR INCIDIDUNT UT LABORE ET DOLORE MAGNA ALIQUA'
