{ ... }:
{ 
  programs.nixvim.glugins.wilder = {
    enable = true;
    settings.modes = [ ":" "/" "?" ];
  };
}  
