self: super: {
  python3Packages = super.python3Packages.override {
    overrides = self: super: {
      django-activity-stream = self.callPackage ./python-modules/django-activity-stream {};
      django-bootstrap-breadcrumbs2 = self.callPackage ./python-modules/django-bootstrap-breadcrumbs2 {};
      django-email-verification = self.callPackage ./python-modules/django-email-verification {};
      django-recaptcha = self.callPackage ./python-modules/django-recaptcha {};
      openfoodfacts = self.callPackage ./python-modules/openfoodfacts {};
      django-sortedm2m = self.callPackage ./python-modules/django-sortedm2m {};
    };
  };
}
