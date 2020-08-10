.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageSwirlFilter.java"


# static fields
.field public static final SWIRL_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp vec2 center;\nuniform highp float radius;\nuniform highp float angle;\n\nvoid main()\n{\nhighp vec2 textureCoordinateToUse = textureCoordinate;\nhighp float dist = distance(center, textureCoordinate);\nif (dist < radius)\n{\ntextureCoordinateToUse -= center;\nhighp float percent = (radius - dist) / radius;\nhighp float theta = percent * percent * angle * 8.0;\nhighp float s = sin(theta);\nhighp float c = cos(theta);\ntextureCoordinateToUse = vec2(dot(textureCoordinateToUse, vec2(c, -s)), dot(textureCoordinateToUse, vec2(s, c)));\ntextureCoordinateToUse += center;\n}\n\ngl_FragColor = texture2D(inputImageTexture, textureCoordinateToUse );\n\n}\n"


# instance fields
.field private angle:F

.field private angleLocation:I

.field private center:Landroid/graphics/PointF;

.field private centerLocation:I

.field private radius:F

.field private radiusLocation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;-><init>(FFLandroid/graphics/PointF;)V

    return-void
.end method

.method public constructor <init>(FFLandroid/graphics/PointF;)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp vec2 center;\nuniform highp float radius;\nuniform highp float angle;\n\nvoid main()\n{\nhighp vec2 textureCoordinateToUse = textureCoordinate;\nhighp float dist = distance(center, textureCoordinate);\nif (dist < radius)\n{\ntextureCoordinateToUse -= center;\nhighp float percent = (radius - dist) / radius;\nhighp float theta = percent * percent * angle * 8.0;\nhighp float s = sin(theta);\nhighp float c = cos(theta);\ntextureCoordinateToUse = vec2(dot(textureCoordinateToUse, vec2(c, -s)), dot(textureCoordinateToUse, vec2(s, c)));\ntextureCoordinateToUse += center;\n}\n\ngl_FragColor = texture2D(inputImageTexture, textureCoordinateToUse );\n\n}\n"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->radius:F

    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->angle:F

    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->center:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->getProgram()I

    move-result v0

    const-string v1, "angle"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->angleLocation:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->getProgram()I

    move-result v0

    const-string v1, "radius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->radiusLocation:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->getProgram()I

    move-result v0

    const-string v1, "center"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->centerLocation:I

    return-void
.end method

.method public onInitialized()V
    .locals 1

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->radius:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->setRadius(F)V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->angle:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->setAngle(F)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->center:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->setCenter(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setAngle(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->angle:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->angleLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->setFloat(IF)V

    return-void
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->center:Landroid/graphics/PointF;

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->centerLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->setPoint(ILandroid/graphics/PointF;)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->radius:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->radiusLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSwirlFilter;->setFloat(IF)V

    return-void
.end method
