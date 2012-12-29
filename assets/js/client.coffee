namespace 'et'

    Application : angular

        .module( 'et', [] )

        .factory( 'visualise', et.Visualise )

        .factory( 'controls', et.Controls )

        .directive( 'etViewport', et.ViewportDirective )
