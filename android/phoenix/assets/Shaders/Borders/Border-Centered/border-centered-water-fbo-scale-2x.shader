<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
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
vec4 _oPosition1;
uniform mat4 rubyMVPMatrix;
uniform input_dummy _IN1;
vec4 _r0012;
attribute vec4 rubyVertexCoord;
attribute vec4 COLOR;
varying vec4 COL0;
attribute vec4 rubyTexCoord;
varying vec4 TEX0;
attribute vec4 rubyTexCoord1;
varying vec4 TEX1;
 

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
    vec2 _otex_border;
    vec2 _scale;
    vec2 _middle;
    vec2 _diff;
    vec2 _dist;
    _r0012.x = dot(rubyMVPMatrix_[0], rubyVertexCoord);
    _r0012.y = dot(rubyMVPMatrix_[1], rubyVertexCoord);
    _r0012.z = dot(rubyMVPMatrix_[2], rubyVertexCoord);
    _r0012.w = dot(rubyMVPMatrix_[3], rubyVertexCoord);
    _oPosition1 = _r0012;
    _oColor = COLOR;
    _scale = (rubyOutputSize/vec2( 5.12000000E+02, 4.48000000E+02))/2.00000000E+00;
    _middle = (5.00000000E-01*rubyInputSize)/rubyTextureSize;
    _diff = rubyTexCoord.xy - _middle;
    _oTex = _middle + _diff*_scale;
    _dist = rubyTexCoord1.xy - vec2( 5.00000000E-01, 5.00000000E-01);
    _otex_border = vec2( 5.00000000E-01, 5.00000000E-01) + (_dist*rubyOutputSize)/vec2( 1.92000000E+03, 1.08000000E+03);
    gl_Position = _r0012;
    COL0 = COLOR;
    TEX0.xy = _oTex;
    TEX1.xy = _otex_border;
} 
 ]]></vertex>
    <fragment><![CDATA[
#ifdef GL_ES
precision mediump float;
#endif
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
vec4 _ret_0;
vec4 _TMP0;
float _TMP8;
float _TMP7;
float _TMP9;
uniform sampler2D rubyTexture;
uniform sampler2D _bg1;
uniform input_dummy _IN1;
float _res0028;
vec3 _TMP220028;
float _TMP29;
vec2 _diff0030;
float _dist0030;
float _TMP39;
vec2 _diff0040;
float _dist0040;
float _TMP49;
vec2 _diff0050;
float _dist0050;
float _TMP59;
vec2 _diff0060;
float _dist0060;
float _TMP69;
vec2 _diff0070;
float _dist0070;
float _TMP79;
vec2 _diff0080;
float _dist0080;
float _TMP89;
vec2 _diff0090;
float _dist0090;
varying vec4 TEX0;
varying vec4 TEX1;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    vec4 _frame;
    vec4 _background;
    _frame = texture2D(rubyTexture, TEX0.xy);
    _TMP0 = texture2D(_bg1, TEX1.xy);
    _diff0030 = TEX1.xy - vec2( 6.00000024E-01, 6.99999988E-01);
    _TMP7 = dot(_diff0030, _diff0030);
    _TMP9 = inversesqrt(_TMP7);
    _TMP8 = 1.00000000E+00/_TMP9;
    _dist0030 = 3.00000000E+02*_TMP8;
    _dist0030 = _dist0030 - 1.50000006E-01*_IN1.frame_count;
    _TMP29 = sin(_dist0030);
    _diff0040 = TEX1.xy - vec2( 8.99999976E-01, 8.99999976E-01);
    _TMP7 = dot(_diff0040, _diff0040);
    _TMP9 = inversesqrt(_TMP7);
    _TMP8 = 1.00000000E+00/_TMP9;
    _dist0040 = 3.00000000E+02*_TMP8;
    _dist0040 = _dist0040 - 1.50000006E-01*_IN1.frame_count;
    _TMP39 = sin(_dist0040);
    _res0028 = _TMP29 + _TMP39;
    _diff0050 = TEX1.xy - vec2( -6.00000024E-01, 3.00000012E-01);
    _TMP7 = dot(_diff0050, _diff0050);
    _TMP9 = inversesqrt(_TMP7);
    _TMP8 = 1.00000000E+00/_TMP9;
    _dist0050 = 3.00000000E+02*_TMP8;
    _dist0050 = _dist0050 - 1.50000006E-01*_IN1.frame_count;
    _TMP49 = sin(_dist0050);
    _res0028 = _res0028 + _TMP49;
    _diff0060 = TEX1.xy - vec2( 1.00000001E-01, 4.00000006E-01);
    _TMP7 = dot(_diff0060, _diff0060);
    _TMP9 = inversesqrt(_TMP7);
    _TMP8 = 1.00000000E+00/_TMP9;
    _dist0060 = 3.00000000E+02*_TMP8;
    _dist0060 = _dist0060 - 1.50000006E-01*_IN1.frame_count;
    _TMP59 = sin(_dist0060);
    _res0028 = _res0028 + _TMP59;
    _diff0070 = TEX1.xy - vec2( 1.00000001E-01, 4.00000006E-01);
    _TMP7 = dot(_diff0070, _diff0070);
    _TMP9 = inversesqrt(_TMP7);
    _TMP8 = 1.00000000E+00/_TMP9;
    _dist0070 = 3.00000000E+02*_TMP8;
    _dist0070 = _dist0070 - 1.50000006E-01*_IN1.frame_count;
    _TMP69 = sin(_dist0070);
    _res0028 = _res0028 + _TMP69;
    _diff0080 = TEX1.xy - vec2( 5.00000000E-01, 5.00000000E-01);
    _TMP7 = dot(_diff0080, _diff0080);
    _TMP9 = inversesqrt(_TMP7);
    _TMP8 = 1.00000000E+00/_TMP9;
    _dist0080 = 3.00000000E+02*_TMP8;
    _dist0080 = _dist0080 - 1.50000006E-01*_IN1.frame_count;
    _TMP79 = sin(_dist0080);
    _res0028 = _res0028 + _TMP79;
    _diff0090 = TEX1.xy - vec2( -1.00000000E+00, 1.00000000E+00);
    _TMP7 = dot(_diff0090, _diff0090);
    _TMP9 = inversesqrt(_TMP7);
    _TMP8 = 1.00000000E+00/_TMP9;
    _dist0090 = 3.00000000E+02*_TMP8;
    _dist0090 = _dist0090 - 1.50000006E-01*_IN1.frame_count;
    _TMP89 = sin(_dist0090);
    _res0028 = _res0028 + _TMP89;
    _TMP220028 = _TMP0.xyz*(6.99999988E-01 + 5.00000007E-02*_res0028);
    _background = vec4(_TMP220028.x, _TMP220028.y, _TMP220028.z, _TMP0.w);
    _ret_0 = _frame + _background.w*(_background - _frame);
    gl_FragColor = _ret_0;
    return;
} 
 ]]></fragment>
</shader>
