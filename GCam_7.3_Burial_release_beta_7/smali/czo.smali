.class final synthetic Lczo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lczk;


# direct methods
.method public constructor <init>(Lczk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczo;->a:Lczk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lczo;->a:Lczk;

    iget-object v1, v0, Lczk;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lczk;->d:Lmls;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lmls;->close()V

    const/4 v2, 0x0

    iput-object v2, v0, Lczk;->d:Lmls;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
