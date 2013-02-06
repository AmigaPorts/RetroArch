<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     vec4 _t6;
varying     vec4 _t5;
varying     vec4 _t4;
varying     vec4 _t3;
varying     vec4 _t2;
varying     vec4 _t1;
varying     vec2 _texCoord;
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
struct out_vertex {
    vec4 _position1;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
};
out_vertex _ret_0;
float _TMP1;
uniform mat4 rubyMVPMatrix;
vec4 _r0018;
attribute vec4 rubyVertexCoord;
attribute vec4 rubyTexCoord;
varying vec4 TEX0;
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
    out_vertex _TMP16;
    _TMP1 = dot(vec4(float(rubyMVPMatrix_[0].x), float(rubyMVPMatrix_[0].y), float(rubyMVPMatrix_[0].z), float(rubyMVPMatrix_[0].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0018.x = float(_TMP1);
    _TMP1 = dot(vec4(float(rubyMVPMatrix_[1].x), float(rubyMVPMatrix_[1].y), float(rubyMVPMatrix_[1].z), float(rubyMVPMatrix_[1].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0018.y = float(_TMP1);
    _TMP1 = dot(vec4(float(rubyMVPMatrix_[2].x), float(rubyMVPMatrix_[2].y), float(rubyMVPMatrix_[2].z), float(rubyMVPMatrix_[2].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0018.z = float(_TMP1);
    _TMP1 = dot(vec4(float(rubyMVPMatrix_[3].x), float(rubyMVPMatrix_[3].y), float(rubyMVPMatrix_[3].z), float(rubyMVPMatrix_[3].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0018.w = float(_TMP1);
    _TMP16._t1 = vec4(rubyTexCoord.x, rubyTexCoord.y, rubyTexCoord.x, rubyTexCoord.y) + vec4( -8.67843628E-04, -1.48773193E-03, 8.67843628E-04, -1.48773193E-03);
    _TMP16._t2 = vec4(rubyTexCoord.x, rubyTexCoord.y, rubyTexCoord.x, rubyTexCoord.y) + vec4( 8.67843628E-04, 1.48773193E-03, -8.67843628E-04, 1.48773193E-03);
    _TMP16._t3 = vec4(rubyTexCoord.x, rubyTexCoord.y, rubyTexCoord.x, rubyTexCoord.y) + vec4( -4.33921814E-04, -7.43865967E-04, 4.33921814E-04, -7.43865967E-04);
    _TMP16._t4 = vec4(rubyTexCoord.x, rubyTexCoord.y, rubyTexCoord.x, rubyTexCoord.y) + vec4( 4.33921814E-04, 7.43865967E-04, -4.33921814E-04, 7.43865967E-04);
    _TMP16._t5 = vec4(rubyTexCoord.x, rubyTexCoord.y, rubyTexCoord.x, rubyTexCoord.y) + vec4( -8.67843628E-04, 0.00000000E+00, 8.67843628E-04, 0.00000000E+00);
    _TMP16._t6 = vec4(rubyTexCoord.x, rubyTexCoord.y, rubyTexCoord.x, rubyTexCoord.y) + vec4( 0.00000000E+00, -1.48773193E-03, 0.00000000E+00, 1.48773193E-03);
    _position1 = _r0018;
    _texCoord = rubyTexCoord.xy;
    _t1 = _TMP16._t1;
    _t2 = _TMP16._t2;
    _t3 = _TMP16._t3;
    _t4 = _TMP16._t4;
    _t5 = _TMP16._t5;
    _t6 = _TMP16._t6;
    gl_Position = vec4(float(_r0018.x), float(_r0018.y), float(_r0018.z), float(_r0018.w));
    TEX0.xy = rubyTexCoord.xy;
    TEX1 = _TMP16._t1;
    TEX2 = _TMP16._t2;
    TEX3 = _TMP16._t3;
    TEX4 = _TMP16._t4;
    TEX5 = _TMP16._t5;
    TEX6 = _TMP16._t6;
    return;
    TEX0.xy = _texCoord;
    TEX1 = _t1;
    TEX2 = _t2;
    TEX3 = _t3;
    TEX4 = _t4;
    TEX5 = _t5;
    TEX6 = _t6;
} 
 ]]></vertex>
    <fragment><![CDATA[
#ifdef GL_ES
precision mediump float;
#endif
varying     vec4 _t6;
varying     vec4 _t5;
varying     vec4 _t4;
varying     vec4 _t3;
varying     vec4 _t21;
varying     vec4 _t11;
varying     vec2 _texCoord;
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
struct out_vertex {
    vec2 _texCoord;
    vec4 _t11;
    vec4 _t21;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
};
vec4 _ret_0;
float _TMP24;
vec3 _TMP23;
float _TMP26;
vec3 _TMP25;
float _TMP22;
vec3 _TMP21;
float _TMP20;
vec3 _TMP19;
float _TMP18;
vec3 _TMP17;
float _TMP16;
vec3 _TMP15;
float _TMP14;
vec3 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D rubyTexture;
vec2 _c0032;
vec2 _c0034;
vec2 _c0036;
vec2 _c0038;
vec2 _c0040;
vec2 _c0042;
vec2 _c0044;
vec2 _c0046;
vec2 _c0048;
vec2 _c0050;
vec2 _c0052;
vec2 _c0054;
vec2 _c0056;
vec3 _a0058;
vec3 _a0062;
vec3 _a0066;
vec3 _a0070;
vec3 _a0074;
vec3 _a0078;
varying vec4 TEX0;
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
    vec3 _c11;
    vec3 _c00;
    vec3 _c20;
    vec3 _c22;
    vec3 _c02;
    vec3 _s00;
    vec3 _s20;
    vec3 _s22;
    vec3 _s02;
    vec3 _c01;
    vec3 _c21;
    vec3 _c10;
    vec3 _c12;
    float _d1;
    float _d2;
    float _hl;
    float _vl;
    float _m1;
    float _m2;
    vec3 _t1;
    vec3 _t2;
    vec3 _TMP30;
    _c0032 = vec2(float(TEX0.x), float(TEX0.y));
    _TMP0 = texture2D(rubyTexture, _c0032);
    _c11 = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _c0034 = vec2(float(TEX1.x), float(TEX1.y));
    _TMP1 = texture2D(rubyTexture, _c0034);
    _c00 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _c0036 = vec2(float(TEX1.z), float(TEX1.w));
    _TMP2 = texture2D(rubyTexture, _c0036);
    _c20 = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _c0038 = vec2(float(TEX2.x), float(TEX2.y));
    _TMP3 = texture2D(rubyTexture, _c0038);
    _c22 = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _c0040 = vec2(float(TEX2.z), float(TEX2.w));
    _TMP4 = texture2D(rubyTexture, _c0040);
    _c02 = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _c0042 = vec2(float(TEX3.x), float(TEX3.y));
    _TMP5 = texture2D(rubyTexture, _c0042);
    _s00 = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _c0044 = vec2(float(TEX3.z), float(TEX3.w));
    _TMP6 = texture2D(rubyTexture, _c0044);
    _s20 = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _c0046 = vec2(float(TEX4.x), float(TEX4.y));
    _TMP7 = texture2D(rubyTexture, _c0046);
    _s22 = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _c0048 = vec2(float(TEX4.z), float(TEX4.w));
    _TMP8 = texture2D(rubyTexture, _c0048);
    _s02 = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _c0050 = vec2(float(TEX5.x), float(TEX5.y));
    _TMP9 = texture2D(rubyTexture, _c0050);
    _c01 = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _c0052 = vec2(float(TEX5.z), float(TEX5.w));
    _TMP10 = texture2D(rubyTexture, _c0052);
    _c21 = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _c0054 = vec2(float(TEX6.x), float(TEX6.y));
    _TMP11 = texture2D(rubyTexture, _c0054);
    _c10 = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _c0056 = vec2(float(TEX6.z), float(TEX6.w));
    _TMP12 = texture2D(rubyTexture, _c0056);
    _c12 = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _a0058 = _c00 - _c22;
    _TMP25 = abs(vec3(float(_a0058.x), float(_a0058.y), float(_a0058.z)));
    _TMP13 = vec3(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z));
    _TMP26 = dot(vec3(float(_TMP13.x), float(_TMP13.y), float(_TMP13.z)), vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP14 = float(_TMP26);
    _d1 = _TMP14 + 1.00016594E-04;
    _a0062 = _c20 - _c02;
    _TMP25 = abs(vec3(float(_a0062.x), float(_a0062.y), float(_a0062.z)));
    _TMP15 = vec3(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z));
    _TMP26 = dot(vec3(float(_TMP15.x), float(_TMP15.y), float(_TMP15.z)), vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP16 = float(_TMP26);
    _d2 = _TMP16 + 1.00016594E-04;
    _a0066 = _c01 - _c21;
    _TMP25 = abs(vec3(float(_a0066.x), float(_a0066.y), float(_a0066.z)));
    _TMP17 = vec3(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z));
    _TMP26 = dot(vec3(float(_TMP17.x), float(_TMP17.y), float(_TMP17.z)), vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP18 = float(_TMP26);
    _hl = _TMP18 + 1.00016594E-04;
    _a0070 = _c10 - _c12;
    _TMP25 = abs(vec3(float(_a0070.x), float(_a0070.y), float(_a0070.z)));
    _TMP19 = vec3(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z));
    _TMP26 = dot(vec3(float(_TMP19.x), float(_TMP19.y), float(_TMP19.z)), vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP20 = float(_TMP26);
    _vl = _TMP20 + 1.00016594E-04;
    _a0074 = _s00 - _s22;
    _TMP25 = abs(vec3(float(_a0074.x), float(_a0074.y), float(_a0074.z)));
    _TMP21 = vec3(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z));
    _TMP26 = dot(vec3(float(_TMP21.x), float(_TMP21.y), float(_TMP21.z)), vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP22 = float(_TMP26);
    _m1 = _TMP22 + 1.00040436E-03;
    _a0078 = _s02 - _s20;
    _TMP25 = abs(vec3(float(_a0078.x), float(_a0078.y), float(_a0078.z)));
    _TMP23 = vec3(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z));
    _TMP26 = dot(vec3(float(_TMP23.x), float(_TMP23.y), float(_TMP23.z)), vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP24 = float(_TMP26);
    _m2 = _TMP24 + 1.00040436E-03;
    _t1 = (_hl*(_c10 + _c12) + _vl*(_c01 + _c21) + (_hl + _vl)*_c11)/(3.00000000E+00*(_hl + _vl));
    _t2 = (_d1*(_c20 + _c02) + _d2*(_c00 + _c22) + (_d1 + _d2)*_c11)/(3.00000000E+00*(_d1 + _d2));
    _TMP30 = 2.50000000E-01*(_t1 + _t2 + (_m2*(_s00 + _s22) + _m1*(_s02 + _s20))/(_m1 + _m2));
    _ret_0 = vec4(_TMP30.x, _TMP30.y, _TMP30.z, 1.00000000E+00);
    gl_FragColor = vec4(float(_ret_0.x), float(_ret_0.y), float(_ret_0.z), float(_ret_0.w));
    return;
} 
 ]]></fragment>
</shader>
