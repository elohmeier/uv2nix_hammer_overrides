{ final, ... }:
old:
if ((old.format or "sdist") == "wheel") then
  { }
else
  {
    nativeBuildInputs = old.nativeBuildInputs or [ ] ++ [
      final.pybind11
      final.setuptools
      final.torch
      final.wheel
    ];
  }
