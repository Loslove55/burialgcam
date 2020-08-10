.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceThresholdFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageLuminanceThresholdFilter.java"


# static fields
.field public static final LUMINANCE_THRESHOLD_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform highp float threshold;\n\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\n\nvoid main()\n{\n    highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    highp float luminance = dot(textureColor.rgb, W);\n    highp float thresholdResult = step(threshold, luminance);\n    \n    gl_FragColor = vec4(vec3(thresholdResult), textureColor.w);\n}"


# instance fields
.field private threshold:F

.field private uniformThresholdLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceThresholdFilter;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform highp float threshold;\n\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\n\nvoid main()\n{\n    highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    highp float luminance = dot(textureColor.rgb, W);\n    highp float thresholdResult = step(threshold, luminance);\n    \n    gl_FragColor = vec4(vec3(thresholdResult), textureColor.w);\n}"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceThresholdFilter;->threshold:F

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceThresholdFilter;->getProgram()I

    move-result v0

    const-string v1, "threshold"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceThresholdFilter;->uniformThresholdLocation:I

    return-void
.end method

.method public onInitialized()V
    .locals 1

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceThresholdFilter;->threshold:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceThresholdFilter;->setThreshold(F)V

    return-void
.end method

.method public setThreshold(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceThresholdFilter;->threshold:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceThresholdFilter;->uniformThresholdLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceThresholdFilter;->setFloat(IF)V

    return-void
.end method
