.class final Lmgg;
.super Lmgi;


# instance fields
.field private final d:Loye;

.field private final e:Landroid/hardware/camera2/params/OutputConfiguration;

.field private final f:Lmpi;

.field private g:Z


# direct methods
.method public constructor <init>(Lmhv;Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 1

    invoke-static {}, Loye;->f()Loye;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmgi;-><init>(Lmhv;Loxo;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmgg;->g:Z

    iput-object v0, p0, Lmgg;->d:Loye;

    iput-object p2, p0, Lmgg;->e:Landroid/hardware/camera2/params/OutputConfiguration;

    new-instance p1, Lmjp;

    invoke-direct {p1, p2}, Lmjp;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    iput-object p1, p0, Lmgg;->f:Lmpi;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lmpi;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmgg;->f:Lmpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmgg;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmgg;->g:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v0, p0, Lmgg;->d:Loye;

    invoke-virtual {v0}, Loye;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lmgg;->e:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v0, p1}, Lklj;->a(Landroid/hardware/camera2/params/OutputConfiguration;Landroid/view/Surface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lmgg;->d:Loye;

    invoke-virtual {v0, p1}, Loye;->b(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    iget-object v0, p0, Lmgg;->d:Loye;

    invoke-virtual {v0, p1}, Loye;->a(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    return-void

    :cond_1
    :try_start_7
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lmgg;->b:Lmif;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DeferredConfig<"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
