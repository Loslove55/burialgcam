.class final Lakr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lakw;


# direct methods
.method public constructor <init>(Lakw;)V
    .locals 0

    iput-object p1, p0, Lakr;->a:Lakw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lakr;->a:Lakw;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lakr;->a:Lakw;

    iget-object v2, v1, Lakw;->c:Ljava/io/Writer;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lakw;->c()V

    iget-object v1, p0, Lakr;->a:Lakw;

    invoke-virtual {v1}, Lakw;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lakr;->a:Lakw;

    invoke-virtual {v1}, Lakw;->a()V

    iget-object v1, p0, Lakr;->a:Lakw;

    const/4 v2, 0x0

    iput v2, v1, Lakw;->d:I

    :cond_0
    monitor-exit v0

    goto :goto_0

    :cond_1
    monitor-exit v0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
