namespace 'et'

    Application : angular

        .module( 'et', [] )

        .factory( 'visualise', et.Visualise )

        .factory( 'control', et.Control )

        .directive( 'etViewport', et.ViewportDirective )
