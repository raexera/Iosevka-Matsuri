{
  lib,
  stdenvNoCC,
  ...
}:
stdenvNoCC.mkDerivation {
  pname = "iosevka-matsuri";
  version = "git";

  src = ../src/.;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/fonts/{truetype,woff2}

    install -Dm644 ./IosevkaMatsuri/TTF/*.ttf  -t $out/share/fonts/truetype
    install -Dm644 ./IosevkaMatsuri/WOFF2/*.woff2 -t $out/share/fonts/woff2

    install -Dm644 ./IosevkaMatsuriTerm/TTF/*.ttf -t $out/share/fonts/truetype
    install -Dm644 ./IosevkaMatsuriTerm/WOFF2/*.woff2 -t $out/share/fonts/woff2

    runHook postInstall
  '';

  meta = with lib; {
    homepage = "https://github.com/raexera/Iosevka-Matsuri";
    description = "Iosevka Matsuri: A comfortable monospace font based on Iosevka Custom Build.";
    license = licenses.ofl;
    platforms = platforms.all;
    maintainers = with maintainers; [raexera AlphaTechnolog];
  };
}
