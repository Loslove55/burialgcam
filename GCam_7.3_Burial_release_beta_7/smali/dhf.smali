.class final Ldhf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/SurfaceTexture;

.field final synthetic b:Ldhi;


# direct methods
.method public constructor <init>(Ldhi;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Ldhf;->b:Ldhi;

    iput-object p2, p0, Ldhf;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Ldhf;->b:Ldhi;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, v0, Ldhi;->f:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Ldhf;->b:Ldhi;

    iget-object v1, v0, Ldhi;->f:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, v0, Ldhi;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Ldhf;->b:Ldhi;

    iget-object v0, v0, Ldhi;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_7

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Ldhf;->b:Ldhi;

    iget-object v2, v1, Ldhi;->f:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, v1, Ldhi;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Ldhi;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x24

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "EGL version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v1}, Lijd;->f(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object v1, p0, Ldhf;->b:Ldhi;

    iget-object v3, v1, Ldhi;->f:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v11, v1, Ldhi;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    new-array v4, v4, [I

    sget-object v7, Ldhi;->m:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    move-object v6, v11

    move-object v10, v4

    invoke-interface/range {v5 .. v10}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_5

    aget v9, v4, v2

    if-lez v9, :cond_4

    new-array v12, v9, [Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v7, Ldhi;->m:[I

    move-object v5, v3

    move-object v6, v11

    move-object v8, v12

    move-object v10, v4

    invoke-interface/range {v5 .. v10}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v2, v12, v2

    iput-object v2, v1, Ldhi;->b:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v1, p0, Ldhf;->b:Ldhi;

    iget-object v2, v1, Ldhi;->f:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v1, Ldhi;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, v1, Ldhi;->b:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, v1, Ldhi;->d:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Ldhf;->b:Ldhi;

    iget-object v0, v0, Ldhi;->d:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Ldhf;->b:Ldhi;

    iget-object v1, v0, Ldhi;->f:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v0, Ldhi;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, v0, Ldhi;->b:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v4, p0, Ldhf;->a:Landroid/graphics/SurfaceTexture;

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, v0, Ldhi;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Ldhf;->b:Ldhi;

    iget-object v0, v0, Ldhi;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ldhf;->b:Ldhi;

    iget-object v1, v0, Ldhi;->f:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v0, Ldhi;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, v0, Ldhi;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, v0, Ldhi;->d:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldhf;->b:Ldhi;

    iget-object v1, v0, Ldhi;->d:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v1, v0, Ldhi;->g:Ljavax/microedition/khronos/opengles/GL10;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to eglMakeCurrent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to createWindowSurface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to createContext"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method
