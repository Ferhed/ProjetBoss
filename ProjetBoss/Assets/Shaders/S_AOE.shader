// Upgrade NOTE: commented out 'float4 unity_DynamicLightmapST', a built-in variable
// Upgrade NOTE: commented out 'float4 unity_LightmapST', a built-in variable

// Shader created with Shader Forge v1.03 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.03;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:2,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:665,x:32719,y:32712,varname:node_665,prsc:2|diff-7247-OUT,emission-7247-OUT,alpha-3734-OUT,disp-3018-OUT,tess-7166-OUT;n:type:ShaderForge.SFN_TexCoord,id:4220,x:30961,y:32518,varname:node_4220,prsc:2,uv:0;n:type:ShaderForge.SFN_Length,id:7402,x:31342,y:32518,varname:node_7402,prsc:2|IN-1720-OUT;n:type:ShaderForge.SFN_RemapRange,id:1720,x:31150,y:32518,varname:node_1720,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4220-UVOUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2887,x:31662,y:32714,varname:node_2887,prsc:2|IN-7402-OUT,IMIN-3271-OUT,IMAX-9194-OUT,OMIN-8156-OUT,OMAX-1956-OUT;n:type:ShaderForge.SFN_Vector1,id:3271,x:31342,y:32732,varname:node_3271,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9194,x:31342,y:32780,varname:node_9194,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:8156,x:31342,y:32832,varname:node_8156,prsc:2,v1:-10;n:type:ShaderForge.SFN_Slider,id:2879,x:30901,y:32900,ptovrint:False,ptlb:Spread,ptin:_Spread,varname:node_2879,prsc:2,min:0,cur:0,max:15;n:type:ShaderForge.SFN_Exp,id:1956,x:31342,y:32894,varname:node_1956,prsc:2,et:1|IN-2879-OUT;n:type:ShaderForge.SFN_OneMinus,id:6485,x:31883,y:32714,varname:node_6485,prsc:2|IN-2887-OUT;n:type:ShaderForge.SFN_Multiply,id:3734,x:32130,y:32803,varname:node_3734,prsc:2|A-6485-OUT,B-22-OUT;n:type:ShaderForge.SFN_Slider,id:22,x:31788,y:32882,ptovrint:False,ptlb:Hardness,ptin:_Hardness,varname:node_22,prsc:2,min:0,cur:0.5863351,max:1;n:type:ShaderForge.SFN_Tex2d,id:2578,x:29966,y:33554,varname:node_5267,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-6221-UVOUT,TEX-4428-TEX;n:type:ShaderForge.SFN_Vector3,id:998,x:30021,y:32229,varname:node_998,prsc:2,v1:1,v2:0.8068966,v3:0;n:type:ShaderForge.SFN_Slider,id:7166,x:32225,y:33576,ptovrint:False,ptlb:tessellation,ptin:_tessellation,varname:node_6434,prsc:2,min:1,cur:5,max:50;n:type:ShaderForge.SFN_Lerp,id:7247,x:31087,y:32219,varname:node_7247,prsc:2|A-8805-OUT,B-9816-OUT,T-9524-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4428,x:29146,y:33516,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_4093,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5522,x:29966,y:33310,varname:node_2111,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-6305-UVOUT,TEX-4428-TEX;n:type:ShaderForge.SFN_NormalVector,id:5881,x:31931,y:33123,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:3018,x:32250,y:33265,varname:node_3018,prsc:2|A-5881-OUT,B-3677-OUT;n:type:ShaderForge.SFN_Power,id:8805,x:30607,y:32140,varname:node_8805,prsc:2|VAL-998-OUT,EXP-3015-OUT;n:type:ShaderForge.SFN_Vector1,id:3015,x:30021,y:32162,varname:node_3015,prsc:2,v1:10;n:type:ShaderForge.SFN_Relay,id:9816,x:30636,y:32301,varname:node_9816,prsc:2|IN-998-OUT;n:type:ShaderForge.SFN_Multiply,id:8911,x:30299,y:33300,varname:node_8911,prsc:2|A-5522-RGB,B-2578-RGB;n:type:ShaderForge.SFN_TexCoord,id:7522,x:29146,y:33309,varname:node_7522,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:5984,x:29557,y:33154,varname:node_5984,prsc:2|A-7522-UVOUT,B-4213-OUT;n:type:ShaderForge.SFN_Vector1,id:4213,x:29146,y:33169,varname:node_4213,prsc:2,v1:3;n:type:ShaderForge.SFN_Add,id:6892,x:30286,y:32758,varname:node_6892,prsc:2|A-8911-OUT,B-7071-OUT;n:type:ShaderForge.SFN_Power,id:9524,x:30595,y:32548,varname:node_9524,prsc:2|VAL-6892-OUT,EXP-6593-OUT;n:type:ShaderForge.SFN_Slider,id:7071,x:29701,y:32714,ptovrint:False,ptlb:Color Intensity,ptin:_ColorIntensity,varname:node_7071,prsc:2,min:0,cur:0.2416689,max:1;n:type:ShaderForge.SFN_Multiply,id:6593,x:30286,y:32547,varname:node_6593,prsc:2|A-7071-OUT,B-8696-OUT;n:type:ShaderForge.SFN_Vector1,id:8696,x:29858,y:32569,varname:node_8696,prsc:2,v1:10;n:type:ShaderForge.SFN_Panner,id:6305,x:29734,y:33154,varname:node_6305,prsc:2,spu:1,spv:1|UVIN-5984-OUT;n:type:ShaderForge.SFN_Panner,id:6221,x:29734,y:33544,varname:node_6221,prsc:2,spu:1,spv:1|UVIN-7522-UVOUT;n:type:ShaderForge.SFN_Multiply,id:3677,x:30771,y:33302,varname:node_3677,prsc:2|A-8911-OUT,B-5082-OUT;n:type:ShaderForge.SFN_Slider,id:5082,x:30299,y:33460,ptovrint:False,ptlb:itensity,ptin:_itensity,varname:node_5082,prsc:2,min:0,cur:1.551636,max:5;proporder:2879-22-7166-4428-7071-5082;pass:END;sub:END;*/

