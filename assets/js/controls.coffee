namespace 'et'

    Controls : class Controls

        @$inject : ['$log', 'visualise']

        constructor : (log, viz) ->

            @pitch = new THREE.Object3D()
            @yaw   = new THREE.Object3D()

            @init = (element) -> 

                # 
                # TODO: fix spins round vertical
                #       fix upside down reverses rotation
                # 

                @pitch.add viz.camera
                @yaw.add @pitch
                viz.scene.add @yaw

                element.bind 'mousemove', (event) => 

                    @pitch.rotation.x -= event.webkitMovementY * 0.01
                    @yaw.rotation.y -= event.webkitMovementX * 0.01

            return this

