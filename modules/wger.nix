{
  lib,
  fetchFromGitHub,
  python3Packages,
  ...
}: let
  name = "wger";
  version = "2.2";
  src = fetchFromGitHub {
    owner = "${name}-project";
    repo = "${name}";
    rev = "${version}";
    hash = "sha256-LZsJEiWKVsu0nlFCgXarxnJzZ/0RUQc8v3nFBSQVVsA=";
  };

  meta = with lib; {
    description = "Self hosted FLOSS fitness/workout, nutrition and weight tracker";
    mainProgram = "wger";
    homepage = "https://github.com/wger-project/wger";
    changelog = "https://github.com/wger-project/wger/releases";
    license = licenses.gpl3;
    maintainers = with maintainers; [fusion44];
    platforms = platforms.linux;
  };

  package = with python3Packages;
    buildPythonApplication {
      pname = name;
      inherit src version;
      pyproject = true;

      nativeBuildInputs = [
        pythonRelaxDepsHook
        setuptools
      ];

      pythonRelaxDeps = [
        "django-storages"
      ];

      propagatedBuildInputs = with python.pkgs; [
        # Application
        django
        bleach
        celery
        django-crispy-bootstrap5
        django-activity-stream
        django-axes
        django-bootstrap-breadcrumbs2
        django-crispy-forms
        django-email-verification
        django-environ
        django-formtools
        django-prometheus
        django-recaptcha
        django-simple-history
        django-storages
        django-compressor
        drf-spectacular
        easy-thumbnails
        flower
        fontawesomefree
        icalendar
        invoke
        openfoodfacts
        pillow
        reportlab
        requests
        tqdm
        tzdata

        # REST API
        django-cors-headers
        django-filter
        djangorestframework
        djangorestframework-simplejwt

        # Not used anymore, but needed because some modules are imported in
        # DB migration files
        django-sortedm2m
      ];
    };
in
  meta // package
