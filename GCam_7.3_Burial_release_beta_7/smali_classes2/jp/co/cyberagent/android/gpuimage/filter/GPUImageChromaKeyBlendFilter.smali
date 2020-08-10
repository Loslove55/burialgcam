.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;
.source "GPUImageChromaKeyBlendFilter.java"


# static fields
.field public static final CHROMA_KEY_BLEND_FRAGMENT_SHADER:Ljava/lang/String; = " precision highp float;\n \n varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform float thresholdSensitivity;\n uniform float smoothing;\n uniform vec3 colorToReplace;\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);\n     \n     float maskY = 0.2989 * colorToReplace.r + 0.5866 * colorToReplace.g + 0.1145 * colorToReplace.b;\n     float maskCr = 0.7132 * (colorToReplace.r - maskY);\n     float maskCb = 0.5647 * (colorToReplace.b - maskY);\n     \n     float Y = 0.2989 * textureColor.r + 0.5866 * textureColor.g + 0.1145 * textureColor.b;\n     float Cr = 0.7132 * (textureColor.r - Y);\n     float Cb = 0.5647 * (textureColor.b - Y);\n     \n     float blendValue = 1.0 - smoothstep(thresholdSensitivity, thresholdSensitivity + smoothing, distance(vec2(Cr, Cb), vec2(maskCr, maskCb)));\n     gl_FragColor = mix(textureColor, textureColor2, blendValue);\n }"


# instance fields
.field private colorToReplace:[F

.field private colorToReplaceLocation:I

.field private smoothing:F

.field private smoothingLocation:I

.field private thresholdSensitivity:F

.field private thresholdSensitivityLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, " precision highp float;\n \n varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform float thresholdSensitivity;\n uniform float smoothing;\n uniform vec3 colorToReplace;\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);\n     \n     float maskY = 0.2989 * colorToReplace.r + 0.5866 * colorToReplace.g + 0.1145 * colorToReplace.b;\n     float maskCr = 0.7132 * (colorToReplace.r - maskY);\n     float maskCb = 0.5647 * (colorToReplace.b - maskY);\n     \n     float Y = 0.2989 * textureColor.r + 0.5866 * textureColor.g + 0.1145 * textureColor.b;\n     float Cr = 0.7132 * (textureColor.r - Y);\n     float Cb = 0.5647 * (textureColor.b - Y);\n     \n     float blendValue = 1.0 - smoothstep(thresholdSensitivity, thresholdSensitivity + smoothing, distance(vec2(Cr, Cb), vec2(maskCr, maskCb)));\n     gl_FragColor = mix(textureColor, textureColor2, blendValue);\n }"

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;-><init>(Ljava/lang/String;)V

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->thresholdSensitivity:F

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->smoothing:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->colorToReplace:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public onInit()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->onInit()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->getProgram()I

    move-result v0

    const-string v1, "thresholdSensitivity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->thresholdSensitivityLocation:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->getProgram()I

    move-result v0

    const-string v1, "smoothing"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->smoothingLocation:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->getProgram()I

    move-result v0

    const-string v1, "colorToReplace"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->colorToReplaceLocation:I

    return-void
.end method

.method public onInitialized()V
    .locals 4

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->onInitialized()V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->smoothing:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->setSmoothing(F)V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->thresholdSensitivity:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->setThresholdSensitivity(F)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->colorToReplace:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p0, v1, v2, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->setColorToReplace(FFF)V

    return-void
.end method

.method public setColorToReplace(FFF)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->colorToReplace:[F

    iget p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->colorToReplaceLocation:I

    invoke-virtual {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->setFloatVec3(I[F)V

    return-void
.end method

.method public setSmoothing(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->smoothing:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->smoothingLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->setFloat(IF)V

    return-void
.end method

.method public setThresholdSensitivity(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->thresholdSensitivity:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->thresholdSensitivityLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageChromaKeyBlendFilter;->setFloat(IF)V

    return-void
.end method
