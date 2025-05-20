{ pkgs, ... }:

{
  env.AWS_PROFILE = "idris";
  packages = [ pkgs.terraform ];

  languages.haskell.enable = true;
  scripts.spinup.exec = ''
    terraform apply -auto-approve
  '';

  scripts.spindown.exec = ''
    terraform destroy -auto-approve
  '';

  scripts.deploy.exec = ''
    pushd deploy
    cabal run
    popd
  '';
}
