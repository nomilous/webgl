namespace 'et'

    ViewportDirective : class ViewportDirective

        @$inject : ['visualise', 'controls']

        constructor : (viz, ctrl) -> 

            linkFn = (scope, element, attributes) -> 

                viz.init element
                ctrl.init element

            return {

                restrict : 'E',
                link : linkFn

            }
