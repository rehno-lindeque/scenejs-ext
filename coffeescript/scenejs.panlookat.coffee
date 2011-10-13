# Pan camera model for manipulating the SceneJS lookat node
panLookAt = (dPosition, lookAt) ->  
  result =
    eye: vec3ToRecord SceneJS_math_addVec3 recordToVec3 lookAt.eye, dPosition
    look: vec3ToRecord SceneJS_math_addVec3 recordToVec3 lookAt.look, dPosition
    up: vec3ToRecord up1

panLookAtNode = (node, dPosition) ->
  node.set panLookAt dPosition,
    eye: node.get 'eye'
    look: node.get 'look'
    up: node.get 'up'

