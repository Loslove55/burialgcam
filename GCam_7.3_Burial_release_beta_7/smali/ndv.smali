.class final Lndv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lncw;

.field final synthetic b:Lncg;


# direct methods
.method public constructor <init>(Lncw;Lncg;)V
    .locals 0

    iput-object p1, p0, Lndv;->a:Lncw;

    iput-object p2, p0, Lndv;->b:Lncg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lndv;->a:Lncw;

    invoke-interface {v0}, Lncw;->d()Lnex;

    move-result-object v0

    iget-object v1, p0, Lndv;->b:Lncg;

    new-instance v2, Lner;

    invoke-static {}, Lner;->f()I

    move-result v3

    const v4, 0x8d65

    invoke-direct {v2, v0, v3, v4, v1}, Lner;-><init>(Lnex;IILncf;)V

    return-object v2
.end method
