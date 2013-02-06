<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     vec4 _t2;
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
    vec4 _t2;
};
out_vertex _ret_0;
uniform mat4 rubyMVPMatrix;
uniform input_dummy _IN1;
vec4 _r0003;
attribute vec4 rubyVertexCoord;
attribute vec4 rubyTexCoord;
varying vec4 TEX0;
varying vec4 TEX1;
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
    out_vertex _OUT;
    vec2 _ps;
    _r0003.x = dot(rubyMVPMatrix_[0], rubyVertexCoord);
    _r0003.y = dot(rubyMVPMatrix_[1], rubyVertexCoord);
    _r0003.z = dot(rubyMVPMatrix_[2], rubyVertexCoord);
    _r0003.w = dot(rubyMVPMatrix_[3], rubyVertexCoord);
    _ps = vec2(1.00000000E+00/rubyTextureSize.x, 1.00000000E+00/rubyTextureSize.y);
    _OUT._t1.xy = rubyTexCoord.xy + vec2(0.00000000E+00, -_ps.y);
    _OUT._t1.zw = rubyTexCoord.xy + vec2(-_ps.x, 0.00000000E+00);
    _OUT._t2.xy = rubyTexCoord.xy + vec2(_ps.x, 0.00000000E+00);
    _OUT._t2.zw = rubyTexCoord.xy + vec2(0.00000000E+00, _ps.y);
    _position1 = _r0003;
    _texCoord1 = rubyTexCoord.xy;
    _t1 = _OUT._t1;
    _t2 = _OUT._t2;
    gl_Position = _r0003;
    TEX0.xy = rubyTexCoord.xy;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    return;
    TEX0.xy = _texCoord1;
    TEX1 = _t1;
    TEX2 = _t2;
} 
 ]]></vertex>
    <fragment><![CDATA[
#ifdef GL_ES
precision mediump float;
#endif
varying     vec4 _t2;
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
    vec4 _t2;
};
vec4 _ret_0;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D rubyTexture;
uniform input_dummy _IN1;
vec2 _x0010;
varying vec4 TEX0;
varying vec4 TEX1;
varying vec4 TEX2;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    vec2 _fp;
    vec3 _B;
    vec3 _D;
    vec3 _E;
    vec3 _F;
    vec3 _H;
    vec3 _E0;
    vec3 _E1;
    vec3 _E2;
    vec3 _E3;
    vec3 _TMP8;
    _x0010 = TEX0.xy*rubyTextureSize;
    _fp = fract(_x0010);
    _TMP0 = texture2D(rubyTexture, TEX1.xy);
    _B = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _TMP1 = texture2D(rubyTexture, TEX1.zw);
    _D = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _TMP2 = texture2D(rubyTexture, TEX0.xy);
    _E = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _TMP3 = texture2D(rubyTexture, TEX2.xy);
    _F = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = texture2D(rubyTexture, TEX2.zw);
    _H = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _E0 = vec3(_D.x == _B.x && _B.x != _H.x && _D.x != _F.x ? _D.x : _E.x, _D.y == _B.y && _B.y != _H.y && _D.y != _F.y ? _D.y : _E.y, _D.z == _B.z && _B.z != _H.z && _D.z != _F.z ? _D.z : _E.z);
    _E1 = vec3(_B.x == _F.x && _B.x != _H.x && _D.x != _F.x ? _F.x : _E.x, _B.y == _F.y && _B.y != _H.y && _D.y != _F.y ? _F.y : _E.y, _B.z == _F.z && _B.z != _H.z && _D.z != _F.z ? _F.z : _E.z);
    _E2 = vec3(_D.x == _H.x && _B.x != _H.x && _D.x != _F.x ? _D.x : _E.x, _D.y == _H.y && _B.y != _H.y && _D.y != _F.y ? _D.y : _E.y, _D.z == _H.z && _B.z != _H.z && _D.z != _F.z ? _D.z : _E.z);
    _E3 = vec3(_H.x == _F.x && _B.x != _H.x && _D.x != _F.x ? _F.x : _E.x, _H.y == _F.y && _B.y != _H.y && _D.y != _F.y ? _F.y : _E.y, _H.z == _F.z && _B.z != _H.z && _D.z != _F.z ? _F.z : _E.z);
    _TMP8 = (vec3(float(_E3.x), float(_E3.y), float(_E3.z))*_fp.x + vec3(float(_E2.x), float(_E2.y), float(_E2.z))*(1.00000000E+00 - _fp.x))*_fp.y + (vec3(float(_E1.x), float(_E1.y), float(_E1.z))*_fp.x + vec3(float(_E0.x), float(_E0.y), float(_E0.z))*(1.00000000E+00 - _fp.x))*(1.00000000E+00 - _fp.y);
    _ret_0 = vec4(_TMP8.x, _TMP8.y, _TMP8.z, 1.00000000E+00);
    gl_FragColor = _ret_0;
    return;
} 
 ]]></fragment>
</shader>
