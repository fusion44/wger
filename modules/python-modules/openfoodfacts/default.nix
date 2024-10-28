{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
}:
buildPythonPackage rec {
  pname = "openfoodfacts";
  version = "1.1.5";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "openfoodfacts";
    repo = "openfoodfacts-python";
    rev = "v${version}";
    hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
  };

  build-system = [
    setuptools
  ];

  dependencies = [];

  nativeCheckInputs = [
  ];

  meta = with lib; {
    description = "🐍 Python package for Open Food Facts";
    homepage = "https://github.com/openfoodfacts/openfoodfacts-python";
    changelog = "https://github.com/openfoodfacts/openfoodfacts-python/blob/develop/CHANGELOG.md";
    license = licenses.mit;
    maintainers = with maintainers; [fusion44];
  };
}
