.class public Ljp/co/cyberagent/android/gpuimage/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$LogWriter;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$SimpleEGLConfigChooser;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$BaseConfigChooser;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$DefaultWindowSurfaceFactory;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$DefaultContextFactory;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final TAG:Ljava/lang/String;

.field private static final glThreadManager:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;


# instance fields
.field private debugFlags:I

.field private detached:Z

.field private eglConfigChooser:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;

.field private eglContextClientVersion:I

.field private eglContextFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;

.field private eglWindowSurfaceFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;

.field private glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

.field private glWrapper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLWrapper;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljp/co/cyberagent/android/gpuimage/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private preserveEGLContextOnPause:Z

.field private renderer:Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

.field private surfaceTextureListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/TextureView$SurfaceTextureListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->TAG:Ljava/lang/String;

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;-><init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView$1;)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThreadManager:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->init()V

    return-void
.end method

.method static synthetic access$1000(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Z
    .locals 0

    iget-boolean p0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->preserveEGLContextOnPause:Z

    return p0
.end method

.method static synthetic access$1100(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;
    .locals 0

    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->renderer:Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

    return-object p0
.end method

.method static synthetic access$200(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)I
    .locals 0

    iget p0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglContextClientVersion:I

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;
    .locals 0

    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglConfigChooser:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;

    return-object p0
.end method

.method static synthetic access$500(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;
    .locals 0

    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglContextFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;

    return-object p0
.end method

.method static synthetic access$600(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;
    .locals 0

    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglWindowSurfaceFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;

    return-object p0
.end method

.method static synthetic access$700(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLWrapper;
    .locals 0

    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glWrapper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLWrapper;

    return-object p0
.end method

.method static synthetic access$800(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)I
    .locals 0

    iget p0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->debugFlags:I

    return p0
.end method

.method static synthetic access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;
    .locals 1

    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThreadManager:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    return-object v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 0

    invoke-virtual {p0, p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public addSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->debugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->preserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->detached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->renderer:Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    if-eq v0, v1, :cond_1

    invoke-virtual {v2, v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->setRenderMode(I)V

    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->start()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->detached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestExitAndWait()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->detached:Z

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p4, p5}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->onResume()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceCreated(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v1, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->requestRender()V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v1, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestRender()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->debugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 9

    new-instance v8, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;-><init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView;IIIIII)V

    invoke-virtual {p0, v8}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setEGLConfigChooser(Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;)V
    .locals 0

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->checkRenderThreadState()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglConfigChooser:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$SimpleEGLConfigChooser;-><init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView;Z)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setEGLConfigChooser(Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->checkRenderThreadState()V

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglContextClientVersion:I

    return-void
.end method

.method public setEGLContextFactory(Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;)V
    .locals 0

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->checkRenderThreadState()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglContextFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;)V
    .locals 0

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->checkRenderThreadState()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglWindowSurfaceFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;

    return-void
.end method

.method public setGLWrapper(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLWrapper;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glWrapper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLWrapper;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->preserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;)V
    .locals 2

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->checkRenderThreadState()V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglConfigChooser:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;

    if-nez v0, :cond_0

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$SimpleEGLConfigChooser;-><init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView;Z)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglConfigChooser:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;

    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglContextFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$DefaultContextFactory;

    invoke-direct {v0, p0, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$DefaultContextFactory;-><init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView;Ljp/co/cyberagent/android/gpuimage/GLTextureView$1;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglContextFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;

    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglWindowSurfaceFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$DefaultWindowSurfaceFactory;-><init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView$1;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglWindowSurfaceFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;

    :cond_2
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->renderer:Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->start()V

    return-void
.end method

.method public surfaceChanged(Landroid/graphics/SurfaceTexture;III)V
    .locals 0

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {p1, p3, p4}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->onWindowResize(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->surfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->surfaceDestroyed()V

    return-void
.end method
