.class final synthetic Lghl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lghn;


# direct methods
.method public constructor <init>(Lghn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghl;->a:Lghn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lghl;->a:Lghn;

    invoke-virtual {v0}, Lghn;->b()V

    iget-object v1, v0, Lghn;->c:Lghu;

    iget-object v1, v1, Lghu;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-enter v0

    :try_start_0
    iget v1, v0, Lghn;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lghn;->b:I

    iget v3, v0, Lghn;->a:I

    if-gt v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    nop

    invoke-static {v2}, Luu;->b(Z)V

    iget v1, v0, Lghn;->b:I

    int-to-float v1, v1

    iget v2, v0, Lghn;->a:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lghn;->c:Lghu;

    iget-object v0, v0, Lghu;->a:Lfwe;

    iget-object v0, v0, Lfwe;->b:Lfwf;

    invoke-interface {v0, v1}, Lfwf;->a(F)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    return-void
.end method
