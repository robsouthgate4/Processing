uniform mat4 transform;
uniform mat3 normalMatrix;
uniform vec3 lightNormal;
uniform float angle;

attribute vec4 position;
attribute vec4 color;
attribute vec3 normal;

varying vec4 vertColor;
varying vec3 vertNormal;
varying vec3 vertLightDir;

void main() {
    vec4 newPos = position;

    vertColor = color;

    vertNormal = normalize(normalMatrix * normal);
    vertLightDir = -lightNormal;

    gl_Position = transform * newPos;

}
