{resolveBuildSystem, final, pkgs, ...}
        : old: if ((old.format or "sdist") == "wheel") then {} else {nativeBuildInputs = old.nativeBuildInputs or [] ++ [pkgs.glpk] ++ ( resolveBuildSystem {setuptools = [];setuptools-scm = [];wheel = [];});}
        