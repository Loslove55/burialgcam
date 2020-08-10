.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageHighlightShadowFilter.java"


# static fields
.field public static final HIGHLIGHT_SHADOW_FRAGMENT_SHADER:Ljava/lang/String; = " uniform sampler2D inputImageTexture;\n varying highp vec2 textureCoordinate;\n  \n uniform lowp float shadows;\n uniform lowp float highlights;\n \n const mediump vec3 luminanceWeighting = vec3(0.3, 0.3, 0.3);\n \n void main()\n {\n \tlowp vec4 source = texture2D(inputImageTexture, textureCoordinate);\n \tmediump float luminance = dot(source.rgb, luminanceWeighting);\n \n \tmediump float shadow = clamp((pow(luminance, 1.0/(shadows+1.0)) + (-0.76)*pow(luminance, 2.0/(shadows+1.0))) - luminance, 0.0, 1.0);\n \tmediump float highlight = clamp((1.0 - (pow(1.0-luminance, 1.0/(2.0-highlights)) + (-0.8)*pow(1.0-luminance, 2.0/(2.0-highlights)))) - luminance, -1.0, 0.0);\n \tlowp vec3 result = vec3(0.0, 0.0, 0.0) + ((luminance + shadow + highlight) - 0.0) * ((source.rgb - vec3(0.0, 0.0, 0.0))/(luminance - 0.0));\n \n \tgl_FragColor = vec4(result.rgb, source.a);\n }"


# instance fields
.field private highlights:F

.field private highlightsLocation:I

.field private shadows:F

.field private shadowsLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, " uniform sampler2D inputImageTexture;\n varying highp vec2 textureCoordinate;\n  \n uniform lowp float shadows;\n uniform lowp float highlights;\n \n const mediump vec3 luminanceWeighting = vec3(0.3, 0.3, 0.3);\n \n void main()\n {\n \tlowp vec4 source = texture2D(inputImageTexture, textureCoordinate);\n \tmediump float luminance = dot(source.rgb, luminanceWeighting);\n \n \tmediump float shadow = clamp((pow(luminance, 1.0/(shadows+1.0)) + (-0.76)*pow(luminance, 2.0/(shadows+1.0))) - luminance, 0.0, 1.0);\n \tmediump float highlight = clamp((1.0 - (pow(1.0-luminance, 1.0/(2.0-highlights)) + (-0.8)*pow(1.0-luminance, 2.0/(2.0-highlights)))) - luminance, -1.0, 0.0);\n \tlowp vec3 result = vec3(0.0, 0.0, 0.0) + ((luminance + shadow + highlight) - 0.0) * ((source.rgb - vec3(0.0, 0.0, 0.0))/(luminance - 0.0));\n \n \tgl_FragColor = vec4(result.rgb, source.a);\n }"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->highlights:F

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->shadows:F

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->getProgram()I

    move-result v0

    const-string v1, "highlights"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->highlightsLocation:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->getProgram()I

    move-result v0

    const-string v1, "shadows"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->shadowsLocation:I

    return-void
.end method

.method public onInitialized()V
    .locals 1

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->highlights:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->setHighlights(F)V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->shadows:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->setShadows(F)V

    return-void
.end method

.method public setHighlights(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->highlights:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->highlightsLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->setFloat(IF)V

    return-void
.end method

.method public setShadows(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->shadows:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->shadowsLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->setFloat(IF)V

    return-void
.end method