Shader "Custom/AOE" {
    Properties {
        _Spread ("Spread", Range(0, 15)) = 0
        _Hardness ("Hardness", Range(0, 1)) = 0.5863351
        _tessellation ("tessellation", Range(1, 50)) = 5
        _Noise ("Noise", 2D) = "white" {}
        _ColorIntensity ("Color Intensity", Range(0, 1)) = 0.2416689
        _itensity ("itensity", Range(0, 5)) = 1.551636
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 5.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            // float4 unity_LightmapST;
            #ifdef DYNAMICLIGHTMAP_ON
                // float4 unity_DynamicLightmapST;
            #endif
            uniform float _Spread;
            uniform float _Hardness;
            uniform float _tessellation;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _ColorIntensity;
            uniform float _itensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD5;
                #else
                    float3 shLight : TEXCOORD5;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_3697 = _Time + _TimeEditor;
                    float2 node_6305 = ((v.texcoord0*3.0)+node_3697.g*float2(1,1));
                    float4 node_2111 = tex2Dlod(_Noise,float4(TRANSFORM_TEX(node_6305, _Noise),0.0,0));
                    float2 node_6221 = (v.texcoord0+node_3697.g*float2(1,1));
                    float4 node_5267 = tex2Dlod(_Noise,float4(TRANSFORM_TEX(node_6221, _Noise),0.0,0));
                    float3 node_8911 = (node_2111.rgb*node_5267.rgb);
                    v.vertex.xyz += (v.normal*(node_8911*_itensity));
                }
                float Tessellation(TessVertex v){
                    return _tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 indirectDiffuse = float3(0,0,0);
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 node_998 = float3(1,0.8068966,0);
                float4 node_3697 = _Time + _TimeEditor;
                float2 node_6305 = ((i.uv0*3.0)+node_3697.g*float2(1,1));
                float4 node_2111 = tex2D(_Noise,TRANSFORM_TEX(node_6305, _Noise));
                float2 node_6221 = (i.uv0+node_3697.g*float2(1,1));
                float4 node_5267 = tex2D(_Noise,TRANSFORM_TEX(node_6221, _Noise));
                float3 node_8911 = (node_2111.rgb*node_5267.rgb);
                float3 node_7247 = lerp(pow(node_998,10.0),node_998,pow((node_8911+_ColorIntensity),(_ColorIntensity*10.0)));
                float3 diffuse = (directDiffuse + indirectDiffuse) * node_7247;
////// Emissive:
                float3 emissive = node_7247;
/// Final Color:
                float3 finalColor = diffuse + emissive;
                float node_3271 = 0.0;
                float node_8156 = (-10.0);
                fixed4 finalRGBA = fixed4(finalColor,((1.0 - (node_8156 + ( (length((i.uv0*2.0+-1.0)) - node_3271) * (exp2(_Spread) - node_8156) ) / (1.0 - node_3271)))*_Hardness));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 5.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            // float4 unity_LightmapST;
            #ifdef DYNAMICLIGHTMAP_ON
                // float4 unity_DynamicLightmapST;
            #endif
            uniform float _Spread;
            uniform float _Hardness;
            uniform float _tessellation;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _ColorIntensity;
            uniform float _itensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD6;
                #else
                    float3 shLight : TEXCOORD6;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_2588 = _Time + _TimeEditor;
                    float2 node_6305 = ((v.texcoord0*3.0)+node_2588.g*float2(1,1));
                    float4 node_2111 = tex2Dlod(_Noise,float4(TRANSFORM_TEX(node_6305, _Noise),0.0,0));
                    float2 node_6221 = (v.texcoord0+node_2588.g*float2(1,1));
                    float4 node_5267 = tex2Dlod(_Noise,float4(TRANSFORM_TEX(node_6221, _Noise),0.0,0));
                    float3 node_8911 = (node_2111.rgb*node_5267.rgb);
                    v.vertex.xyz += (v.normal*(node_8911*_itensity));
                }
                float Tessellation(TessVertex v){
                    return _tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 node_998 = float3(1,0.8068966,0);
                float4 node_2588 = _Time + _TimeEditor;
                float2 node_6305 = ((i.uv0*3.0)+node_2588.g*float2(1,1));
                float4 node_2111 = tex2D(_Noise,TRANSFORM_TEX(node_6305, _Noise));
                float2 node_6221 = (i.uv0+node_2588.g*float2(1,1));
                float4 node_5267 = tex2D(_Noise,TRANSFORM_TEX(node_6221, _Noise));
                float3 node_8911 = (node_2111.rgb*node_5267.rgb);
                float3 node_7247 = lerp(pow(node_998,10.0),node_998,pow((node_8911+_ColorIntensity),(_ColorIntensity*10.0)));
                float3 diffuse = directDiffuse * node_7247;
/// Final Color:
                float3 finalColor = diffuse;
                float node_3271 = 0.0;
                float node_8156 = (-10.0);
                return fixed4(finalColor * ((1.0 - (node_8156 + ( (length((i.uv0*2.0+-1.0)) - node_3271) * (exp2(_Spread) - node_8156) ) / (1.0 - node_3271)))*_Hardness),0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCollector"
            Tags {
                "LightMode"="ShadowCollector"
            }
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCOLLECTOR
            #define SHADOW_COLLECTOR_PASS
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcollector
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 5.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float4 _TimeEditor;
            // float4 unity_LightmapST;
            #ifdef DYNAMICLIGHTMAP_ON
                // float4 unity_DynamicLightmapST;
            #endif
            uniform float _tessellation;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _itensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float2 uv0 : TEXCOORD5;
                float3 normalDir : TEXCOORD6;
                float4 screenPos : TEXCOORD7;
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD8;
                #else
                    float3 shLight : TEXCOORD8;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_4337 = _Time + _TimeEditor;
                    float2 node_6305 = ((v.texcoord0*3.0)+node_4337.g*float2(1,1));
                    float4 node_2111 = tex2Dlod(_Noise,float4(TRANSFORM_TEX(node_6305, _Noise),0.0,0));
                    float2 node_6221 = (v.texcoord0+node_4337.g*float2(1,1));
                    float4 node_5267 = tex2Dlod(_Noise,float4(TRANSFORM_TEX(node_6221, _Noise),0.0,0));
                    float3 node_8911 = (node_2111.rgb*node_5267.rgb);
                    v.vertex.xyz += (v.normal*(node_8911*_itensity));
                }
                float Tessellation(TessVertex v){
                    return _tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                SHADOW_COLLECTOR_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Cull Off
            Offset 1, 1
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 5.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float4 _TimeEditor;
            // float4 unity_LightmapST;
            #ifdef DYNAMICLIGHTMAP_ON
                // float4 unity_DynamicLightmapST;
            #endif
            uniform float _tessellation;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _itensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD4;
                #else
                    float3 shLight : TEXCOORD4;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_3798 = _Time + _TimeEditor;
                    float2 node_6305 = ((v.texcoord0*3.0)+node_3798.g*float2(1,1));
                    float4 node_2111 = tex2Dlod(_Noise,float4(TRANSFORM_TEX(node_6305, _Noise),0.0,0));
                    float2 node_6221 = (v.texcoord0+node_3798.g*float2(1,1));
                    float4 node_5267 = tex2Dlod(_Noise,float4(TRANSFORM_TEX(node_6221, _Noise),0.0,0));
                    float3 node_8911 = (node_2111.rgb*node_5267.rgb);
                    v.vertex.xyz += (v.normal*(node_8911*_itensity));
                }
                float Tessellation(TessVertex v){
                    return _tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
