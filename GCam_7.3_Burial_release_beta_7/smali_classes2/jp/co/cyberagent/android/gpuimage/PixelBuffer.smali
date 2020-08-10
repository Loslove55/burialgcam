.class public Ljp/co/cyberagent/android/gpuimage/PixelBuffer;
.super Ljava/lang/Object;
.source "PixelBuffer.java"


# static fields
.field private static final LIST_CONFIGS:Z = false

.field private static final TAG:Ljava/lang/String; = "PixelBuffer"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private egl10:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private gl10:Ljavax/microedition/khronos/opengles/GL10;

.field private height:I

.field private mThreadOwner:Ljava/lang/String;

.field private renderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->width:I

    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->height:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x3057

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    const/16 p1, 0x3056

    aput p1, v2, v0

    const/4 p1, 0x3

    aput p2, v2, p1

    const/4 p2, 0x4

    const/16 v0, 0x3038

    aput v0, v2, p2

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object p2

    check-cast p2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {p2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object p2

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p2, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p2

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, p2, v3, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {p1, p2, v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p2, v0, p1, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object p1

    check-cast p1, Ljavax/microedition/khronos/opengles/GL10;

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->mThreadOwner:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    new-array v7, v1, [I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v0

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v8, 0x0

    aget v5, v7, v8

    new-array v4, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v4, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v0, v0, v8

    return-object v0

    :array_0
    .array-data 4
        0x3025
        0x0
        0x3026
        0x0
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method private convertToBitmap()V
    .locals 3

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->width:I

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageNativeLibrary;->adjustBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, p1, p2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    aget p2, v0, p2

    :cond_0
    return p2
.end method

.method private listConfig()V
    .locals 12

    const-string v0, "PixelBuffer"

    const-string v1, "Config List {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const/16 v5, 0x3025

    invoke-direct {p0, v4, v5}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    const/16 v6, 0x3026

    invoke-direct {p0, v4, v6}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v6

    const/16 v7, 0x3024

    invoke-direct {p0, v4, v7}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v7

    const/16 v8, 0x3023

    invoke-direct {p0, v4, v8}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v8

    const/16 v9, 0x3022

    invoke-direct {p0, v4, v9}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v9

    const/16 v10, 0x3021

    invoke-direct {p0, v4, v10}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    <d,s,r,g,b,a> = <"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "}"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    const/4 v1, 0x0

    const-string v2, "PixelBuffer"

    if-nez v0, :cond_0

    const-string v0, "getBitmap: Renderer was not set."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->mThreadOwner:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getBitmap: This thread does not own the OpenGL context."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->convertToBitmap()V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->mThreadOwner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "PixelBuffer"

    const-string v0, "setRenderer: This thread does not own the OpenGL context."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {p1, v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->width:I

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->height:I

    invoke-interface {p1, v0, v1, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    return-void
.end method
