.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;
.source "GPUImageToonFilter.java"


# static fields
.field public static final TOON_FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\n\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\n\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp float intensity;\nuniform highp float threshold;\nuniform highp float quantizationLevels;\n\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\n\nvoid main()\n{\nvec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n\nfloat bottomLeftIntensity = texture2D(inputImageTexture, bottomLeftTextureCoordinate).r;\nfloat topRightIntensity = texture2D(inputImageTexture, topRightTextureCoordinate).r;\nfloat topLeftIntensity = texture2D(inputImageTexture, topLeftTextureCoordinate).r;\nfloat bottomRightIntensity = texture2D(inputImageTexture, bottomRightTextureCoordinate).r;\nfloat leftIntensity = texture2D(inputImageTexture, leftTextureCoordinate).r;\nfloat rightIntensity = texture2D(inputImageTexture, rightTextureCoordinate).r;\nfloat bottomIntensity = texture2D(inputImageTexture, bottomTextureCoordinate).r;\nfloat topIntensity = texture2D(inputImageTexture, topTextureCoordinate).r;\nfloat h = -topLeftIntensity - 2.0 * topIntensity - topRightIntensity + bottomLeftIntensity + 2.0 * bottomIntensity + bottomRightIntensity;\nfloat v = -bottomLeftIntensity - 2.0 * leftIntensity - topLeftIntensity + bottomRightIntensity + 2.0 * rightIntensity + topRightIntensity;\n\nfloat mag = length(vec2(h, v));\n\nvec3 posterizedImageColor = floor((textureColor.rgb * quantizationLevels) + 0.5) / quantizationLevels;\n\nfloat thresholdTest = 1.0 - step(threshold, mag);\n\ngl_FragColor = vec4(posterizedImageColor * thresholdTest, textureColor.a);\n}\n"


# instance fields
.field private quantizationLevels:F

.field private quantizationLevelsLocation:I

.field private threshold:F

.field private thresholdLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    const-string v0, "precision highp float;\n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\n\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\n\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp float intensity;\nuniform highp float threshold;\nuniform highp float quantizationLevels;\n\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\n\nvoid main()\n{\nvec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n\nfloat bottomLeftIntensity = texture2D(inputImageTexture, bottomLeftTextureCoordinate).r;\nfloat topRightIntensity = texture2D(inputImageTexture, topRightTextureCoordinate).r;\nfloat topLeftIntensity = texture2D(inputImageTexture, topLeftTextureCoordinate).r;\nfloat bottomRightIntensity = texture2D(inputImageTexture, bottomRightTextureCoordinate).r;\nfloat leftIntensity = texture2D(inputImageTexture, leftTextureCoordinate).r;\nfloat rightIntensity = texture2D(inputImageTexture, rightTextureCoordinate).r;\nfloat bottomIntensity = texture2D(inputImageTexture, bottomTextureCoordinate).r;\nfloat topIntensity = texture2D(inputImageTexture, topTextureCoordinate).r;\nfloat h = -topLeftIntensity - 2.0 * topIntensity - topRightIntensity + bottomLeftIntensity + 2.0 * bottomIntensity + bottomRightIntensity;\nfloat v = -bottomLeftIntensity - 2.0 * leftIntensity - topLeftIntensity + bottomRightIntensity + 2.0 * rightIntensity + topRightIntensity;\n\nfloat mag = length(vec2(h, v));\n\nvec3 posterizedImageColor = floor((textureColor.rgb * quantizationLevels) + 0.5) / quantizationLevels;\n\nfloat thresholdTest = 1.0 - step(threshold, mag);\n\ngl_FragColor = vec4(posterizedImageColor * thresholdTest, textureColor.a);\n}\n"

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;-><init>(Ljava/lang/String;)V

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->threshold:F

    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->quantizationLevels:F

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->onInit()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->getProgram()I

    move-result v0

    const-string v1, "threshold"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->thresholdLocation:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->getProgram()I

    move-result v0

    const-string v1, "quantizationLevels"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->quantizationLevelsLocation:I

    return-void
.end method

.method public onInitialized()V
    .locals 1

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->onInitialized()V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->threshold:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->setThreshold(F)V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->quantizationLevels:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->setQuantizationLevels(F)V

    return-void
.end method

.method public setQuantizationLevels(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->quantizationLevels:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->quantizationLevelsLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->setFloat(IF)V

    return-void
.end method

.method public setThreshold(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->threshold:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->thresholdLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->setFloat(IF)V

    return-void
.end method
