.class final Lmec;
.super Ljava/lang/Object;

# interfaces
.implements Lmgs;


# instance fields
.field final synthetic a:Lmed;


# direct methods
.method public constructor <init>(Lmed;)V
    .locals 0

    iput-object p1, p0, Lmec;->a:Lmed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    sget-object v0, Lmed;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmec;->a:Lmed;

    iget v2, v1, Lmed;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    iput v2, v1, Lmed;->e:I

    iput-boolean v4, v1, Lmed;->b:Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    iget-object v0, p0, Lmec;->a:Lmed;

    invoke-virtual {v0}, Lmed;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 3

    sget-object v0, Lmed;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmec;->a:Lmed;

    const/4 v2, 0x1

    iput v2, v1, Lmed;->e:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
