.class final synthetic Lbqm;
.super Ljava/lang/Object;

# interfaces
.implements Llum;


# instance fields
.field private final a:Lbqo;

.field private final b:Lbqn;


# direct methods
.method public constructor <init>(Lbqo;Lbqn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbqm;->a:Lbqo;

    iput-object p2, p0, Lbqm;->b:Lbqn;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Lbqm;->a:Lbqo;

    iget-object v1, p0, Lbqm;->b:Lbqn;

    iget-object v2, v0, Lbqo;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lbqo;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
