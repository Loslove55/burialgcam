.class final Libh;
.super Lmpl;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:Z


# direct methods
.method public constructor <init>(Lmpq;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lmpl;-><init>(Lmpq;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Libh;->b:Z

    iput-object p2, p0, Libh;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Libh;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Libh;->b:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-super {p0}, Lmpl;->close()V

    iget-object v0, p0, Libh;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
