.class public final Lmjp;
.super Ljava/lang/Object;

# interfaces
.implements Lmpi;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/hardware/camera2/params/OutputConfiguration;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmjp;->a:Ljava/lang/Object;

    iput-object p1, p0, Lmjp;->b:Landroid/hardware/camera2/params/OutputConfiguration;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lmjp;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lmjp;->b:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()Lmjn;
    .locals 3

    iget-object v0, p0, Lmjp;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lmjn;

    iget-object v2, p0, Lmjp;->b:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v1, v2}, Lmjn;-><init>(Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lmjp;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "AndroidOutputConfiguration"

    invoke-static {v1}, Luu;->a(Ljava/lang/String;)Loab;

    move-result-object v1

    const-string v2, "outputConfiguration"

    iget-object v3, p0, Lmjp;->b:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1, v2, v3}, Loab;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Loab;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
