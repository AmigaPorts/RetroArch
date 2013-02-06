<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
varying     vec2 _omega;
struct sine_coord {
    vec2 _omega;
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
uniform mat4 rubyMVPMatrix;
uniform input_dummy _IN1;
vec4 _r0005;
attribute vec4 rubyVertexCoord;
attribute vec4 COLOR;
varying vec4 COL0;
attribute vec4 rubyTexCoord;
varying vec4 TEX0;
varying vec4 TEX2;
 

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
    vec2 _oTex;
    sine_coord _coords;
    _r0005.x = dot(rubyMVPMatrix_[0], rubyVertexCoord);
    _r0005.y = dot(rubyMVPMatrix_[1], rubyVertexCoord);
    _r0005.z = dot(rubyMVPMatrix_[2], rubyVertexCoord);
    _r0005.w = dot(rubyMVPMatrix_[3], rubyVertexCoord);
    _oPosition1 = _r0005;
    _oColor = COLOR;
    _oTex = rubyTexCoord.xy;
    _coords._omega = vec2((3.14150000E+00*rubyOutputSize.x*rubyTextureSize.x)/rubyInputSize.x, 6.28299999E+00*rubyTextureSize.y);
    gl_Position = _r0005;
    COL0 = COLOR;
    TEX0.xy = rubyTexCoord.xy;
    TEX2.xy = _coords._omega;
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
varying     vec2 _omega;
struct sine_coord {
    vec2 _omega;
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
float _TMP2;
vec2 _TMP1;
float _TMP4;
float _TMP3;
vec4 _TMP0;
uniform sampler2D rubyTexture;
vec2 _x0011;
vec2 _a0017;
varying vec4 TEX2;
varying vec4 TEX0;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    vec3 _scanline;
    _TMP0 = texture2D(rubyTexture, TEX0.xy);
    _x0011 = TEX0.xy*TEX2.xy;
    _TMP3 = sin(_x0011.x);
    _TMP4 = sin(_x0011.y);
    _TMP1 = vec2(_TMP3, _TMP4);
    _a0017 = vec2( 5.00000007E-02, 1.50000006E-01)*_TMP1;
    _TMP2 = dot(_a0017, vec2( 1.00000000E+00, 1.00000000E+00));
    _scanline = _TMP0.xyz*(9.49999988E-01 + _TMP2);
    _ret_0 = vec4(_scanline.x, _scanline.y, _scanline.z, 1.00000000E+00);
    gl_FragColor = _ret_0;
    return;
} 
 ]]></fragment>
</shader>
