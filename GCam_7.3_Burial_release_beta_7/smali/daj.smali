.class final synthetic Ldaj;
.super Ljava/lang/Object;

# interfaces
.implements Llum;


# instance fields
.field private final a:Ldak;

.field private final b:Lcyb;


# direct methods
.method public constructor <init>(Ldak;Lcyb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldaj;->a:Ldak;

    iput-object p2, p0, Ldaj;->b:Lcyb;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Ldaj;->a:Ldak;

    iget-object v1, p0, Ldaj;->b:Lcyb;

    iget-object v2, v0, Ldak;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Ldak;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
