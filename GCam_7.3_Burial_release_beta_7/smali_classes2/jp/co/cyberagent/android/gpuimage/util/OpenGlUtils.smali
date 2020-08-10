.class public Ljp/co/cyberagent/android/gpuimage/util/OpenGlUtils;
.super Ljava/lang/Object;
.source "OpenGlUtils.java"


# static fields
.field public static final NO_TEXTURE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x8b31

    invoke-static {p0, v1}, Ljp/co/cyberagent/android/gpuimage/util/OpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result p0

    const-string v1, "Load Program"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string p0, "Vertex Shader Failed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const v3, 0x8b30

    invoke-static {p1, v3}, Ljp/co/cyberagent/android/gpuimage/util/OpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "Fragment Shader Failed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    invoke-static {v3, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v4, 0x8b82

    invoke-static {v3, v4, v0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, v0, v2

    if-gtz v0, :cond_2

    const-string p0, "Linking Failed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v3
.end method

.method public static loadShader(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p0, 0x0

    const v1, 0x8b81

    invoke-static {p1, v1, v0, p0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v0, v0, p0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compilation\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Load Shader Failed"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    return p1
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/util/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result p0

    return p0
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;IZ)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget p1, v1, v3

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2800

    const v0, 0x46180400    # 9729.0f

    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2801

    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v0, 0x47012f00    # 33071.0f

    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v2, v3, p0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_0
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v2, v3, v3, v3, p0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    aput p1, v1, v3

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    aget p0, v1, v3

    return p0
.end method

.method public static loadTexture(Ljava/nio/IntBuffer;III)I
    .locals 22

    move/from16 v0, p3

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xde1

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v2, v3

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-static {v4, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    invoke-static {v4, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v1, 0x47012f00    # 33071.0f

    invoke-static {v4, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-static {v4, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/4 v10, 0x0

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v13, p0

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_0

    :cond_0
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v13, 0xde1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x1908

    const/16 v20, 0x1401

    move/from16 v17, p1

    move/from16 v18, p2

    move-object/from16 v21, p0

    invoke-static/range {v13 .. v21}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    aput v0, v2, v3

    :goto_0
    aget v0, v2, v3

    return v0
.end method

.method public static loadTextureAsBitmap(Ljava/nio/IntBuffer;Landroid/hardware/Camera$Size;I)I
    .locals 2

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object p0

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p2}, Ljp/co/cyberagent/android/gpuimage/util/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;I)I

    move-result p0

    return p0
.end method

.method public static rnd(FF)F
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr p1, p0

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    return p0
.end method
