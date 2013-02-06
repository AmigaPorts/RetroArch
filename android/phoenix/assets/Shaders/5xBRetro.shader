<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     vec4 _t1;
varying     vec2 _texCoord1;
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
    vec2 _texCoord1;
    vec4 _t1;
};
out_vertex _ret_0;
float _TMP0;
uniform mat4 rubyMVPMatrix;
uniform input_dummy _IN1;
vec4 _r0006;
attribute vec4 rubyVertexCoord;
attribute vec4 rubyTexCoord;
varying vec4 TEX0;
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
    out_vertex _OUT;
    vec2 _ps;
    _TMP0 = dot(vec4(float(rubyMVPMatrix_[0].x), float(rubyMVPMatrix_[0].y), float(rubyMVPMatrix_[0].z), float(rubyMVPMatrix_[0].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0006.x = float(_TMP0);
    _TMP0 = dot(vec4(float(rubyMVPMatrix_[1].x), float(rubyMVPMatrix_[1].y), float(rubyMVPMatrix_[1].z), float(rubyMVPMatrix_[1].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0006.y = float(_TMP0);
    _TMP0 = dot(vec4(float(rubyMVPMatrix_[2].x), float(rubyMVPMatrix_[2].y), float(rubyMVPMatrix_[2].z), float(rubyMVPMatrix_[2].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0006.z = float(_TMP0);
    _TMP0 = dot(vec4(float(rubyMVPMatrix_[3].x), float(rubyMVPMatrix_[3].y), float(rubyMVPMatrix_[3].z), float(rubyMVPMatrix_[3].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0006.w = float(_TMP0);
    _ps = vec2(float((1.00000000E+00/rubyTextureSize.x)), float((1.00000000E+00/rubyTextureSize.y)));
    _OUT._t1.xy = vec2(0.00000000E+00, -_ps.y);
    _OUT._t1.zw = vec2(-_ps.x, 0.00000000E+00);
    _position1 = _r0006;
    _texCoord1 = rubyTexCoord.xy;
    _t1 = _OUT._t1;
    gl_Position = vec4(float(_r0006.x), float(_r0006.y), float(_r0006.z), float(_r0006.w));
    TEX0.xy = rubyTexCoord.xy;
    TEX1 = _OUT._t1;
    return;
    TEX0.xy = _texCoord1;
    TEX1 = _t1;
} 
 ]]></vertex>
    <fragment><![CDATA[
#ifdef GL_ES
precision mediump float;
#endif
varying     vec4 _t1;
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
    vec4 _t1;
};
vec4 _ret_0;
vec3 _TMP18;
vec3 _TMP19;
float _TMP15;
float _TMP14;
float _TMP13;
float _TMP20;
float _TMP26;
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
vec2 _TMP0;
uniform sampler2D rubyTexture;
uniform input_dummy _IN1;
vec2 _x0034;
vec2 _val0036;
vec2 _c0038;
vec2 _c0040;
vec2 _c0042;
vec2 _c0046;
vec2 _c0048;
vec2 _c0050;
vec2 _c0052;
vec2 _c0054;
vec2 _c0056;
vec2 _c0058;
vec2 _c0060;
float _TMP113;
float _a0116;
float _TMP117;
float _a0120;
float _TMP121;
float _a0124;
float _TMP125;
float _a0128;
float _TMP129;
float _a0132;
float _TMP135;
float _a0138;
float _TMP139;
float _a0142;
float _TMP143;
float _a0146;
float _TMP147;
float _a0150;
float _TMP151;
float _a0154;
float _TMP155;
float _a0158;
float _TMP159;
float _a0162;
varying vec4 TEX0;
varying vec4 TEX1;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    bool _edr;
    bool _px;
    bool _interp_restriction_lv1;
    bool _nc;
    bool _fx;
    vec2 _pos;
    vec2 _dir;
    vec2 _g1;
    vec2 _g2;
    vec3 _B1;
    vec3 _C;
    vec3 _D;
    vec3 _E;
    vec3 _F;
    vec3 _G;
    vec3 _H;
    vec3 _I;
    vec3 _F4;
    vec3 _I4;
    vec3 _H5;
    vec3 _I5;
    float _b1;
    float _c1;
    float _d1;
    float _e1;
    float _f1;
    float _g3;
    float _h1;
    float _i;
    float _i4;
    float _i5;
    float _h5;
    float _f4;
    _x0034 = TEX0.xy*rubyTextureSize;
    _TMP0 = fract(_x0034);
    _pos = _TMP0 - vec2( 5.00000000E-01, 5.00000000E-01);
    _val0036 = vec2(float((_pos.x > 0.00000000E+00)), float((_pos.y > 0.00000000E+00)));
    _dir = _val0036 - vec2(float((_pos.x < 0.00000000E+00)), float((_pos.y < 0.00000000E+00)));
    _g1 = _dir*vec2(float(TEX1.x), float(TEX1.y));
    _g2 = _dir*vec2(float(TEX1.z), float(TEX1.w));
    _c0038 = TEX0.xy + _g1;
    _TMP1 = texture2D(rubyTexture, _c0038);
    _B1 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _c0040 = (TEX0.xy + _g1) - _g2;
    _TMP2 = texture2D(rubyTexture, _c0040);
    _C = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _c0042 = TEX0.xy + _g2;
    _TMP3 = texture2D(rubyTexture, _c0042);
    _D = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = texture2D(rubyTexture, TEX0.xy);
    _E = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _c0046 = TEX0.xy - _g2;
    _TMP5 = texture2D(rubyTexture, _c0046);
    _F = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _c0048 = (TEX0.xy - _g1) + _g2;
    _TMP6 = texture2D(rubyTexture, _c0048);
    _G = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _c0050 = TEX0.xy - _g1;
    _TMP7 = texture2D(rubyTexture, _c0050);
    _H = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _c0052 = (TEX0.xy - _g1) - _g2;
    _TMP8 = texture2D(rubyTexture, _c0052);
    _I = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _c0054 = TEX0.xy - 2.00000000E+00*_g2;
    _TMP9 = texture2D(rubyTexture, _c0054);
    _F4 = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _c0056 = (TEX0.xy - _g1) - 2.00000000E+00*_g2;
    _TMP10 = texture2D(rubyTexture, _c0056);
    _I4 = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _c0058 = TEX0.xy - 2.00000000E+00*_g1;
    _TMP11 = texture2D(rubyTexture, _c0058);
    _H5 = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _c0060 = (TEX0.xy - 2.00000000E+00*_g1) - _g2;
    _TMP12 = texture2D(rubyTexture, _c0060);
    _I5 = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _TMP26 = dot(vec3(float(_B1.x), float(_B1.y), float(_B1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _TMP20 = float(_TMP26);
    _b1 = float(_TMP20);
    _TMP26 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _TMP20 = float(_TMP26);
    _c1 = float(_TMP20);
    _TMP26 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _TMP20 = float(_TMP26);
    _d1 = float(_TMP20);
    _TMP26 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _TMP20 = float(_TMP26);
    _e1 = float(_TMP20);
    _TMP26 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _TMP20 = float(_TMP26);
    _f1 = float(_TMP20);
    _TMP26 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _TMP20 = float(_TMP26);
    _g3 = float(_TMP20);
    _TMP26 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _TMP20 = float(_TMP26);
    _h1 = float(_TMP20);
    _TMP26 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _TMP20 = float(_TMP26);
    _i = float(_TMP20);
    _TMP26 = dot(vec3(float(_I4.x), float(_I4.y), float(_I4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _TMP20 = float(_TMP26);
    _i4 = float(_TMP20);
    _TMP26 = dot(vec3(float(_I5.x), float(_I5.y), float(_I5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _TMP20 = float(_TMP26);
    _i5 = float(_TMP20);
    _TMP26 = dot(vec3(float(_H5.x), float(_H5.y), float(_H5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _TMP20 = float(_TMP26);
    _h5 = float(_TMP20);
    _TMP26 = dot(vec3(float(_F4.x), float(_F4.y), float(_F4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _TMP20 = float(_TMP26);
    _f4 = float(_TMP20);
    _TMP13 = dot(_dir, _pos);
    _fx = _TMP13 > 7.50000000E-01;
    _interp_restriction_lv1 = _e1 != _f1 && _e1 != _h1;
    _a0116 = _e1 - _c1;
    _TMP113 = abs(_a0116);
    _a0120 = _e1 - _g3;
    _TMP117 = abs(_a0120);
    _a0124 = _i - _h5;
    _TMP121 = abs(_a0124);
    _a0128 = _i - _f4;
    _TMP125 = abs(_a0128);
    _a0132 = _h1 - _f1;
    _TMP129 = abs(_a0132);
    _TMP14 = _TMP113 + _TMP117 + _TMP121 + _TMP125 + 4.00000000E+00*_TMP129;
    _a0138 = _h1 - _d1;
    _TMP135 = abs(_a0138);
    _a0142 = _h1 - _i5;
    _TMP139 = abs(_a0142);
    _a0146 = _f1 - _i4;
    _TMP143 = abs(_a0146);
    _a0150 = _f1 - _b1;
    _TMP147 = abs(_a0150);
    _a0154 = _e1 - _i;
    _TMP151 = abs(_a0154);
    _TMP15 = _TMP135 + _TMP139 + _TMP143 + _TMP147 + 4.00000000E+00*_TMP151;
    _edr = _TMP14 < _TMP15 && _interp_restriction_lv1;
    _nc = _edr && _fx;
    _a0158 = _e1 - _f1;
    _TMP155 = abs(_a0158);
    _a0162 = _e1 - _h1;
    _TMP159 = abs(_a0162);
    _px = _TMP155 <= _TMP159;
    if (_nc) { 
        if (_px) { 
            _TMP19 = _F;
        } else {
            _TMP19 = _H;
        } 
        _TMP18 = _TMP19;
    } else {
        _TMP18 = _E;
    } 
    _ret_0 = vec4(_TMP18.x, _TMP18.y, _TMP18.z, 1.00000000E+00);
    gl_FragColor = vec4(float(_ret_0.x), float(_ret_0.y), float(_ret_0.z), float(_ret_0.w));
    return;
} 
 ]]></fragment>
</shader>
