{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
}:
buildPythonPackage rec {
  pname = "django-recaptcha";
  version = "4.0.0";

  src = fetchFromGitHub {
    owner = "django-recaptcha";
    repo = "django-recaptcha";
    rev = "${version}";
    hash = "sha256-B6Z9oKcMjSh+zE28k0ipoBppm9dD+Moa+PAZqXVabpA=";
  };

  build-system = [
    setuptools
  ];

  dependencies = [];

  nativeCheckInputs = [
  ];

  meta = with lib; {
    description = "Django reCAPTCHA form field/widget integration app.";
    homepage = "https://github.com/django-recaptcha/django-recaptcha";
    changelog = "https://github.com/django-recaptcha/django-recaptcha/blob/main/CHANGELOG.md";
    license = licenses.bsd3;
    maintainers = with maintainers; [fusion44];
  };
}
