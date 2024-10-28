{
  lib,
  buildPythonPackage,
  fetchPypi,
  setuptools,
}:
buildPythonPackage rec {
  pname = "django-email-verification";
  version = "0.3.3";

  src = fetchPypi {
    inherit pname;
    version = "83c65b573ca9773dba3ca9b91b128168d49680d7";
    hash = "sha256-2hEEAESfFeIA4nzOHd8yr6zTYcHqcQ3NGPEkRBCnPx4=";
  };

  build-system = [
    setuptools
  ];

  dependencies = [];

  nativeCheckInputs = [
  ];

  meta = with lib; {
    description = "Email confirmation app for django";
    homepage = "https://github.com/LeoneBacciu/django-email-verification";
    changelog = "https://pypi.org/project/django-email-verification/#history";
    license = licenses.mit;
    maintainers = with maintainers; [fusion44];
  };
}
