{pkgs, ...}
        : old: if ((old.format or "sdist") == "wheel") then {buildInputs = old.buildInputs or [] ++ [pkgs.openjdk];preFixup = ''addAutoPatchelfSearchPath ${pkgs.openjdk}/lib/openjdk/lib/server/
'';} else {buildInputs = old.buildInputs or [] ++ [pkgs.openjdk];}
        