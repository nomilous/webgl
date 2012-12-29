namespace 'et'

    ViewportDirective : class ViewportDirective

        @$inject : ['visualise', 'control']

        constructor : (viz, ctrl) -> 

            linkFn = (scope, element, attributes) -> 

                viz.init element

            return {

                restrict : 'E',
                link : linkFn
                
            }
