<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
varying     vec2 _pixel_no;
varying     vec2 _c11;
varying     vec4 _c12_22;
varying     vec4 _c21_02;
varying     vec4 _c20_01;
varying     vec4 _c00_10;
struct tex_coord {
    vec4 _c00_10;
    vec4 _c20_01;
    vec4 _c21_02;
    vec4 _c12_22;
    vec2 _c11;
    vec2 _pixel_no;
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
vec4 _r0014;
attribute vec4 rubyVertexCoord;
attribute vec4 COLOR;
varying vec4 COL0;
attribute vec4 rubyTexCoord;
varying vec4 TEX1;
varying vec4 TEX2;
varying vec4 TEX3;
varying vec4 TEX4;
varying vec4 TEX5;
varying vec4 TEX6;
 

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
    tex_coord _coords;
    float _dx;
    float _dy;
    vec2 _TMP5;
    vec2 _TMP6;
    vec2 _TMP7;
    vec2 _TMP8;
    vec2 _TMP9;
    vec2 _TMP10;
    vec2 _TMP11;
    vec2 _TMP12;
    _r0014.x = dot(rubyMVPMatrix_[0], rubyVertexCoord);
    _r0014.y = dot(rubyMVPMatrix_[1], rubyVertexCoord);
    _r0014.z = dot(rubyMVPMatrix_[2], rubyVertexCoord);
    _r0014.w = dot(rubyMVPMatrix_[3], rubyVertexCoord);
    _oPosition1 = _r0014;
    _oColor = COLOR;
    _dx = 1.00000000E+00/rubyTextureSize.x;
    _dy = 1.00000000E+00/rubyTextureSize.y;
    _TMP11 = rubyTexCoord.xy + vec2(-_dx, -_dy);
    _TMP12 = rubyTexCoord.xy + vec2(0.00000000E+00, -_dy);
    _coords._c00_10 = vec4(_TMP11.x, _TMP11.y, _TMP12.x, _TMP12.y);
    _TMP9 = rubyTexCoord.xy + vec2(_dx, -_dy);
    _TMP10 = rubyTexCoord.xy + vec2(-_dx, 0.00000000E+00);
    _coords._c20_01 = vec4(_TMP9.x, _TMP9.y, _TMP10.x, _TMP10.y);
    _TMP7 = rubyTexCoord.xy + vec2(_dx, 0.00000000E+00);
    _TMP8 = rubyTexCoord.xy + vec2(-_dx, _dy);
    _coords._c21_02 = vec4(_TMP7.x, _TMP7.y, _TMP8.x, _TMP8.y);
    _TMP5 = rubyTexCoord.xy + vec2(0.00000000E+00, _dy);
    _TMP6 = rubyTexCoord.xy + vec2(_dx, _dy);
    _coords._c12_22 = vec4(_TMP5.x, _TMP5.y, _TMP6.x, _TMP6.y);
    _coords._c11 = rubyTexCoord.xy;
    _coords._pixel_no = rubyTexCoord.xy*rubyTextureSize;
    gl_Position = _r0014;
    COL0 = COLOR;
    TEX1 = _coords._c00_10;
    TEX2 = _coords._c20_01;
    TEX3 = _coords._c21_02;
    TEX4 = _coords._c12_22;
    TEX5.xy = rubyTexCoord.xy;
    TEX6.xy = _coords._pixel_no;
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
varying     vec2 _pixel_no1;
varying     vec2 _c11;
varying     vec4 _c12_22;
varying     vec4 _c21_02;
varying     vec4 _c20_01;
varying     vec4 _c00_10;
struct tex_coord {
    vec4 _c00_10;
    vec4 _c20_01;
    vec4 _c21_02;
    vec4 _c12_22;
    vec2 _c11;
    vec2 _pixel_no1;
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
vec3 _TMP16;
vec4 _TMP15;
vec2 _TMP17;
float _TMP20;
float _TMP21;
vec3 _TMP14;
vec4 _TMP13;
vec3 _TMP12;
vec4 _TMP11;
vec3 _TMP10;
vec4 _TMP9;
vec3 _TMP8;
vec4 _TMP7;
vec3 _TMP6;
vec4 _TMP5;
vec3 _TMP4;
vec4 _TMP3;
vec3 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D rubyTexture;
float _TMP33;
vec2 _delta0034;
float _TMP41;
float _bright0042;
float _TMP47;
float _x0048;
float _TMP57;
vec2 _delta0058;
float _TMP65;
float _bright0066;
float _TMP71;
float _x0072;
float _TMP81;
vec2 _delta0082;
float _TMP89;
float _bright0090;
float _TMP95;
float _x0096;
float _TMP105;
vec2 _delta0106;
float _TMP113;
float _bright0114;
float _TMP119;
float _x0120;
float _TMP129;
vec2 _delta0130;
float _TMP137;
float _bright0138;
float _TMP143;
float _x0144;
float _TMP153;
vec2 _delta0154;
float _TMP161;
float _bright0162;
float _TMP167;
float _x0168;
float _TMP177;
vec2 _delta0178;
float _TMP185;
float _bright0186;
float _TMP191;
float _x0192;
float _TMP201;
vec2 _delta0202;
float _TMP209;
float _bright0210;
float _TMP215;
float _x0216;
float _TMP225;
vec2 _delta0226;
float _TMP233;
float _bright0234;
float _TMP239;
float _x0240;
vec3 _a0244;
varying vec4 TEX1;
varying vec4 TEX2;
varying vec4 TEX3;
varying vec4 TEX4;
varying vec4 TEX5;
varying vec4 TEX6;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    vec3 _mid_color;
    vec3 _color2;
    vec3 _out_color;
    _TMP0 = texture2D(rubyTexture, TEX5.xy);
    _TMP17 = fract(TEX6.xy);
    _delta0034 = _TMP17 - vec2( 5.00000000E-01, 5.00000000E-01);
    _TMP20 = dot(_delta0034, _delta0034);
    _TMP21 = inversesqrt(_TMP20);
    _TMP33 = 1.00000000E+00/_TMP21;
    _bright0042 = dot(_TMP0.xyz, vec3( 3.00000012E-01, 5.89999974E-01, 1.09999999E-01));
    _TMP41 = 1.04999995E+00 + _bright0042*-9.99999642E-02;
    _x0048 = -2.40000010E+00*_TMP33*_TMP41;
    _TMP47 = pow(2.71828198E+00, _x0048);
    _mid_color = _TMP0.xyz*_TMP47;
    _TMP1 = texture2D(rubyTexture, TEX1.xy);
    _TMP17 = fract(TEX6.xy);
    _delta0058 = _TMP17 - vec2( -5.00000000E-01, -5.00000000E-01);
    _TMP20 = dot(_delta0058, _delta0058);
    _TMP21 = inversesqrt(_TMP20);
    _TMP57 = 1.00000000E+00/_TMP21;
    _bright0066 = dot(_TMP1.xyz, vec3( 3.00000012E-01, 5.89999974E-01, 1.09999999E-01));
    _TMP65 = 1.04999995E+00 + _bright0066*-9.99999642E-02;
    _x0072 = -2.40000010E+00*_TMP57*_TMP65;
    _TMP71 = pow(2.71828198E+00, _x0072);
    _TMP2 = _TMP1.xyz*_TMP71;
    _TMP3 = texture2D(rubyTexture, TEX1.zw);
    _TMP17 = fract(TEX6.xy);
    _delta0082 = _TMP17 - vec2( 5.00000000E-01, -5.00000000E-01);
    _TMP20 = dot(_delta0082, _delta0082);
    _TMP21 = inversesqrt(_TMP20);
    _TMP81 = 1.00000000E+00/_TMP21;
    _bright0090 = dot(_TMP3.xyz, vec3( 3.00000012E-01, 5.89999974E-01, 1.09999999E-01));
    _TMP89 = 1.04999995E+00 + _bright0090*-9.99999642E-02;
    _x0096 = -2.40000010E+00*_TMP81*_TMP89;
    _TMP95 = pow(2.71828198E+00, _x0096);
    _TMP4 = _TMP3.xyz*_TMP95;
    _color2 = _TMP2 + _TMP4;
    _TMP5 = texture2D(rubyTexture, TEX2.xy);
    _TMP17 = fract(TEX6.xy);
    _delta0106 = _TMP17 - vec2( 1.50000000E+00, -5.00000000E-01);
    _TMP20 = dot(_delta0106, _delta0106);
    _TMP21 = inversesqrt(_TMP20);
    _TMP105 = 1.00000000E+00/_TMP21;
    _bright0114 = dot(_TMP5.xyz, vec3( 3.00000012E-01, 5.89999974E-01, 1.09999999E-01));
    _TMP113 = 1.04999995E+00 + _bright0114*-9.99999642E-02;
    _x0120 = -2.40000010E+00*_TMP105*_TMP113;
    _TMP119 = pow(2.71828198E+00, _x0120);
    _TMP6 = _TMP5.xyz*_TMP119;
    _color2 = _color2 + _TMP6;
    _TMP7 = texture2D(rubyTexture, TEX2.zw);
    _TMP17 = fract(TEX6.xy);
    _delta0130 = _TMP17 - vec2( -5.00000000E-01, 5.00000000E-01);
    _TMP20 = dot(_delta0130, _delta0130);
    _TMP21 = inversesqrt(_TMP20);
    _TMP129 = 1.00000000E+00/_TMP21;
    _bright0138 = dot(_TMP7.xyz, vec3( 3.00000012E-01, 5.89999974E-01, 1.09999999E-01));
    _TMP137 = 1.04999995E+00 + _bright0138*-9.99999642E-02;
    _x0144 = -2.40000010E+00*_TMP129*_TMP137;
    _TMP143 = pow(2.71828198E+00, _x0144);
    _TMP8 = _TMP7.xyz*_TMP143;
    _color2 = _color2 + _TMP8;
    _color2 = _color2 + _mid_color;
    _TMP9 = texture2D(rubyTexture, TEX3.xy);
    _TMP17 = fract(TEX6.xy);
    _delta0154 = _TMP17 - vec2( 1.50000000E+00, 5.00000000E-01);
    _TMP20 = dot(_delta0154, _delta0154);
    _TMP21 = inversesqrt(_TMP20);
    _TMP153 = 1.00000000E+00/_TMP21;
    _bright0162 = dot(_TMP9.xyz, vec3( 3.00000012E-01, 5.89999974E-01, 1.09999999E-01));
    _TMP161 = 1.04999995E+00 + _bright0162*-9.99999642E-02;
    _x0168 = -2.40000010E+00*_TMP153*_TMP161;
    _TMP167 = pow(2.71828198E+00, _x0168);
    _TMP10 = _TMP9.xyz*_TMP167;
    _color2 = _color2 + _TMP10;
    _TMP11 = texture2D(rubyTexture, TEX3.zw);
    _TMP17 = fract(TEX6.xy);
    _delta0178 = _TMP17 - vec2( -5.00000000E-01, 1.50000000E+00);
    _TMP20 = dot(_delta0178, _delta0178);
    _TMP21 = inversesqrt(_TMP20);
    _TMP177 = 1.00000000E+00/_TMP21;
    _bright0186 = dot(_TMP11.xyz, vec3( 3.00000012E-01, 5.89999974E-01, 1.09999999E-01));
    _TMP185 = 1.04999995E+00 + _bright0186*-9.99999642E-02;
    _x0192 = -2.40000010E+00*_TMP177*_TMP185;
    _TMP191 = pow(2.71828198E+00, _x0192);
    _TMP12 = _TMP11.xyz*_TMP191;
    _color2 = _color2 + _TMP12;
    _TMP13 = texture2D(rubyTexture, TEX4.xy);
    _TMP17 = fract(TEX6.xy);
    _delta0202 = _TMP17 - vec2( 5.00000000E-01, 1.50000000E+00);
    _TMP20 = dot(_delta0202, _delta0202);
    _TMP21 = inversesqrt(_TMP20);
    _TMP201 = 1.00000000E+00/_TMP21;
    _bright0210 = dot(_TMP13.xyz, vec3( 3.00000012E-01, 5.89999974E-01, 1.09999999E-01));
    _TMP209 = 1.04999995E+00 + _bright0210*-9.99999642E-02;
    _x0216 = -2.40000010E+00*_TMP201*_TMP209;
    _TMP215 = pow(2.71828198E+00, _x0216);
    _TMP14 = _TMP13.xyz*_TMP215;
    _color2 = _color2 + _TMP14;
    _TMP15 = texture2D(rubyTexture, TEX4.zw);
    _TMP17 = fract(TEX6.xy);
    _delta0226 = _TMP17 - vec2( 1.50000000E+00, 1.50000000E+00);
    _TMP20 = dot(_delta0226, _delta0226);
    _TMP21 = inversesqrt(_TMP20);
    _TMP225 = 1.00000000E+00/_TMP21;
    _bright0234 = dot(_TMP15.xyz, vec3( 3.00000012E-01, 5.89999974E-01, 1.09999999E-01));
    _TMP233 = 1.04999995E+00 + _bright0234*-9.99999642E-02;
    _x0240 = -2.40000010E+00*_TMP225*_TMP233;
    _TMP239 = pow(2.71828198E+00, _x0240);
    _TMP16 = _TMP15.xyz*_TMP239;
    _color2 = _color2 + _TMP16;
    _a0244 = 1.20000005E+00*_mid_color;
    _out_color = _a0244 + 6.49999976E-01*(_color2 - _a0244);
    _ret_0 = vec4(_out_color.x, _out_color.y, _out_color.z, 1.00000000E+00);
    gl_FragColor = _ret_0;
    return;
} 
 ]]></fragment>
</shader>
