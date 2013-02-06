<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
varying     vec4 c21_22;
varying     vec4 c12_20;
varying     vec2 c11;
varying     vec4 c02_10;
varying     vec4 c00_01;
struct tex_coords {
    vec4 c00_01;
    vec4 c02_10;
    vec2 c11;
    vec4 c12_20;
    vec4 c21_22;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
tex_coords _coords1;
uniform mat4 rubyMVPMatrix;
uniform input_dummy _IN1;
vec4 _r0012;
attribute vec4 rubyVertexCoord;
attribute vec4 COLOR;
varying vec4 COL0;
attribute vec4 rubyTexCoord;
 

         mat4 transpose_(mat4 matrix)
         {
            mat4 ret;
            for (int i = 0; i < 4; i++)
               for (int j = 0; j < 4; j++)
                  ret[i][j] = matrix[j][i];

            return ret;
         }
         
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    mat4 rubyMVPMatrix_ = transpose_(rubyMVPMatrix);
    vec4 _oColor;
    vec2 _delta;
    vec2 _TMP2;
    vec2 _TMP3;
    vec2 _TMP4;
    vec2 _TMP5;
    vec2 _TMP6;
    vec2 _TMP7;
    vec2 _TMP8;
    vec2 _TMP9;
    tex_coords _TMP10;
    _r0012.x = dot(rubyMVPMatrix_[0], rubyVertexCoord);
    _r0012.y = dot(rubyMVPMatrix_[1], rubyVertexCoord);
    _r0012.z = dot(rubyMVPMatrix_[2], rubyVertexCoord);
    _r0012.w = dot(rubyMVPMatrix_[3], rubyVertexCoord);
    _oPosition1 = _r0012;
    _oColor = COLOR;
    _delta = 5.00000000E-01/rubyTextureSize;
    _TMP8 = rubyTexCoord.xy + vec2(-_delta.x, -_delta.y);
    _TMP9 = rubyTexCoord.xy + vec2(-_delta.x, 0.00000000E+00);
    _TMP10.c00_01 = vec4(_TMP8.x, _TMP8.y, _TMP9.x, _TMP9.y);
    _TMP6 = rubyTexCoord.xy + vec2(-_delta.x, _delta.y);
    _TMP7 = rubyTexCoord.xy + vec2(0.00000000E+00, -_delta.y);
    _TMP10.c02_10 = vec4(_TMP6.x, _TMP6.y, _TMP7.x, _TMP7.y);
    _TMP4 = rubyTexCoord.xy + vec2(0.00000000E+00, _delta.y);
    _TMP5 = rubyTexCoord.xy + vec2(_delta.x, -_delta.y);
    _TMP10.c12_20 = vec4(_TMP4.x, _TMP4.y, _TMP5.x, _TMP5.y);
    _TMP2 = rubyTexCoord.xy + vec2(_delta.x, 0.00000000E+00);
    _TMP3 = rubyTexCoord.xy + vec2(_delta.x, _delta.y);
    _TMP10.c21_22 = vec4(_TMP2.x, _TMP2.y, _TMP3.x, _TMP3.y);
    c00_01 = _TMP10.c00_01;
    c02_10 = _TMP10.c02_10;
    c11 = rubyTexCoord.xy;
    c12_20 = _TMP10.c12_20;
    c21_22 = _TMP10.c21_22;
    gl_Position = _r0012;
    COL0 = COLOR;
} 
 ]]></vertex>
    <fragment><![CDATA[
#ifdef GL_ES
precision mediump float;
#endif
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
varying     vec4 c21_22;
varying     vec4 c12_20;
varying     vec2 c11;
varying     vec4 c02_10;
varying     vec4 c00_01;
struct tex_coords {
    vec4 c00_01;
    vec4 c02_10;
    vec2 c11;
    vec4 c12_20;
    vec4 c21_22;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
vec3 _TMP18;
vec3 _TMP17;
vec3 _TMP15;
vec3 _TMP14;
float _TMP13;
float _TMP12;
float _TMP11;
float _TMP10;
float _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
tex_coords _co1;
uniform input_dummy _IN1;
uniform sampler2D rubyTexture;
float _x0042;
float _x0046;
float _x0050;
float _x0054;
float _x0058;
vec3 _a0064;
vec3 _diff0066;
vec3 _TMP67;
vec3 _x0074;
vec3 _TMP75;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    vec3 _first;
    vec3 _second;
    vec3 _mid_horiz;
    vec3 _mid_vert;
    vec3 _res;
    vec3 _final;
    _TMP0 = texture2D(rubyTexture, c00_01.xy);
    _TMP1 = texture2D(rubyTexture, c00_01.zw);
    _TMP2 = texture2D(rubyTexture, c02_10.xy);
    _TMP3 = texture2D(rubyTexture, c02_10.zw);
    _TMP5 = texture2D(rubyTexture, c12_20.xy);
    _TMP6 = texture2D(rubyTexture, c12_20.zw);
    _TMP7 = texture2D(rubyTexture, c21_22.xy);
    _TMP8 = texture2D(rubyTexture, c21_22.zw);
    _x0042 = c11.x*rubyTextureSize.x + 5.00000000E-01;
    _TMP9 = fract(_x0042);
    _first = _TMP0.xyz + _TMP9*(_TMP6.xyz - _TMP0.xyz);
    _x0046 = c11.x*rubyTextureSize.x + 5.00000000E-01;
    _TMP10 = fract(_x0046);
    _second = _TMP2.xyz + _TMP10*(_TMP8.xyz - _TMP2.xyz);
    _x0050 = c11.x*rubyTextureSize.x + 5.00000000E-01;
    _TMP11 = fract(_x0050);
    _mid_horiz = _TMP1.xyz + _TMP11*(_TMP7.xyz - _TMP1.xyz);
    _x0054 = c11.y*rubyTextureSize.y + 5.00000000E-01;
    _TMP12 = fract(_x0054);
    _mid_vert = _TMP3.xyz + _TMP12*(_TMP5.xyz - _TMP3.xyz);
    _x0058 = c11.y*rubyTextureSize.y + 5.00000000E-01;
    _TMP13 = fract(_x0058);
    _res = _first + _TMP13*(_second - _first);
    _TMP14 = _mid_horiz + 5.00000000E-01*(_mid_vert - _mid_horiz);
    _a0064 = _res - _TMP14;
    _TMP15 = abs(_a0064);
    _final = 2.59999990E-01*(_res + _mid_horiz + _mid_vert) + 3.50000000E+00*_TMP15;
    _diff0066 = _final - vec3( 8.00000012E-01, 8.00000012E-01, 8.00000012E-01);
    _TMP17 = min(vec3( 1.00000000E+02, 1.00000000E+02, 1.00000000E+02), _diff0066);
    _TMP67 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP17);
    _x0074 = _final - _TMP67*8.00000012E-01;
    _TMP18 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0074);
    _TMP75 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP18);
    _ret_0 = vec4(_TMP75.x, _TMP75.y, _TMP75.z, 1.00000000E+00);
    gl_FragColor = _ret_0;
    return;
} 
 ]]></fragment>
</shader>
