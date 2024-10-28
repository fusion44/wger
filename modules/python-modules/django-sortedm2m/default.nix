{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
}:
buildPythonPackage rec {
  pname = "django-sortedm2m";
  version = "4.0.0";

  src = fetchFromGitHub {
    owner = "jazzband";
    repo = "django-sortedm2m";
    rev = "${version}";
    hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
  };

  build-system = [
    setuptools
  ];

  dependencies = [];

  nativeCheckInputs = [
  ];

  meta = with lib; {
    description = "A transparent sorted ManyToMany field for django.";
    homepage = "https://github.com/jazzband/django-sortedm2m";
    changelog = "https://github.com/jazzband/django-sortedm2m/blob/master/CHANGES.rst";
    license = licenses.bsd3;
    maintainers = with maintainers; [fusion44];
  };
}
