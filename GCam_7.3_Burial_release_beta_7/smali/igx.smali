.class public final Ligx;
.super Ljava/lang/Object;

# interfaces
.implements Lihi;


# instance fields
.field private final a:Llvj;

.field private final b:Ligs;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ligs;Llvj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ligx;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Ligx;->b:Ligs;

    iput-object p2, p0, Ligx;->a:Llvj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ligx;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ligx;->a:Llvj;

    const-string v1, "AudioInit"

    invoke-interface {v0, v1}, Llvj;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ligx;->b:Ligs;

    invoke-interface {v0}, Ligs;->a()V

    iget-object v0, p0, Ligx;->a:Llvj;

    invoke-interface {v0}, Llvj;->a()V

    :cond_0
    return-void
.end method
