.class public final Lmfp;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# instance fields
.field private final a:Lpnh;

.field private final b:Lpnh;

.field private final c:Lpnh;

.field private final d:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;Lpnh;Lpnh;Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmfp;->a:Lpnh;

    iput-object p2, p0, Lmfp;->b:Lpnh;

    iput-object p3, p0, Lmfp;->c:Lpnh;

    iput-object p4, p0, Lmfp;->d:Lpnh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lmfp;->a:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmih;

    iget-object v1, p0, Lmfp;->b:Lpnh;

    invoke-interface {v1}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmhq;

    iget-object v2, p0, Lmfp;->c:Lpnh;

    check-cast v2, Lluz;

    invoke-virtual {v2}, Lluz;->a()Llvb;

    move-result-object v2

    iget-object v3, p0, Lmfp;->d:Lpnh;

    invoke-interface {v3}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llvj;

    new-instance v4, Lmfo;

    invoke-direct {v4, v0, v1, v2, v3}, Lmfo;-><init>(Lmih;Lmhq;Llvb;Llvj;)V

    return-object v4
.end method
