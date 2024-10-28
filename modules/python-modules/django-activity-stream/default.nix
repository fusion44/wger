{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
}:
buildPythonPackage rec {
  pname = "django-activity-stream";
  version = "2.0.0";

  src = fetchFromGitHub {
    owner = "justquick";
    repo = "django-activity-stream";
    rev = "${version}";
    hash = "sha256-fZrZDCWBFx1R9GGcTkjos7blSBNx1JTdTIVLKz+E2+c=";
  };

  # fails with some assertions
  doCheck = false;

  build-system = [
    setuptools
  ];

  dependencies = [];

  nativeCheckInputs = [
  ];

  meta = with lib; {
    description = "Generate generic activity streams from the actions on your site. Users can follow any actors' activities for personalized streams.";
    homepage = "http://github.com/justquick/django-activity-stream";
    changelog = "https://github.com/justquick/django-activity-stream/blob/main/docs/changelog.rst";
    license = licenses.bsd3;
    maintainers = with maintainers; [fusion44];
  };
}
