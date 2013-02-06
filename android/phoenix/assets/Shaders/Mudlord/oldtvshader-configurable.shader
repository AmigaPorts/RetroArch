<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     vec4 _color;
varying     vec2 _texCoord1;
varying     vec4 vpos;
varying     vec4 _position1;
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct VERTEX_OUTPUT {
    vec4 _position1;
    vec4 vpos;
    vec2 _texCoord1;
};
struct output_dummy {
    vec4 _color;
};
VERTEX_OUTPUT _ret_0;
uniform mat4 rubyMVPMatrix;
vec4 _r0004;
attribute vec4 rubyVertexCoord;
attribute vec4 rubyTexCoord;
varying vec4 TEX0;
 

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
    _r0004.x = dot(rubyMVPMatrix_[0], rubyVertexCoord);
    _r0004.y = dot(rubyMVPMatrix_[1], rubyVertexCoord);
    _r0004.z = dot(rubyMVPMatrix_[2], rubyVertexCoord);
    _r0004.w = dot(rubyMVPMatrix_[3], rubyVertexCoord);
    _position1 = _r0004;
    vpos = _r0004;
    _texCoord1 = rubyTexCoord.xy;
    gl_Position = _r0004;
    TEX0.xy = rubyTexCoord.xy;
    return;
    TEX0.xy = _texCoord1;
} 
 ]]></vertex>
    <fragment><![CDATA[
#ifdef GL_ES
precision mediump float;
#endif
varying     vec4 _color;
varying     vec2 _texCoord;
varying     vec4 vpos;
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float frame_count;
varying     vec2 _output_dummy_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct VERTEX_OUTPUT {
    vec4 vpos;
    vec2 _texCoord;
};
struct output_dummy {
    vec4 _color;
};
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
float _TMP4;
float _TMP1;
float _TMP3;
float _TMP2;
float _TMP0;
VERTEX_OUTPUT _TMP8;
VERTEX_OUTPUT _VAR1;
uniform sampler2D rubyTexture;
uniform input_dummy _IN1;
float _TMP13;
float _x0014;
float _frame_cnt0020;
vec2 _constant10020;
float _constant20020;
float _x0028;
float _TMP29;
float _x0030;
vec2 _c0038;
vec2 _c0042;
varying vec4 TEX0;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    output_dummy _OUT;
    float _f;
    vec4 _distortion2;
    vpos = vpos/vpos.w;
    _f = (1.00000000E+00 - vpos.x*vpos.x)*(1.00000000E+00 - vpos.y*vpos.y);
    _TMP0 = pow(_f, 4.39999998E-01);
    _x0014 = 8.00000012E-01*(_TMP0 - 1.59999996E-01);
    _TMP1 = min(1.00000000E+00, _x0014);
    _TMP13 = max(0.00000000E+00, _TMP1);
    _frame_cnt0020 = cos(_IN1.frame_count);
    _constant10020 = _frame_cnt0020*vec2( 1.29090910E+01, 7.82307663E+01);
    _constant20020 = (_frame_cnt0020*4.81344000E+05)/1.10000000E+01;
    _TMP2 = dot(TEX0.xy, _constant10020);
    _TMP3 = sin(_TMP2);
    _x0028 = _TMP3*_constant20020;
    _TMP4 = fract(_x0028);
    _x0030 = _TMP4 + 2.00000003E-01;
    _TMP1 = min(1.00000000E+00, _x0030);
    _TMP29 = max(0.00000000E+00, _TMP1);
    _c0038 = TEX0.xy + 1.95312500E-03;
    _TMP5 = texture2D(rubyTexture, _c0038);
    _TMP6 = texture2D(rubyTexture, TEX0.xy);
    _c0042 = TEX0.xy - 1.95312500E-03;
    _TMP7 = texture2D(rubyTexture, _c0042);
    _distortion2 = vec4(_TMP5.x, _TMP6.y, _TMP7.z, 1.00000000E+00);
    _OUT._color = _TMP13*(_distortion2*_TMP29);
    gl_FragColor = _OUT._color;
    return;
} 
 ]]></fragment>
</shader>
