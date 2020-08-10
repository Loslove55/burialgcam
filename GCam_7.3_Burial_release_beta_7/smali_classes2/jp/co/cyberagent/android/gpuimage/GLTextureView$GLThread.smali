.class Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

.field private eventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private exited:Z

.field private glTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljp/co/cyberagent/android/gpuimage/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private hasSurface:Z

.field private haveEglContext:Z

.field private haveEglSurface:Z

.field private height:I

.field private paused:Z

.field private renderComplete:Z

.field private renderMode:I

.field private requestPaused:Z

.field private requestRender:Z

.field private shouldExit:Z

.field private shouldReleaseEglContext:Z

.field private sizeChanged:Z

.field private surfaceIsBad:Z

.field private waitingForSurface:Z

.field private width:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Ljp/co/cyberagent/android/gpuimage/GLTextureView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->sizeChanged:Z

    const/4 v1, 0x0

    iput v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->width:I

    iput v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->height:I

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestRender:Z

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderMode:I

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1202(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->exited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    const/4 v0, 0x0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    move v3, v0

    move v4, v3

    move v5, v4

    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    const/4 v6, 0x0

    :goto_0
    const/4 v14, 0x0

    :goto_1
    :try_start_0
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :goto_2
    :try_start_1
    iget-boolean v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->shouldExit:Z

    if-eqz v2, :cond_0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglContextLocked()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eventQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/Runnable;

    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_1
    iget-boolean v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->paused:Z

    iget-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestPaused:Z

    if-eq v2, v0, :cond_2

    iget-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestPaused:Z

    iget-boolean v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestPaused:Z

    iput-boolean v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->paused:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-boolean v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->shouldReleaseEglContext:Z

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->shouldReleaseEglContext:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_5
    if-eqz v0, :cond_8

    iget-boolean v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    if-eqz v2, :cond_8

    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    invoke-static {v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$1000(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_7

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglContextLocked()V

    :cond_8
    if-eqz v0, :cond_9

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->finish()V

    :cond_9
    iget-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->hasSurface:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->waitingForSurface:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    if-eqz v0, :cond_a

    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->waitingForSurface:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->surfaceIsBad:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_b
    iget-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->hasSurface:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->waitingForSurface:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->waitingForSurface:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v4, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderComplete:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    const/4 v13, 0x0

    :cond_d
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    if-nez v0, :cond_f

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_5

    :cond_e
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_f

    :try_start_4
    iget-object v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->start()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v7, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->releaseEglContextLocked(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;)V

    throw v0

    :cond_f
    :goto_5
    iget-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    :cond_10
    iget-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->sizeChanged:Z

    if-eqz v0, :cond_11

    iget v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->width:I

    iget v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->height:I

    const/4 v8, 0x0

    iput-boolean v8, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->sizeChanged:Z

    move v11, v0

    move v12, v2

    move v0, v8

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v13, 0x1

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestRender:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :goto_7
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v14, :cond_12

    :try_start_6
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_12
    if-eqz v8, :cond_14

    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->createSurface()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 v15, 0x1

    :try_start_7
    iput-boolean v15, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->surfaceIsBad:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_13
    move v8, v0

    :cond_14
    if-eqz v9, :cond_15

    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    move v9, v0

    :cond_15
    if-eqz v7, :cond_17

    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v2, :cond_16

    invoke-static {v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$1100(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

    move-result-object v2

    iget-object v7, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    iget-object v7, v7, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v6, v7}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_16
    move v7, v0

    :cond_17
    if-eqz v10, :cond_19

    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v2, :cond_18

    invoke-static {v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$1100(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

    move-result-object v2

    invoke-interface {v2, v6, v11, v12}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_18
    move v10, v0

    :cond_19
    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v2, :cond_1a

    invoke-static {v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$1100(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

    move-result-object v2

    invoke-interface {v2, v6}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_1a
    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->swap()I

    move-result v2

    const/16 v15, 0x3000

    if-eq v2, v15, :cond_1c

    const/16 v15, 0x300e

    if-eq v2, v15, :cond_1b

    const-string v15, "GLThread"

    const-string v0, "eglSwapBuffers"

    invoke-static {v15, v0, v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->surfaceIsBad:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_8

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_1b
    const/4 v0, 0x1

    move v3, v0

    goto :goto_8

    :cond_1c
    const/4 v0, 0x1

    :goto_8
    if-eqz v13, :cond_1d

    move v4, v0

    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_1e
    :try_start_b
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_d
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->stopEglContextLocked()V

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0
.end method

.method private readyToDraw()Z
    .locals 2

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->paused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->hasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->surfaceIsBad:Z

    if-nez v0, :cond_0

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->height:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestRender:Z

    if-nez v0, :cond_1

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderMode:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private stopEglContextLocked()V
    .locals 1

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->releaseEglContextLocked(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eglHelper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->haveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRenderMode()I
    .locals 2

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestPaused:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->exited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestPaused:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestRender:Z

    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderComplete:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->exited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->paused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onWindowResize(II)V
    .locals 1

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->width:I

    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->height:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->sizeChanged:Z

    iput-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestRender:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderComplete:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->exited:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->paused:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderComplete:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->ableToDraw()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestExitAndWait()V
    .locals 2

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->shouldExit:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->shouldReleaseEglContext:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestRender:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->threadExiting(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->threadExiting(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;)V

    throw v0

    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->renderMode:I

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public surfaceCreated()V
    .locals 2

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->hasSurface:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->waitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 2

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->hasSurface:Z

    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->waitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
