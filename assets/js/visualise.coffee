namespace 'et'

    Visualise : class Visualise

        @$inject : ['$log']

        constructor : (log) ->

            @camera   = null
            @scene    = null
            @renderer = null

            @init = (element) -> 

                @scene    = new THREE.Scene()
                @renderer = new THREE.WebGLRenderer()

                geometry = new THREE.CubeGeometry 1,1,1
                material = new THREE.MeshBasicMaterial 
                    color: 0x000000
                    wireframe: true

                cube = new THREE.Mesh geometry, material
                @scene.add cube 

                width   = element[0].scrollWidth
                height  = element[0].scrollHeight
                aspect  = width / height
                fov     = 120
                nClip   = 0.1
                fClip   = 1000

                @camera = new THREE.PerspectiveCamera fov, aspect, nClip, fClip
                @renderer.setSize width, height
                
                element.append @renderer.domElement

                render = =>
                    requestAnimationFrame render
                    @renderer.render @scene, @camera

                render()

            return this
