.class public final Lcwd;
.super Ljava/lang/Object;

# interfaces
.implements Lmqh;
.implements Llum;


# instance fields
.field public a:Lcvy;

.field public final b:Llnu;

.field public final c:Z

.field public final d:Ljava/lang/Object;

.field public e:J

.field private final f:Ljava/lang/Object;

.field private final g:Lkbe;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcwd;->f:Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Lkbg;->c(I)Lkbe;

    move-result-object v0

    iput-object v0, p0, Lcwd;->g:Lkbe;

    const/4 v0, 0x0

    iput-object v0, p0, Lcwd;->a:Lcvy;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Llnu;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcwd;->f:Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Lkbg;->c(I)Lkbe;

    move-result-object v0

    iput-object v0, p0, Lcwd;->g:Lkbe;

    const/4 v0, 0x0

    iput-object v0, p0, Lcwd;->a:Lcvy;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcwd;->d:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcwd;->e:J

    iput-object p2, p0, Lcwd;->b:Llnu;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcwd;->c:Z

    new-instance p2, Lcwe;

    invoke-direct {p2, p0}, Lcwe;-><init>(Lcwd;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(J)Lcvy;
    .locals 6

    const-string v0, "LVesperFaceListener"

    invoke-virtual {p0, p1, p2}, Lcwd;->b(J)Loye;

    move-result-object v1

    const-wide/16 v2, 0x1e

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Loxo;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcvy;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x45

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Timeout while getting face metadata at timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lijd;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcwd;->a:Lcvy;

    if-eqz v1, :cond_0

    check-cast v1, Lcvx;

    iget-wide v1, v1, Lcvx;->a:J

    sub-long/2addr p1, v1

    const-wide/32 v3, 0x3938700

    cmp-long v5, p1, v3

    if-gez v5, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x41

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Using most recent face metadata at timestamp "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lijd;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcwd;->a:Lcvy;

    return-object p1

    :catch_1
    move-exception p1

    const-string p1, "Got cancellation exception while getting face metadata"

    invoke-static {v0, p1}, Lijd;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string p1, "Got execution exception while getting face metadata"

    invoke-static {v0, p1}, Lijd;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p1

    const-string p1, "Interrupted while getting face metadata"

    invoke-static {v0, p1}, Lijd;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroid/media/Image;Landroid/media/Image;)V
    .locals 13

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcwd;->a(J)Lcvy;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcvy;->b()Lohc;

    move-result-object v1

    invoke-virtual {v1}, Lohc;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    :try_start_0
    invoke-virtual {p2}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    :try_start_1
    iget-object v12, p0, Lcwd;->d:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-wide v2, p0, Lcwd;->e:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Lcvy;->b()Lohc;

    move-result-object p1

    invoke-virtual {p1}, Logt;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0}, Lcvy;->c()F

    move-result v9

    iget-object p1, p0, Lcwd;->b:Llnu;

    check-cast p1, Llnj;

    iget-object p1, p1, Llnj;->c:Ljava/lang/Object;

    check-cast p1, Lhue;

    iget v10, p1, Lhue;->f:I

    iget-boolean v11, p0, Lcwd;->c:Z

    move-object v4, v1

    move-object v5, p2

    invoke-static/range {v2 .. v11}, Lcom/google/android/apps/camera/jni/facebeautification/GpuRetoucherNative;->process(JLandroid/hardware/HardwareBuffer;Landroid/hardware/HardwareBuffer;II[Ljava/lang/Object;FIZ)Z

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    return-void

    :cond_1
    :try_start_4
    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_7
    invoke-static {p1, p2}, Loyt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_3
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    :goto_2
    const-string p1, "liveFbFullEffect"

    const-string p2, "Invalid hardware buffer or invalid face"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_3
    move-exception p1

    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p2

    invoke-static {p1, p2}, Loyt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p1

    :cond_6
    :goto_4
    return-void
.end method

.method public final a(Lnev;Lncv;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "this method is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(J)Loye;
    .locals 3

    iget-object v0, p0, Lcwd;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcwd;->g:Lkbe;

    check-cast v1, Lkbc;

    invoke-virtual {v1, p1, p2}, Lkbc;->a(J)Llum;

    move-result-object v1

    check-cast v1, Lcwc;

    if-nez v1, :cond_0

    new-instance v1, Lcwc;

    invoke-direct {v1}, Lcwc;-><init>()V

    iget-object v2, p0, Lcwd;->g:Lkbe;

    invoke-interface {v2, p1, p2, v1}, Lkbe;->a(JLjava/lang/Object;)V

    :cond_0
    nop

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v1, Lcwc;->a:Loye;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 6

    iget-object v0, p0, Lcwd;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcwd;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {v1, v2}, Lcom/google/android/apps/camera/jni/facebeautification/GpuRetoucherNative;->releaseRetoucher(J)V

    iput-wide v3, p0, Lcwd;->e:J

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
