{stdenvNoCC, ...}:
stdenvNoCC.mkDerivation {
  pname = "iosevka-matsuri";
  version = "git";
  src = ../src/.;
  dontConfigure = true;
  installPhase = ''
    mkdir -pv $out/share/fonts/TTF
    install -Dvm755 ./IosevkaMatsuri/TTF/*.ttf $out/share/fonts/TTF
    install -Dvm755 ./IosevkaMatsuriTerm/TTF/*.ttf $out/share/fonts/TTF
  '';
}
