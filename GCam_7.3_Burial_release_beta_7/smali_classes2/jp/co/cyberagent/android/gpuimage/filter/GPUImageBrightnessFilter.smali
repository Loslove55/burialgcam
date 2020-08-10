.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageBrightnessFilter.java"


# static fields
.field public static final BRIGHTNESS_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float brightness;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4((textureColor.rgb + vec3(brightness)), textureColor.w);\n }"


# instance fields
.field private brightness:F

.field private brightnessLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float brightness;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4((textureColor.rgb + vec3(brightness)), textureColor.w);\n }"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->brightness:F

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->getProgram()I

    move-result v0

    const-string v1, "brightness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->brightnessLocation:I

    return-void
.end method

.method public onInitialized()V
    .locals 1

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->brightness:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->setBrightness(F)V

    return-void
.end method

.method public setBrightness(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->brightness:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->brightnessLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->setFloat(IF)V

    return-void
.end method
