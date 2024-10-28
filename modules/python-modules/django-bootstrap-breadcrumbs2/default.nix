{
  lib,
  buildPythonPackage,
  fetchPypi,
  setuptools,
}:
buildPythonPackage rec {
  pname = "django-bootstrap-breadcrumbs2";
  version = "1.0.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-E88Ze05A6dFXi3IWaOUxYQyltplVZ2eS7pQC4B78Hq0=";
  };

  build-system = [
    setuptools
  ];

  dependencies = [];

  nativeCheckInputs = [
  ];

  meta = with lib; {
    description = "Django breadcrumbs for Bootstrap 2, 3 or 4";
    homepage = "https://pypi.org/project/django-bootstrap-breadcrumbs2";
    changelog = "https://pypi.org/project/django-bootstrap-breadcrumbs2/#history";
    license = licenses.mit;
    maintainers = with maintainers; [fusion44];
  };
}
