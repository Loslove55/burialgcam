.class public final Lllx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Lllq;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lllq;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lllx;->a:Lllq;

    iput-object p2, p0, Lllx;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lllx;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lllw;

    invoke-direct {v1, p0, p1}, Lllw;-><init>(Lllx;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
