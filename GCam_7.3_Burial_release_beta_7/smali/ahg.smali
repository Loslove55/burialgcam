.class final Lahg;
.super Lajs;

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field final synthetic a:Laho;

.field private final b:Laix;

.field private c:Landroid/hardware/Camera;

.field private d:I

.field private e:Lahh;

.field private f:I


# direct methods
.method public constructor <init>(Laho;Laix;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lahg;->a:Laho;

    invoke-direct {p0, p3}, Lajs;-><init>(Landroid/os/Looper;)V

    const/4 p1, -0x1

    iput p1, p0, Lahg;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lahg;->f:I

    iput-object p2, p0, Lahg;->b:Laix;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    invoke-super {p0, p1}, Lajs;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lahg;->a:Laho;

    iget-object v0, v0, Laho;->e:Lajp;

    invoke-virtual {v0}, Lajp;->c()Z

    move-result v0

    const-string v1, "\'"

    if-eqz v0, :cond_0

    sget-object v0, Laho;->a:Lajv;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip handleMessage - action = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lpmf;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lajw;->c(Lajv;)V

    return-void

    :cond_0
    sget-object v0, Laho;->a:Lajv;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage - action = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lpmf;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lajw;->c(Lajv;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_18

    const/4 v4, -0x1

    if-eq v0, v1, :cond_16

    const/4 v5, 0x3

    if-eq v0, v5, :cond_15

    const/4 v5, 0x4

    if-eq v0, v5, :cond_14

    const/4 v5, 0x5

    if-eq v0, v5, :cond_13

    const/16 v5, 0x259

    if-eq v0, v5, :cond_12

    packed-switch v0, :pswitch_data_0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    :try_start_0
    sget-object v1, Laho;->a:Lajv;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid CameraProxy message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lajw;->a(Lajv;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_0
    iget-object v1, p0, Lahg;->e:Lahh;

    invoke-virtual {v1}, Lahh;->b()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget-object v4, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lahg;->e:Lahh;

    invoke-virtual {v1}, Lahh;->a()V

    goto/16 :goto_b

    :pswitch_1
    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    iget-object v4, p0, Lahg;->a:Laho;

    iget-object v4, v4, Laho;->b:Lajf;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6, v3}, Lajf;->a(IZ)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-object v1, p0, Lahg;->e:Lahh;

    invoke-virtual {v1}, Lahh;->b()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lahg;->a:Laho;

    iget-object v4, v4, Laho;->b:Lajf;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lajf;->a(I)I

    move-result v5

    goto :goto_0

    :cond_1
    nop

    :goto_0
    invoke-virtual {v1, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget-object v4, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lahg;->e:Lahh;

    invoke-virtual {v1}, Lahh;->a()V

    goto/16 :goto_b

    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    nop

    nop

    :goto_1
    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v5}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    goto/16 :goto_b

    :pswitch_3
    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V

    goto/16 :goto_b

    :pswitch_4
    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startFaceDetection()V

    goto/16 :goto_b

    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$FaceDetectionListener;

    iget-object v4, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_b

    :pswitch_6
    iget v1, p0, Lahg;->f:I

    add-int/2addr v1, v4

    iput v1, p0, Lahg;->f:I

    goto/16 :goto_b

    :pswitch_7
    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_b

    :pswitch_8
    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    check-cast v4, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_b

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v4, Laho;->a:Lajv;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lajw;->b(Lajv;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_9
    iget v4, p0, Lahg;->f:I

    add-int/2addr v4, v3

    iput v4, p0, Lahg;->f:I

    iget-object v4, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->cancelAutoFocus()V

    iget-object v4, p0, Lahg;->a:Laho;

    iget-object v4, v4, Laho;->e:Lajp;

    invoke-virtual {v4, v1}, Lajp;->a(I)V

    goto/16 :goto_b

    :pswitch_a
    iget v1, p0, Lahg;->f:I

    if-gtz v1, :cond_3

    iget-object v1, p0, Lahg;->a:Laho;

    iget-object v1, v1, Laho;->e:Lajp;

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Lajp;->a(I)V

    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_b

    :cond_3
    sget-object v1, Laho;->a:Lajv;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage - Ignored AUTO_FOCUS because there was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lahg;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pending CANCEL_AUTO_FOCUS messages"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v1}, Lajw;->c(Lajv;)V

    goto/16 :goto_b

    :pswitch_b
    iget-object v1, p0, Lahg;->e:Lahh;

    invoke-virtual {v1}, Lahh;->b()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lajn;

    iget-object v6, p0, Lahg;->a:Laho;

    iget-object v6, v6, Laho;->c:Lahr;

    invoke-virtual {v5}, Lajn;->d()Laju;

    move-result-object v6

    invoke-virtual {v6}, Laju;->a()I

    move-result v7

    invoke-virtual {v6}, Laju;->b()I

    move-result v6

    invoke-virtual {v1, v7, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    invoke-virtual {v5}, Lajn;->c()Laju;

    move-result-object v6

    invoke-virtual {v6}, Laju;->a()I

    move-result v7

    invoke-virtual {v6}, Laju;->b()I

    move-result v6

    invoke-virtual {v1, v7, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget v6, v5, Lajn;->j:I

    if-ne v6, v4, :cond_4

    iget v4, v5, Lajn;->h:I

    iget v6, v5, Lajn;->i:I

    invoke-virtual {v1, v4, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    :goto_2
    iget v4, v5, Lajn;->l:I

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    iget-byte v4, v5, Lajn;->n:B

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    iget-object v4, p0, Lahg;->a:Laho;

    iget-object v4, v4, Laho;->c:Lahr;

    sget-object v6, Laiz;->a:Laiz;

    invoke-virtual {v4, v6}, Laje;->a(Laiz;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v5, Lajn;->p:F

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v4, v4, v7

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_5

    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v4, v6, :cond_5

    add-int/lit8 v4, v4, -0x1

    :cond_5
    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    :cond_6
    iget v4, v5, Lajn;->q:I

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    iget-object v4, p0, Lahg;->a:Laho;

    iget-object v4, v4, Laho;->c:Lahr;

    sget-object v6, Laiz;->e:Laiz;

    invoke-virtual {v4, v6}, Laje;->a(Laiz;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    iget-boolean v4, v5, Lajn;->w:Z

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    :goto_3
    iget-object v4, v5, Lajn;->s:Lajb;

    invoke-virtual {v4}, Lajb;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lpmf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v4, p0, Lahg;->a:Laho;

    iget-object v4, v4, Laho;->c:Lahr;

    sget-object v6, Laiz;->f:Laiz;

    invoke-virtual {v4, v6}, Laje;->a(Laiz;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    iget-boolean v4, v5, Lajn;->x:Z

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :goto_4
    iget-object v4, p0, Lahg;->a:Laho;

    iget-object v4, v4, Laho;->c:Lahr;

    sget-object v6, Laiz;->c:Laiz;

    invoke-virtual {v4, v6}, Laje;->a(Laiz;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v5}, Lajn;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v5}, Lajn;->f()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_5

    :cond_a
    nop

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :goto_5
    iget-object v4, p0, Lahg;->a:Laho;

    iget-object v4, v4, Laho;->c:Lahr;

    sget-object v6, Laiz;->d:Laiz;

    invoke-virtual {v4, v6}, Laje;->a(Laiz;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v5}, Lajn;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v5}, Lajn;->e()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_6

    :cond_b
    nop

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_c
    :goto_6
    iget-object v4, v5, Lajn;->r:Laja;

    sget-object v6, Laja;->a:Laja;

    if-ne v4, v6, :cond_d

    goto :goto_7

    :cond_d
    iget-object v4, v5, Lajn;->r:Laja;

    invoke-virtual {v4}, Laja;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lpmf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :goto_7
    iget-object v4, v5, Lajn;->t:Lajc;

    sget-object v6, Lajc;->a:Lajc;

    if-ne v4, v6, :cond_e

    goto :goto_8

    :cond_e
    iget-object v4, v5, Lajn;->t:Lajc;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lajc;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lpmf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :cond_f
    :goto_8
    iget-boolean v4, v5, Lajn;->y:Z

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    iget-object v4, v5, Lajn;->z:Laju;

    if-eqz v4, :cond_10

    new-instance v6, Laju;

    nop

    invoke-direct {v6, v4}, Laju;-><init>(Laju;)V

    goto :goto_9

    :cond_10
    nop

    move-object v6, v2

    :goto_9
    if-nez v6, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v6}, Laju;->a()I

    move-result v4

    invoke-virtual {v6}, Laju;->b()I

    move-result v6

    invoke-virtual {v1, v4, v6}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    :goto_a
    iget v4, v5, Lajn;->o:I

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    iget-object v4, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lahg;->e:Lahh;

    invoke-virtual {v1}, Lahh;->a()V

    goto/16 :goto_b

    :pswitch_c
    iget-object v1, p0, Lahg;->e:Lahh;

    invoke-virtual {v1}, Lahh;->a()V

    goto/16 :goto_b

    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/hardware/Camera$Parameters;

    check-cast v1, [Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lahg;->e:Lahh;

    invoke-virtual {v4}, Lahh;->b()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    aput-object v4, v1, v5

    goto/16 :goto_b

    :pswitch_e
    iget-object v1, p0, Lahg;->e:Lahh;

    invoke-virtual {v1}, Lahh;->b()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    iget-object v4, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lahg;->e:Lahh;

    invoke-virtual {v1}, Lahh;->a()V

    goto/16 :goto_b

    :pswitch_f
    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_b

    :pswitch_10
    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_b

    :pswitch_11
    :try_start_3
    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_b

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :pswitch_12
    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_b

    :pswitch_13
    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_b

    :pswitch_14
    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_b

    :pswitch_15
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Laiu;

    iget-object v4, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Laiu;->a()V

    goto/16 :goto_b

    :pswitch_16
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v4, p0, Lahg;->c:Landroid/hardware/Camera;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_b

    :catch_2
    move-exception v1

    :try_start_6
    sget-object v4, Laho;->a:Lajv;

    const-string v5, "Could not set preview texture"

    invoke-static {v4, v5, v1}, Lajw;->a(Lajv;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_12
    iget-object v1, p0, Lahg;->a:Laho;

    iget-object v1, v1, Laho;->e:Lajp;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lajp;->a(I)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lahf;

    iget-object v4, p0, Lahg;->c:Landroid/hardware/Camera;

    iget-object v5, v1, Lahf;->a:Landroid/hardware/Camera$ShutterCallback;

    iget-object v6, v1, Lahf;->b:Landroid/hardware/Camera$PictureCallback;

    iget-object v7, v1, Lahf;->c:Landroid/hardware/Camera$PictureCallback;

    iget-object v1, v1, Lahf;->d:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto/16 :goto_b

    :cond_13
    iget-object v4, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->lock()V

    iget-object v4, p0, Lahg;->a:Laho;

    iget-object v4, v4, Laho;->e:Lajp;

    invoke-virtual {v4, v1}, Lajp;->a(I)V

    goto/16 :goto_b

    :cond_14
    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    iget-object v1, p0, Lahg;->a:Laho;

    iget-object v1, v1, Laho;->e:Lajp;

    invoke-virtual {v1, v5}, Lajp;->a(I)V

    goto/16 :goto_b

    :cond_15
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Laie;

    iget v8, p1, Landroid/os/Message;->arg1:I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v5, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->reconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v5, p0, Lahg;->a:Laho;

    iget-object v5, v5, Laho;->e:Lajp;

    invoke-virtual {v5, v1}, Lajp;->a(I)V

    if-eqz v4, :cond_1b

    new-instance v1, Lahe;

    iget-object v7, p0, Lahg;->a:Laho;

    iget-object v9, p0, Lahg;->c:Landroid/hardware/Camera;

    iget-object v5, v7, Laho;->b:Lajf;

    iget-object v10, v7, Laho;->c:Lahr;

    move-object v5, v1

    move-object v6, v7

    invoke-direct/range {v5 .. v10}, Lahe;-><init>(Laho;Laix;ILandroid/hardware/Camera;Lahr;)V

    invoke-virtual {v4, v1}, Laie;->a(Laiq;)V

    goto/16 :goto_b

    :catch_3
    move-exception v1

    if-eqz v4, :cond_1b

    iget v1, p0, Lahg;->d:I

    invoke-virtual {p0, v1}, Lajs;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v4, Laie;->a:Landroid/os/Handler;

    new-instance v6, Laid;

    invoke-direct {v6, v4, v1}, Laid;-><init>(Laie;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    :cond_16
    iget-object v1, p0, Lahg;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    iget-object v1, p0, Lahg;->a:Laho;

    iget-object v1, v1, Laho;->e:Lajp;

    invoke-virtual {v1, v3}, Lajp;->a(I)V

    iput-object v2, p0, Lahg;->c:Landroid/hardware/Camera;

    iput v4, p0, Lahg;->d:I

    goto/16 :goto_b

    :cond_17
    sget-object v1, Laho;->a:Lajv;

    const-string v4, "Releasing camera without any camera opened."

    invoke-static {v1, v4}, Lajw;->b(Lajv;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_18
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lahy;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lahg;->a:Laho;

    iget-object v5, v5, Laho;->e:Lajp;

    invoke-virtual {v5}, Lajp;->a()I

    move-result v5

    if-ne v5, v3, :cond_1a

    sget-object v5, Laho;->a:Lajv;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opening camera "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " with camera1 API"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v5}, Lajw;->b(Lajv;)V

    invoke-static {v8}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, p0, Lahg;->c:Landroid/hardware/Camera;

    if-eqz v5, :cond_19

    iput v8, p0, Lahg;->d:I

    new-instance v6, Lahh;

    invoke-direct {v6, v5}, Lahh;-><init>(Landroid/hardware/Camera;)V

    iput-object v6, p0, Lahg;->e:Lahh;

    iget-object v5, p0, Lahg;->a:Laho;

    invoke-static {}, Lagu;->b()Lagu;

    move-result-object v6

    invoke-virtual {v6, v8}, Lagu;->a(I)Lajf;

    move-result-object v6

    iput-object v6, v5, Laho;->b:Lajf;

    iget-object v5, p0, Lahg;->a:Laho;

    new-instance v6, Lahr;

    iget-object v7, p0, Lahg;->e:Lahh;

    invoke-virtual {v7}, Lahh;->b()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-direct {v6, v7}, Lahr;-><init>(Landroid/hardware/Camera$Parameters;)V

    iput-object v6, v5, Laho;->c:Lahr;

    iget-object v5, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v5, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget-object v5, p0, Lahg;->a:Laho;

    iget-object v5, v5, Laho;->e:Lajp;

    invoke-virtual {v5, v1}, Lajp;->a(I)V

    if-eqz v4, :cond_1b

    new-instance v1, Lahe;

    iget-object v6, p0, Lahg;->a:Laho;

    iget-object v7, p0, Lahg;->b:Laix;

    iget-object v9, p0, Lahg;->c:Landroid/hardware/Camera;

    iget-object v5, v6, Laho;->b:Lajf;

    iget-object v10, v6, Laho;->c:Lahr;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lahe;-><init>(Laho;Laix;ILandroid/hardware/Camera;Lahr;)V

    invoke-interface {v4, v1}, Lahy;->a(Laiq;)V

    goto :goto_b

    :cond_19
    if-eqz v4, :cond_1b

    invoke-virtual {p0, v8}, Lajs;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v8, v1}, Lahy;->a(ILjava/lang/String;)V

    goto :goto_b

    :cond_1a
    invoke-virtual {p0, v8}, Lajs;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v8, v1}, Lahy;->b(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_1b
    :goto_b
    invoke-static {p1}, Laiw;->a(Landroid/os/Message;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_4
    move-exception v1

    :try_start_9
    iget-object v4, p0, Lahg;->a:Laho;

    iget-object v4, v4, Laho;->e:Lajp;

    invoke-virtual {v4}, Lajp;->a()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CameraAction["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lpmf;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] at CameraState["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Laho;->a:Lajv;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RuntimeException during "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v1}, Lajw;->a(Lajv;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v5, p0, Lahg;->a:Laho;

    iget-object v5, v5, Laho;->e:Lajp;

    invoke-virtual {v5}, Lajp;->b()V

    iget-object v5, p0, Lahg;->c:Landroid/hardware/Camera;

    if-eqz v5, :cond_1c

    sget-object v5, Laho;->a:Lajv;

    invoke-static {v5}, Lajw;->b(Lajv;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v5, p0, Lahg;->c:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    iput-object v2, p0, Lahg;->c:Landroid/hardware/Camera;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_5
    move-exception v5

    :try_start_c
    sget-object v6, Laho;->a:Lajv;

    const-string v7, "Fail when calling Camera.release()."

    invoke-static {v6, v7, v5}, Lajw;->a(Lajv;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    iput-object v2, p0, Lahg;->c:Landroid/hardware/Camera;

    goto :goto_d

    :goto_c
    iput-object v2, p0, Lahg;->c:Landroid/hardware/Camera;

    throw v0

    :cond_1c
    :goto_d
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_1e

    iget-object v2, p0, Lahg;->c:Landroid/hardware/Camera;

    if-eqz v2, :cond_1d

    goto :goto_e

    :cond_1d
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1b

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lahy;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lajs;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lahy;->a(ILjava/lang/String;)V

    goto/16 :goto_b

    :cond_1e
    :goto_e
    iget-object v2, p0, Lahg;->b:Laix;

    check-cast v2, Laho;

    iget-object v2, v2, Laho;->g:Lajm;

    iget v3, p0, Lahg;->d:I

    invoke-virtual {p0, v3}, Lajs;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0, v4}, Lajm;->a(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_b

    :goto_f
    invoke-static {p1}, Laiw;->a(Landroid/os/Message;)V

    goto :goto_11

    :goto_10
    throw v0

    :goto_11
    goto :goto_10

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12d
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1cd
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1f5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(ILandroid/hardware/Camera;)V
    .locals 3

    iget-object p2, p0, Lahg;->a:Laho;

    sget-object v0, Laho;->a:Lajv;

    iget-object p2, p2, Laho;->g:Lajm;

    invoke-virtual {p2, p1}, Lajm;->a(I)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lajs;->r:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lahg;->a:Laho;

    iget-object p2, p2, Laho;->g:Lajm;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Media server died."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lahg;->d:I

    invoke-virtual {p0, v1}, Lajs;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lahg;->a:Laho;

    iget-object v2, v2, Laho;->e:Lajp;

    invoke-virtual {v2}, Lajp;->a()I

    move-result v2

    invoke-virtual {p2, v0, v1, p1, v2}, Lajm;->a(Ljava/lang/RuntimeException;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
